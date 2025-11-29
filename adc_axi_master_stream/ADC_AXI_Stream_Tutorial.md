# ADC to AXI Stream Interface Tutorial

## System Overview

This design captures data from a 14-bit ADC and streams it over an AXI Stream interface. The system handles **clock domain crossing** between the ADC clock and the AXI Stream bus clock using an asynchronous FIFO.

**Key Features:**
- 14-bit ADC data acquisition
- Clock domain crossing with async FIFO
- AXI4-Stream master interface
- Configurable packet size (64 samples per packet)
- Flow control and backpressure handling

---

## System Architecture

```
ADC_MODEL → ASYNC_FIFO → AXIS_MASTER_ADC → AXI Stream Bus
  (ADC_CLK)              (ADC_CLK→M_AXIS_ACLK)
```

**Three main components:**

1. **ADC_MODEL** - Simulates ADC behavior (generates incrementing test data)
2. **ASYNC_FIFO** - Bridges clock domains with Gray code synchronization
3. **AXIS_MASTER_ADC** - AXI Stream master with state machine for flow control

---

## Component 1: ADC Model (adc_model.vhd)

**Purpose:** Simulates a real ADC by generating test data

**Key Characteristics:**
- Generates incrementing 14-bit values on falling edge of ADC_CLK
- Simple counter that wraps around at 2^14 = 16,384
- Used for testing/verification only

**Interface:**
```vhdl
ADC_CLK  : in  std_logic                      -- ADC sample clock
ADC_DATA : out std_logic_vector(13 downto 0) -- 14-bit ADC output
```

**How it works:** On every falling edge of ADC_CLK, the counter increments, simulating continuous ADC sampling.

---

## Component 2: Async FIFO (async_fifo.vhd)

**Purpose:** Safely transfer data between two independent clock domains

### Why We Need This
When ADC_CLK and M_AXIS_ACLK are different frequencies or phases, direct data transfer causes **metastability issues**. The async FIFO solves this with:
- Separate write (ADC_CLK) and read (M_AXIS_ACLK) clock domains
- Gray code pointer synchronization
- Full/empty flag generation

### Gray Code Synchronization
**Key Concept:** Only 1 bit changes at a time during transitions, preventing glitches when crossing clock domains.

Example Gray code sequence:
```
Binary: 000 → 001 → 010 → 011 (2 bits change!)
Gray:   000 → 001 → 011 → 010 (1 bit changes)
```

### FIFO Specifications
- **Depth:** 16 entries (4-bit address)
- **Width:** 14 bits per entry
- **Flags:** 
  - FIFO_EMPTY: Read side has caught up to write side
  - FIFO_AFULL: Almost full (>13 entries), prevents overflow

### Binary to Gray Conversion
```vhdl
wr_addr_grey(3) <= wr_addr(3)
wr_addr_grey(2) <= wr_addr(3) xor wr_addr(2)
wr_addr_grey(1) <= wr_addr(2) xor wr_addr(1)
wr_addr_grey(0) <= wr_addr(1) xor wr_addr(0)
```

### Gray to Binary Conversion
```vhdl
wr_addr_sync(3) <= wr_addr_grey_sync2(3)
wr_addr_sync(2) <= wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2)
wr_addr_sync(1) <= wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) 
                   xor wr_addr_grey_sync2(1)
wr_addr_sync(0) <= wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) 
                   xor wr_addr_grey_sync2(1) xor wr_addr_grey_sync2(0)
```

### Two-Stage Synchronizer
Prevents metastability by using two flip-flops:
```vhdl
-- Write clock domain synchronizing read pointer
rd_addr_grey_sync  <= rd_addr_grey;      -- Stage 1
rd_addr_grey_sync2 <= rd_addr_grey_sync; -- Stage 2
```

---

## Component 3: AXI Stream Master (axis_master_adc.vhd)

**Purpose:** Implements AXI4-Stream protocol to output ADC data

### AXI Stream Signals

**Data Path:**
- `M_AXIS_TDATA[15:0]` - 16-bit data bus (14 bits used + 2 padding)
- `M_AXIS_TVALID` - Master indicates valid data
- `M_AXIS_TREADY` - Slave can accept data

**Control:**
- `M_AXIS_TLAST` - Marks end of packet (every 64 samples)
- `M_AXIS_TKEEP[1:0]` - Both bytes valid (always "11")
- `M_AXIS_TSTRB[1:0]` - Both byte lanes active (always "11")

### State Machine

The design uses a 4-state FSM to handle data flow:

**INIT** - Reset/initialization state
- Waits for M_AXIS_ARESETN to be asserted
- TVALID = 0, no FIFO reads

