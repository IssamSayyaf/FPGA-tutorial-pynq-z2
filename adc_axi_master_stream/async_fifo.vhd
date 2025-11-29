-- Asynchronous FIFO with Gray Code Synchronization
--
-- IMPORTANT: This FIFO has a 2-cycle synchronization latency
-- After a write, it takes 2 RD_CLK cycles before the data appears available to read
-- After a read, it takes 2 WR_CLK cycles before the space appears available to write
-- This latency is MANDATORY for safe clock domain crossing and cannot be eliminated
--
-- For Demonstration purposes only
-- Code has not been fully verified or tested
-- User assumes risk

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ASYNC_FIFO is
    port (
        -- Write Interface (WR_CLK domain)
        WR_CLK     : in std_logic;
        WR_EN      : in std_logic;
        WR_DATA    : in std_logic_vector(13 downto 0);

        -- Read Interface (RD_CLK domain)
        RD_CLK     : in std_logic;
        RD_EN      : in std_logic;
        RD_DATA    : out std_logic_vector(13 downto 0);

        -- Status Flags
        FIFO_EMPTY : out std_logic;  -- RD_CLK domain: '1' when no data to read
        FIFO_AFULL : out std_logic   -- WR_CLK domain: '1' when almost full (>13 entries)
    );
end ASYNC_FIFO;

architecture RTL of ASYNC_FIFO is

    -- ========================================================================
    -- Write Clock Domain Signals
    -- ========================================================================
    signal wr_addr            : std_logic_vector(3 downto 0) := "0000";
    signal wr_addr_grey       : std_logic_vector(3 downto 0) := "0000";

    -- Synchronized read pointer (from RD_CLK domain)
    signal rd_addr_grey_sync  : std_logic_vector(3 downto 0) := "0000";  -- Sync stage 1
    signal rd_addr_grey_sync2 : std_logic_vector(3 downto 0) := "0000";  -- Sync stage 2
    signal rd_addr_sync       : std_logic_vector(3 downto 0) := "0000";  -- Binary version

    signal full  : std_logic;

    -- ========================================================================
    -- Read Clock Domain Signals
    -- ========================================================================
    signal rd_addr            : std_logic_vector(3 downto 0) := "0000";
    signal rd_addr_grey       : std_logic_vector(3 downto 0) := "0000";

    -- Synchronized write pointer (from WR_CLK domain)
    signal wr_addr_grey_sync  : std_logic_vector(3 downto 0) := "0000";  -- Sync stage 1
    signal wr_addr_grey_sync2 : std_logic_vector(3 downto 0) := "0000";  -- Sync stage 2
    signal wr_addr_sync       : std_logic_vector(3 downto 0) := "0000";  -- Binary version

    signal empty : std_logic;

    -- ========================================================================
    -- Dual-Port Memory (accessible from both clock domains)
    -- ========================================================================
    type fifo_memory_type is array (0 to 15) of std_logic_vector(13 downto 0);
    signal fifo_memory : fifo_memory_type := (others => (others => '0'));

