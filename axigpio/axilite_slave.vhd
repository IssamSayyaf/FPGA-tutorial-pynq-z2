library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.std_logic_unsigned.all;


entity axilite_slave is

  port( S_AXI_ACLK    : in  std_logic;

        S_AXI_ARESETN : in  std_logic;

        S_AXI_AWADDR  : in  std_logic_vector(11 downto 0);

        S_AXI_AWVALID : in  std_logic;

        S_AXI_AWREADY : out std_logic;

        S_AXI_WDATA   : in  std_logic_vector(31 downto 0);

        S_AXI_WSTRB   : in  std_logic_vector(7 downto 0);

        S_AXI_WVALID  : in  std_logic;

        S_AXI_WREADY  : out std_logic;

        S_AXI_BRESP   : out std_logic_vector(1 downto 0);

        S_AXI_BVALID  : out std_logic;

        S_AXI_BREADY  : in  std_logic;

        S_AXI_ARADDR  : in  std_logic_vector(11 downto 0);

        S_AXI_ARVALID : in  std_logic;

        S_AXI_ARREADY : out std_logic;

        S_AXI_RDATA   : out std_logic_vector(31 downto 0);

        S_AXI_RRESP   : out std_logic_vector(1 downto 0);

        S_AXI_RVALID  : out std_logic;

        S_AXI_RREADY  : in  std_logic;

       

        LED_ON_COUNT  : out std_logic_vector(20 downto 0);

        LED_OFF_COUNT : out std_logic_vector(20 downto 0)

      );

end axilite_slave;


architecture rtl of axilite_slave is

signal axi_awready : std_logic;

signal axi_awaddr  : std_logic_vector(11 downto 0);

signal axi_wready  : std_logic;

signal axi_bvalid  : std_logic;

signal axi_bresp   : std_logic_vector(1 downto 0);

signal slv_reg_wren: std_logic;

signal axi_arready : std_logic;

signal axi_araddr  : std_logic_vector(11 downto 0);

signal axi_rvalid  : std_logic;

signal axi_rresp   : std_logic_vector(1 downto 0);


signal led_on_count_reg  : std_logic_vector(20 downto 0);

signal led_off_count_reg : std_logic_vector(20 downto 0);

begin


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

      axi_awready <= '0';

    elsif axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then

      axi_awready <= '1';

    else

      axi_awready <= '0';

    end if;

  end if;

end process;

S_AXI_AWREADY <= axi_awready;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

      axi_awaddr <= (others => '0');

    elsif axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' then

      axi_awaddr <= S_AXI_AWADDR;

    end if;

  end if;

end process;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

      axi_wready <= '0';

    elsif axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' then

      axi_wready <= '1';

    else

      axi_wready <= '0';

    end if;

  end if;

end process;

S_AXI_WREADY <= axi_wready;


slv_reg_wren <= '1' when axi_wready = '1' and S_AXI_WVALID = '1' and axi_awready = '1' and S_AXI_AWVALID = '1' else '0';


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

      led_on_count_reg  <= (others => '0');

      led_off_count_reg <= (others => '0');

    elsif slv_reg_wren = '1' then

      case (axi_awaddr) is

        when "000000000000" =>

          led_on_count_reg <= S_AXI_WDATA(20 downto 0);

        when "000000000100" =>

          led_off_count_reg <= S_AXI_WDATA(20 downto 0);

        when others =>

          null;

      end case;

    end if;

  end if;

end process;

led_on_count <= led_on_count_reg;

led_off_count <= led_off_count_reg;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

     axi_bvalid  <= '0';

     axi_bresp   <= "00";

    elsif axi_awready = '1' and S_AXI_AWVALID = '1' and axi_bvalid = '0' and axi_wready = '1' and S_AXI_WVALID = '1' then

     axi_bvalid  <= '1';

     axi_bresp   <= "00";

    else

     axi_bvalid  <= '0';

     axi_bresp   <= "00";

    end if;

  end if;

end process;

S_AXI_BVALID <= axi_bvalid;

S_AXI_BRESP  <= axi_bresp;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

     axi_arready <= '0';

     axi_araddr  <= (others => '0');

    elsif axi_arready = '0' and S_AXI_ARVALID = '1' then

     axi_arready  <= '1';

     axi_araddr   <= S_AXI_ARADDR;

    elsif S_AXI_ARVALID = '0' then

     axi_arready  <= '0';

    end if;

  end if;

end process;

S_AXI_ARREADY <= axi_arready;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

     S_AXI_RDATA <= (others => '0');

    else

      case(axi_araddr) is

        when "000000000000" =>

          S_AXI_RDATA <= "00000000000" &  led_on_count_reg;

        when "000000000100" =>

          S_AXI_RDATA <= "00000000000" &  led_off_count_reg;

        when others =>

          S_AXI_RDATA <= ( others => '0');

      end case;

    end if;

  end if;

end process;


process(S_AXI_ACLK)

begin

  if S_AXI_ACLK'event and S_AXI_ACLK='1' then

    if S_AXI_ARESETN = '0' then

     axi_rvalid <= '0';

     axi_rresp <= "00";

    elsif axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0' then

     axi_rvalid  <= '1';

     axi_rresp   <= "00";

    else

     axi_rvalid  <= '0';

    end if;

  end if;

end process;

S_AXI_RVALID <= axi_rvalid;

S_AXI_RRESP  <= axi_rresp;



end rtl;