**VALID_DATA** - Normal operation
- TVALID = 1, RD_EN = 1
- Data streaming from FIFO to AXI bus
- Remains here while TREADY=1 and FIFO not empty

**STALL_DATA** - FIFO is empty
- TVALID = 0, RD_EN = 0
- Waiting for ADC to fill FIFO
- Returns to VALID_DATA when data available

**SLAVE_STALL** - Backpressure from slave
- TVALID = 1, RD_EN = 0 (hold current data)
- Slave pulled TREADY low
- Don't read new data until slave ready

### State Transition Diagram
```
        INIT
         ↓
    ┌─────────────┐
    │ VALID_DATA  │←──┐
    └─────────────┘   │
      ↓           ↓   │
  FIFO empty  TREADY=0│
      ↓           ↓   │
 STALL_DATA  SLAVE_STALL
      └───────────┴───┘
       (return when conditions clear)
```

### Packet Formation

**TLAST Generation:**
- Counter increments for each VALID_DATA transaction
- TLAST asserted when count = 63 (64th sample)
- Counter resets, starting next packet

```vhdl
if next_state = VALID_DATA and data_count = 63 then
    data_count <= 0;
    M_AXIS_TLAST <= '1';  -- End of packet
elsif next_state = VALID_DATA then
    data_count <= data_count + 1;
    M_AXIS_TLAST <= '0';
end if;
```

### Write Enable Synchronization

The FIFO write enable is synchronized in the ADC clock domain:
```vhdl
process(ADC_CLK)
begin
  if ADC_CLK'event and ADC_CLK = '1' then
    if (state = INIT) then
      wr_en_sync <= '0';
    else
      wr_en_sync <= '1';  -- Enable after init
    end if;
    WR_EN <= wr_en_sync;  -- Register for timing
  end if;
end process;
```

---

## Clock Domain Crossing Analysis

### The Problem
```
ADC_CLK:     ___╱‾╲_╱‾╲_╱‾╲_╱‾╲___  (e.g., 100 MHz)
M_AXIS_ACLK: _____╱‾‾╲__╱‾‾╲__╱    (e.g., 125 MHz)
Data:        [Metastability without FIFO!]
```

### The Solution
The ASYNC_FIFO provides:
1. **Independent write/read operations** - Each side operates at its own clock rate
2. **Gray code synchronization** - Pointers cross domains safely
3. **Full/empty detection** - Prevents overflow/underflow
4. **Data buffering** - Smooths out rate differences

---

## Integration Guide

### Step 1: Instantiate the System
```vhdl
component AXIS_MASTER_ADC
    port (
        ADC_CLK         : in std_logic;
        ADC_DATA        : in std_logic_vector(13 downto 0);
        M_AXIS_ACLK     : in std_logic;
        M_AXIS_ARESETN  : in std_logic;
        M_AXIS_TREADY   : in std_logic;
        M_AXIS_TDATA    : out std_logic_vector(15 downto 0);
        M_AXIS_TSTRB    : out std_logic_vector(1 downto 0);
        M_AXIS_TKEEP    : out std_logic_vector(1 downto 0);
        M_AXIS_TLAST    : out std_logic;
        M_AXIS_TVALID   : out std_logic
    );
end component;
```

### Step 2: Connect Your ADC
```vhdl
axi_adc : AXIS_MASTER_ADC port map (
    ADC_CLK         => adc_sample_clk,    -- Your ADC clock
    ADC_DATA        => adc_parallel_data, -- Your ADC data
    M_AXIS_ACLK     => axi_bus_clock,     -- Your AXI bus clock
    M_AXIS_ARESETN  => axi_reset_n,       -- Active-low reset
    M_AXIS_TREADY   => axis_tready,       -- From slave
    M_AXIS_TDATA    => axis_tdata,        -- To slave
    M_AXIS_TSTRB    => axis_tstrb,        -- To slave
    M_AXIS_TKEEP    => axis_tkeep,        -- To slave
    M_AXIS_TLAST    => axis_tlast,        -- To slave
    M_AXIS_TVALID   => axis_tvalid        -- To slave
);
```

### Step 3: Clock Configuration
- **ADC_CLK:** Connect to your ADC sample clock (typically 1-100 MHz)
- **M_AXIS_ACLK:** Connect to your AXI bus clock (can be different frequency)
- Both clocks must be **free-running and stable**

### Step 4: Reset Sequence
1. Assert M_AXIS_ARESETN = '0' for at least 10 clock cycles
2. Release M_AXIS_ARESETN = '1'
3. System enters INIT state, then begins streaming