begin

    -- ========================================================================
    -- WRITE CLOCK DOMAIN (WR_CLK)
    -- ========================================================================

    -- ------------------------------------------------------------------------
    -- FULL Detection Logic
    -- ------------------------------------------------------------------------
    -- The FIFO is full when the write pointer is more than 14 positions ahead
    -- of the synchronized read pointer. We use >14 instead of =15 because
    -- the pointers wrap around modulo 16.
    --
    -- Example: wr_addr=15, rd_addr_sync=0 means 15 entries used → FULL
    --          wr_addr=14, rd_addr_sync=0 means 14 entries used → NOT FULL
    -- ------------------------------------------------------------------------
    full       <= '1' when (unsigned(wr_addr) - unsigned(rd_addr_sync)) > 14 else '0';
    fifo_afull <= '1' when (unsigned(wr_addr) - unsigned(rd_addr_sync)) > 13 else '0';

    -- ------------------------------------------------------------------------
    -- Write Data to Memory
    -- ------------------------------------------------------------------------
    -- Write data to the memory array when:
    -- 1. FIFO is not full
    -- 2. Write enable is asserted
    -- ------------------------------------------------------------------------
    process(WR_CLK)
    begin
        if rising_edge(WR_CLK) then
            if full = '0' and WR_EN = '1' then
                fifo_memory(to_integer(unsigned(wr_addr))) <= WR_DATA;
            end if;
        end if;
    end process;

    -- ------------------------------------------------------------------------
    -- Increment Write Address Pointer
    -- ------------------------------------------------------------------------
    -- The write address increments on every successful write
    -- It wraps around from 15 back to 0 automatically (4-bit overflow)
    -- ------------------------------------------------------------------------
    process(WR_CLK)
    begin
        if rising_edge(WR_CLK) then
            if full = '0' and WR_EN = '1' then
                wr_addr <= std_logic_vector(unsigned(wr_addr) + 1);
            end if;
        end if;
    end process;

    -- ------------------------------------------------------------------------
    -- Convert Write Address to Gray Code (Combinational)
    -- ------------------------------------------------------------------------
    -- Gray code ensures only 1 bit changes at a time, making clock domain
    -- crossing safe. This is CRITICAL for preventing metastability issues.
    --
    -- Binary to Gray conversion:
    -- grey[n] = binary[n] XOR binary[n+1]
    -- ------------------------------------------------------------------------
    wr_addr_grey <= (wr_addr(3),                              -- MSB: Pass through
                     wr_addr(3) xor wr_addr(2),              -- Bit 2
                     wr_addr(2) xor wr_addr(1),              -- Bit 1
                     wr_addr(1) xor wr_addr(0));             -- LSB

    -- ------------------------------------------------------------------------
    -- Synchronize Read Pointer from RD_CLK Domain (2-Stage Synchronizer)
    -- ------------------------------------------------------------------------
    -- This is where the read pointer (in Gray code) crosses from the RD_CLK
    -- domain to the WR_CLK domain. The 2-stage synchronizer prevents
    -- metastability but introduces a 2 WR_CLK cycle latency.
    --
    -- Timeline:
    -- RD_CLK domain:  rd_addr_grey = 0011 (stable value)
    --                     |
    --                     v (crosses clock boundary - metastability risk!)
    -- WR_CLK cycle 0: rd_addr_grey_sync  = 0x?? (potentially metastable)
    -- WR_CLK cycle 1: rd_addr_grey_sync2 = 0011 (now stable and safe to use)
    -- ------------------------------------------------------------------------
    process(WR_CLK)
    begin
        if rising_edge(WR_CLK) then
            rd_addr_grey_sync  <= rd_addr_grey;       -- Stage 1: Capture (may be metastable)
            rd_addr_grey_sync2 <= rd_addr_grey_sync;  -- Stage 2: Stabilize
        end if;
    end process;

    -- ------------------------------------------------------------------------
    -- Convert Synchronized Gray Code Back to Binary (Combinational)
    -- ------------------------------------------------------------------------
    -- Gray to Binary conversion:
    -- binary[n] = grey[n] XOR grey[n+1] XOR grey[n+2] XOR ... (all higher bits)
    -- ------------------------------------------------------------------------
    rd_addr_sync <= (rd_addr_grey_sync2(3),
                     rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2),
                     rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2) xor rd_addr_grey_sync2(1),
                     rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2) xor rd_addr_grey_sync2(1) xor rd_addr_grey_sync2(0));

    -- ========================================================================
    -- READ CLOCK DOMAIN (RD_CLK)
    -- ========================================================================

    -- ------------------------------------------------------------------------
    -- EMPTY Detection Logic
    -- ------------------------------------------------------------------------
    -- The FIFO is empty when the read pointer equals the synchronized write
    -- pointer. This means we've caught up with the writer.
    --
    -- IMPORTANT LATENCY NOTE:
    -- Due to the 2-cycle synchronizer, there's a 2 RD_CLK cycle delay between
    -- when data is written and when it appears available to read.
    --
    -- Example Timeline:
    -- Cycle 0: Write occurs in WR_CLK domain, wr_addr increments
    -- Cycle 1 (RD_CLK): wr_addr_grey_sync captures the Gray code
    -- Cycle 2 (RD_CLK): wr_addr_grey_sync2 becomes stable
    -- Cycle 3 (RD_CLK): wr_addr_sync updates, empty flag clears, data readable
    --
    -- This 2-cycle latency is UNAVOIDABLE and is the fundamental trade-off
    -- of async FIFOs for achieving safe clock domain crossing.
    -- ------------------------------------------------------------------------
    empty      <= '1' when rd_addr = wr_addr_sync else '0';
    FIFO_EMPTY <= empty;

    -- ------------------------------------------------------------------------
    -- Read Data from Memory (Combinational)
    -- ------------------------------------------------------------------------
    -- The data at the current read address is always available on RD_DATA.
    -- No clock edge is needed for reading - this is purely combinational.
    -- The RD_EN signal only controls whether the read pointer advances.
    -- ------------------------------------------------------------------------
    RD_DATA <= fifo_memory(to_integer(unsigned(rd_addr)));

    -- ------------------------------------------------------------------------
    -- Increment Read Address Pointer
    -- ------------------------------------------------------------------------
    -- The read address increments on every successful read
    -- It wraps around from 15 back to 0 automatically (4-bit overflow)
    -- ------------------------------------------------------------------------
    process(RD_CLK)
    begin
        if rising_edge(RD_CLK) then
            if RD_EN = '1' and empty = '0' then
                rd_addr <= std_logic_vector(unsigned(rd_addr) + 1);
            end if;
        end if;
    end process;

    -- ------------------------------------------------------------------------
    -- Convert Read Address to Gray Code (Combinational)
    -- ------------------------------------------------------------------------
    rd_addr_grey <= (rd_addr(3),                              -- MSB: Pass through
                     rd_addr(3) xor rd_addr(2),              -- Bit 2
                     rd_addr(2) xor rd_addr(1),              -- Bit 1
                     rd_addr(1) xor rd_addr(0));             -- LSB

    -- ------------------------------------------------------------------------
    -- Synchronize Write Pointer from WR_CLK Domain (2-Stage Synchronizer)
    -- ------------------------------------------------------------------------
    -- This is where the write pointer (in Gray code) crosses from the WR_CLK
    -- domain to the RD_CLK domain. The 2-stage synchronizer prevents
    -- metastability but introduces a 2 RD_CLK cycle latency.
    -- ------------------------------------------------------------------------
    process(RD_CLK)
    begin
        if rising_edge(RD_CLK) then
            wr_addr_grey_sync  <= wr_addr_grey;       -- Stage 1: Capture (may be metastable)
            wr_addr_grey_sync2 <= wr_addr_grey_sync;  -- Stage 2: Stabilize
        end if;
    end process;

    -- ------------------------------------------------------------------------
    -- Convert Synchronized Gray Code Back to Binary (Combinational)
    -- ------------------------------------------------------------------------
    wr_addr_sync <= (wr_addr_grey_sync2(3),
                     wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2),
                     wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) xor wr_addr_grey_sync2(1),
                     wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) xor wr_addr_grey_sync2(1) xor wr_addr_grey_sync2(0));

