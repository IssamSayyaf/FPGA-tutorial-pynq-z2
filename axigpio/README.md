# AXI4-Lite Protocol: Complete Tutorial and Code Analysis

## Table of Contents
1. [Introduction to AXI4-Lite](#introduction)
2. [Protocol Overview](#protocol-overview)
3. [Five Independent Channels](#five-channels)
4. [Signal Descriptions](#signal-descriptions)
5. [Handshake Mechanism](#handshake-mechanism)
6. [Write Transaction](#write-transaction)
7. [Read Transaction](#read-transaction)
8. [Code Analysis](#code-analysis)
9. [Timing Diagrams](#timing-diagrams)
10. [Best Practices](#best-practices)

---

## 1. Introduction to AXI4-Lite {#introduction}

**AXI4-Lite** (Advanced eXtensible Interface 4 - Lite) is a simplified version of the AXI4 protocol, designed by ARM as part of the AMBA (Advanced Microcontroller Bus Architecture) specification.

### Key Characteristics:
- **Simplified subset** of AXI4 protocol
- **Single transaction** interface (no burst support)
- **32-bit or 64-bit data width** (typically 32-bit)
- **Memory-mapped** register access
- Ideal for **control/status registers**
- Lower resource utilization than full AXI4

### Why AXI4-Lite?
- Simple control plane interface
- Easy integration with processor systems
- Standardized across Xilinx and ARM ecosystems
- Perfect for configuration registers, not for data streaming

---

## 2. Protocol Overview {#protocol-overview}

AXI4-Lite uses a **master-slave** architecture with separate channels for:
- Write Address
- Write Data
- Write Response
- Read Address
- Read Data

### Key Concepts:
1. **Channel Independence**: Each channel operates independently
2. **Handshake Protocol**: VALID/READY signals control data transfer
3. **No Burst Support**: One transaction = one data transfer
4. **Fixed Data Width**: 32-bit or 64-bit (no byte enable complications)

---

## 3. Five Independent Channels {#five-channels}

### Write Transaction Channels:

#### 1. **Write Address Channel (AW)**
- Master provides the write address
- Signals: AWADDR, AWVALID, AWREADY, AWPROT (optional)

#### 2. **Write Data Channel (W)**
- Master provides the write data
- Signals: WDATA, WSTRB, WVALID, WREADY

#### 3. **Write Response Channel (B)**
- Slave provides write completion status
- Signals: BRESP, BVALID, BREADY

### Read Transaction Channels:

#### 4. **Read Address Channel (AR)**
- Master provides the read address
- Signals: ARADDR, ARVALID, ARREADY, ARPROT (optional)

#### 5. **Read Data Channel (R)**
- Slave provides the read data and response
- Signals: RDATA, RRESP, RVALID, RREADY

---

## 4. Signal Descriptions {#signal-descriptions}

### Global Signals

| Signal | Direction | Description |
|--------|-----------|-------------|
| `ACLK` | Input | Clock signal - all AXI signals are sampled on rising edge |
| `ARESETn` | Input | Active-LOW reset signal |

### Write Address Channel (AW)

| Signal | Width | Source | Description |
|--------|-------|--------|-------------|
| `AWADDR` | [11:0] | Master | Write address - indicates target register address |
| `AWVALID` | 1 | Master | Write address valid - master asserts when address is valid |
| `AWREADY` | 1 | Slave | Write address ready - slave asserts when it can accept address |
| `AWPROT` | 3 | Master | Protection type (optional, not in this code) |

### Write Data Channel (W)

| Signal | Width | Source | Description |
|--------|-------|--------|-------------|
| `WDATA` | [31:0] | Master | Write data - data to be written |
| `WSTRB` | [7:0] | Master | Write strobes - indicates valid byte lanes (not used in this code) |
| `WVALID` | 1 | Master | Write data valid - master asserts when data is valid |
| `WREADY` | 1 | Slave | Write data ready - slave asserts when it can accept data |

**Note**: `WSTRB` has 8 bits but is unusual for 32-bit data (should be 4 bits). This appears to be a port definition issue in the code.

### Write Response Channel (B)

| Signal | Width | Source | Description |
|--------|-------|--------|-------------|
| `BRESP` | [1:0] | Slave | Write response - indicates write transaction status |
| `BVALID` | 1 | Slave | Write response valid - slave asserts when response is valid |
| `BREADY` | 1 | Master | Response ready - master asserts when it can accept response |

**BRESP Encoding**:
- `2'b00`: OKAY - successful transaction
- `2'b01`: EXOKAY - exclusive access okay (not used in AXI4-Lite)
- `2'b10`: SLVERR - slave error
- `2'b11`: DECERR - decode error

### Read Address Channel (AR)

| Signal | Width | Source | Description |
|--------|-------|--------|-------------|
| `ARADDR` | [11:0] | Master | Read address - indicates target register address |
| `ARVALID` | 1 | Master | Read address valid - master asserts when address is valid |
| `ARREADY` | 1 | Slave | Read address ready - slave asserts when it can accept address |
| `ARPROT` | 3 | Master | Protection type (optional, not in this code) |

### Read Data Channel (R)

| Signal | Width | Source | Description |
|--------|-------|--------|-------------|
| `RDATA` | [31:0] | Slave | Read data - data being read |
| `RRESP` | [1:0] | Slave | Read response - indicates read transaction status |
| `RVALID` | 1 | Slave | Read data valid - slave asserts when data is valid |
| `RREADY` | 1 | Master | Read ready - master asserts when it can accept data |

---

## 5. Handshake Mechanism {#handshake-mechanism}

The AXI protocol uses a **two-way handshake** mechanism:

### Handshake Rules:
1. **Transfer occurs** when both VALID and READY are HIGH on the same clock edge
2. **VALID must not depend on READY** (prevents combinational loops)
3. **READY may depend on VALID** (slave can wait for valid data)
4. **Once VALID is asserted**, it must remain HIGH until transfer completes



## 6. Write Transaction {#write-transaction}

A complete write transaction involves THREE phases:

### Phase 1: Write Address
```
Master → Slave: AWADDR + AWVALID
Slave → Master: AWREADY
```

### Phase 2: Write Data
```
Master → Slave: WDATA + WVALID
Slave → Master: WREADY
```

### Phase 3: Write Response
```
Slave → Master: BRESP + BVALID
Master → Slave: BREADY
```


### Complete Write Transaction

```
Cycle:      1    2    3    4    5    6    7
Clock:    __|‾|__|‾|__|‾|__|‾|__|‾|__|‾|__|‾|__

AWADDR:   ====<0x004>=============================
AWVALID:  ____|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾_________
AWREADY:  ______________|‾|_____________________

WDATA:    ========<0x12345>=======================
WVALID:   ________|‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾___________
WREADY:   ______________|‾|_____________________

slv_reg_wren: ________|‾|_______________________
                      ^ Write happens here

BVALID:   ________________|‾|___________________
BRESP:    ================<OK>===================
BREADY:   ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

Internal:
led_off_count_reg: <old value>|<0x12345>=======
```
---


**Timeline**:
- **Cycle 2**: Master asserts AWVALID with address 0x004
- **Cycle 3**: Master asserts WVALID with data 0x12345
- **Cycle 4**: 
  - Slave asserts AWREADY and WREADY (handshakes complete)
  - `slv_reg_wren` goes HIGH
  - Register is written
  - Slave asserts BVALID (response)
- **Cycle 5**: All signals return to idle

## 7. Read Transaction {#read-transaction}





### Complete Read Transaction

```
Cycle:      1    2    3    4    5    6
Clock:    __|‾|__|‾|__|‾|__|‾|__|‾|__|‾|__

ARADDR:   ====<0x000>========================
ARVALID:  ____|‾‾‾‾‾‾‾‾|____________________
ARREADY:  ________|‾‾‾‾|____________________
axi_araddr: ____<0x000>====================

RDATA:    ============<LED_ON_COUNT>========
RVALID:   ____________|‾|__________________
RRESP:    ============<OK>===================
RREADY:   ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

Internal:
axi_araddr capture:    ^ Cycle 3
RDATA preparation:       ^ Cycle 3
RVALID assertion:        ^ Cycle 4
```

**Timeline**:
- **Cycle 2**: Master asserts ARVALID with address 0x000
- **Cycle 3**: 
  - Slave asserts ARREADY (handshake complete)
  - Address is captured
  - Read data is prepared
- **Cycle 4**:
  - Slave asserts RVALID with read data
  - Master captures data
- **Cycle 5**: Signals return to idle

---




### 8. Register Map Documentation

Always document your register map:

```
┌─────────┬──────────────┬────────┬─────────────────────────┐
│ Address │ Name         │ Access │ Description             │
├─────────┼──────────────┼────────┼─────────────────────────┤
│ 0x000   │ LED_ON_COUNT │ R/W    │ LED on time count [20:0]│
│ 0x004   │ LED_OFF_COUNT│ R/W    │ LED off time count[20:0]│
└─────────┴──────────────┴────────┴─────────────────────────┘
```



### Key Takeaways:

1. **Five Independent Channels**: AW, W, B, AR, R
2. **Handshake Protocol**: Transfer occurs when VALID and READY both HIGH
3. **Write = 3 phases**: Address, Data, Response
4. **Read = 2 phases**: Address, Data+Response
5. **VALID must not depend on READY** (critical rule)
6. **The provided code** implements a simple, low-latency slave with simultaneous address/data acceptance

### This Code Implements:

- ✅ Two 21-bit writable/readable registers
- ✅ Simultaneous address and data acceptance for writes
- ✅ Single-cycle read latency
- ✅ Always-OKAY responses
- ✅ Simple state machine (implicit via ready signals)

### Register Map:
- **0x000**: LED_ON_COUNT (21-bit, R/W)
- **0x004**: LED_OFF_COUNT (21-bit, R/W)