---

## Timing Considerations

### FIFO Latency
- **Write-to-Read:** 2-3 clock cycles of M_AXIS_ACLK
- **Gray code synchronization:** 2 clock cycles

### Throughput
- **Maximum rate:** Limited by slower clock domain
- **Sustained rate:** FIFO prevents data loss during temporary backpressure

### Critical Paths
Watch for timing closure on:
- Gray code converters (combinational XOR chains)
- FIFO full/empty comparators
- State machine transitions

---

## Testing & Verification

### Testbench Strategy
1. **Clock generation:** Create independent ADC_CLK and M_AXIS_ACLK
2. **Stimulus:** ADC_MODEL provides automatic incrementing data
3. **Monitor:** Check TVALID/TREADY handshake
4. **Verify:** Confirm TLAST every 64 samples

### Example Test Cases
1. **Basic streaming:** TREADY always high, verify continuous flow
2. **Backpressure:** Toggle TREADY, verify no data loss
3. **Clock ratio:** Test with various ADC_CLK/M_AXIS_ACLK ratios
4. **FIFO depth:** Ensure no overflow with sustained backpressure

### Simulation Waveforms to Check
```
ADC_CLK:      ╱‾╲_╱‾╲_╱‾╲_╱‾╲_╱‾╲_
ADC_DATA:     [0][1][2][3][4]...
WR_EN:        ___╱‾‾‾‾‾‾‾‾‾‾‾‾‾
FIFO_EMPTY:   ‾‾‾‾╲____________
M_AXIS_TVALID: ____╱‾‾‾‾‾‾‾‾‾‾‾
M_AXIS_TREADY: ‾‾‾‾‾‾‾╲___╱‾‾‾‾  (backpressure test)
M_AXIS_TLAST:  _______╱‾╲___╱‾╲ (every 64 samples)
```

---

## Key Design Decisions

### Why 16-deep FIFO?
- Balances resource usage vs. buffering capability
- Sufficient for typical clock ratio mismatches
- Prevents overflow during short backpressure events

### Why 64-sample packets?
- Common AXI DMA burst size
- Easy to modify (change data_count range)
- Trade-off between packet overhead and latency

### Why Gray Code?
- **Critical for safety:** Prevents multiple bit changes during clock domain crossing
- **Standard practice:** Industry-proven technique for async FIFOs
- **Alternative:** Binary would cause potential metastability/corruption

---

## Common Issues & Solutions

### Issue 1: Data Loss
**Symptom:** Missing samples in output stream
**Cause:** FIFO overflow (ADC faster than AXI bus can drain)
**Solution:** Increase FIFO depth or increase M_AXIS_ACLK frequency

### Issue 2: Timing Violations
**Symptom:** Setup/hold violations in synthesis
**Cause:** Long combinational paths in Gray converters
**Solution:** Pipeline Gray code conversion stages

### Issue 3: Incorrect TLAST
**Symptom:** TLAST not aligned with 64-sample boundaries
**Cause:** data_count not resetting properly
**Solution:** Verify reset logic and state machine transitions

---

## Modifications & Extensions

### Increase FIFO Depth
Change FIFO address width:
```vhdl
-- In async_fifo.vhd, change:
signal wr_addr : std_logic_vector(3 downto 0); -- 16 entries
-- To:
signal wr_addr : std_logic_vector(4 downto 0); -- 32 entries

-- Update full/empty conditions accordingly
```

### Change Packet Size
Modify counter range in axis_master_adc.vhd:
```vhdl
signal data_count : integer range 0 to 127; -- 128 samples
-- Update comparison:
elsif next_state = VALID_DATA and data_count = 127 then
```

### Add Data Processing
Insert processing between FIFO output and AXIS output:
```vhdl
signal processed_data : std_logic_vector(13 downto 0);
-- Add your processing logic here
M_AXIS_TDATA(13 downto 0) <= processed_data;
```

---

## Summary

This design demonstrates a **production-ready pattern** for interfacing ADCs to AXI Stream buses:

✓ **Safe clock domain crossing** using async FIFO with Gray code  
✓ **Flow control** handling backpressure and FIFO states  
✓ **AXI Stream compliance** with proper handshaking  
✓ **Packet formation** with TLAST generation  
✓ **Scalable design** easy to modify for different ADC widths/rates

**Next Steps:**
1. Simulate with different clock frequencies
2. Synthesize for your target FPGA
3. Verify timing closure
4. Test with real ADC hardware
5. Integrate with downstream processing (DMA, DSP, etc.)

---

*Tutorial created for demonstration and learning purposes. Always verify designs thoroughly before production use.*