end RTL;

-- ============================================================================
-- USAGE NOTES AND PERFORMANCE CHARACTERISTICS
-- ============================================================================
--
-- LATENCY:
-- --------
-- Write-to-Read: 2-3 RD_CLK cycles (due to Gray code synchronization)
-- Read-to-Write: 2-3 WR_CLK cycles (due to Gray code synchronization)
--
-- This latency is MANDATORY for safe operation and cannot be reduced without
-- risking metastability and data corruption.
--
-- THROUGHPUT:
-- -----------
-- Maximum write rate: 1 entry per WR_CLK cycle (when not full)
-- Maximum read rate:  1 entry per RD_CLK cycle (when not empty)
--
-- FIFO DEPTH:
-- -----------
-- 16 entries (addresses 0-15)
-- Usable capacity: 15 entries (we consider it full at 15 to prevent wrap-around issues)
--
-- CLOCK REQUIREMENTS:
-- -------------------
-- WR_CLK and RD_CLK must be:
-- 1. Free-running (not gated)
-- 2. Stable and clean (no glitches)
-- 3. Can be any frequency relationship (asynchronous)
--
-- RESET:
-- ------
-- This design uses initialization values instead of explicit reset.
-- For production use, consider adding synchronous resets in each clock domain.
--
-- ============================================================================
