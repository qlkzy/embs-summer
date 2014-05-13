-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_RS232_DTE_RX_pin : in std_logic;
    fpga_0_RS232_DTE_TX_pin : out std_logic;
    fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
    fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    fpga_0_Buttons_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    fpga_0_DDR_SDRAM_DDR_Clk_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_Clk_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CE_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_RAS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_CAS_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_WE_n_pin : out std_logic;
    fpga_0_DDR_SDRAM_DDR_BankAddr_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_DDR_Addr_pin : out std_logic_vector(12 downto 0);
    fpga_0_DDR_SDRAM_DDR_DQ_pin : inout std_logic_vector(15 downto 0);
    fpga_0_DDR_SDRAM_DDR_DM_pin : out std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_DDR_DQS_pin : inout std_logic_vector(1 downto 0);
    fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin : inout std_logic;
    fpga_0_Ethernet_MAC_PHY_tx_clk_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_rx_clk_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_crs_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_dv_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_rx_data_pin : in std_logic_vector(3 downto 0);
    fpga_0_Ethernet_MAC_PHY_col_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_rx_er_pin : in std_logic;
    fpga_0_Ethernet_MAC_PHY_tx_en_pin : out std_logic;
    fpga_0_Ethernet_MAC_PHY_tx_data_pin : out std_logic_vector(3 downto 0);
    fpga_0_Ethernet_MAC_PHY_MDC_pin : out std_logic;
    fpga_0_Ethernet_MAC_PHY_MDIO_pin : inout std_logic;
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    embs_vga_0_HSync_pin : out std_logic;
    embs_vga_0_Red_pin : out std_logic;
    embs_vga_0_Green_pin : out std_logic;
    embs_vga_0_Blue_pin : out std_logic;
    embs_vga_0_VSync_pin : out std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_RS232_DTE_RX_pin : in std_logic;
      fpga_0_RS232_DTE_TX_pin : out std_logic;
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
      fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      fpga_0_Buttons_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      fpga_0_DDR_SDRAM_DDR_Clk_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_Clk_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CE_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_RAS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_CAS_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_WE_n_pin : out std_logic;
      fpga_0_DDR_SDRAM_DDR_BankAddr_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_DDR_Addr_pin : out std_logic_vector(12 downto 0);
      fpga_0_DDR_SDRAM_DDR_DQ_pin : inout std_logic_vector(15 downto 0);
      fpga_0_DDR_SDRAM_DDR_DM_pin : out std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_DDR_DQS_pin : inout std_logic_vector(1 downto 0);
      fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin : inout std_logic;
      fpga_0_Ethernet_MAC_PHY_tx_clk_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_rx_clk_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_crs_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_dv_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_rx_data_pin : in std_logic_vector(3 downto 0);
      fpga_0_Ethernet_MAC_PHY_col_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_rx_er_pin : in std_logic;
      fpga_0_Ethernet_MAC_PHY_tx_en_pin : out std_logic;
      fpga_0_Ethernet_MAC_PHY_tx_data_pin : out std_logic_vector(3 downto 0);
      fpga_0_Ethernet_MAC_PHY_MDC_pin : out std_logic;
      fpga_0_Ethernet_MAC_PHY_MDIO_pin : inout std_logic;
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      embs_vga_0_HSync_pin : out std_logic;
      embs_vga_0_Red_pin : out std_logic;
      embs_vga_0_Green_pin : out std_logic;
      embs_vga_0_Blue_pin : out std_logic;
      embs_vga_0_VSync_pin : out std_logic
    );
  end component;

  attribute BUFFER_TYPE : STRING;
  attribute BOX_TYPE : STRING;
  attribute BUFFER_TYPE of fpga_0_Ethernet_MAC_PHY_tx_clk_pin : signal is "IBUF";
  attribute BUFFER_TYPE of fpga_0_Ethernet_MAC_PHY_rx_clk_pin : signal is "IBUF";
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_RS232_DTE_RX_pin => fpga_0_RS232_DTE_RX_pin,
      fpga_0_RS232_DTE_TX_pin => fpga_0_RS232_DTE_TX_pin,
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin => fpga_0_LEDs_8Bit_GPIO_IO_O_pin,
      fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin => fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin,
      fpga_0_Buttons_4Bit_GPIO_IO_I_pin => fpga_0_Buttons_4Bit_GPIO_IO_I_pin,
      fpga_0_DDR_SDRAM_DDR_Clk_pin => fpga_0_DDR_SDRAM_DDR_Clk_pin,
      fpga_0_DDR_SDRAM_DDR_Clk_n_pin => fpga_0_DDR_SDRAM_DDR_Clk_n_pin,
      fpga_0_DDR_SDRAM_DDR_CE_pin => fpga_0_DDR_SDRAM_DDR_CE_pin,
      fpga_0_DDR_SDRAM_DDR_CS_n_pin => fpga_0_DDR_SDRAM_DDR_CS_n_pin,
      fpga_0_DDR_SDRAM_DDR_RAS_n_pin => fpga_0_DDR_SDRAM_DDR_RAS_n_pin,
      fpga_0_DDR_SDRAM_DDR_CAS_n_pin => fpga_0_DDR_SDRAM_DDR_CAS_n_pin,
      fpga_0_DDR_SDRAM_DDR_WE_n_pin => fpga_0_DDR_SDRAM_DDR_WE_n_pin,
      fpga_0_DDR_SDRAM_DDR_BankAddr_pin => fpga_0_DDR_SDRAM_DDR_BankAddr_pin,
      fpga_0_DDR_SDRAM_DDR_Addr_pin => fpga_0_DDR_SDRAM_DDR_Addr_pin,
      fpga_0_DDR_SDRAM_DDR_DQ_pin => fpga_0_DDR_SDRAM_DDR_DQ_pin,
      fpga_0_DDR_SDRAM_DDR_DM_pin => fpga_0_DDR_SDRAM_DDR_DM_pin,
      fpga_0_DDR_SDRAM_DDR_DQS_pin => fpga_0_DDR_SDRAM_DDR_DQS_pin,
      fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin => fpga_0_DDR_SDRAM_ddr_dqs_div_io_pin,
      fpga_0_Ethernet_MAC_PHY_tx_clk_pin => fpga_0_Ethernet_MAC_PHY_tx_clk_pin,
      fpga_0_Ethernet_MAC_PHY_rx_clk_pin => fpga_0_Ethernet_MAC_PHY_rx_clk_pin,
      fpga_0_Ethernet_MAC_PHY_crs_pin => fpga_0_Ethernet_MAC_PHY_crs_pin,
      fpga_0_Ethernet_MAC_PHY_dv_pin => fpga_0_Ethernet_MAC_PHY_dv_pin,
      fpga_0_Ethernet_MAC_PHY_rx_data_pin => fpga_0_Ethernet_MAC_PHY_rx_data_pin,
      fpga_0_Ethernet_MAC_PHY_col_pin => fpga_0_Ethernet_MAC_PHY_col_pin,
      fpga_0_Ethernet_MAC_PHY_rx_er_pin => fpga_0_Ethernet_MAC_PHY_rx_er_pin,
      fpga_0_Ethernet_MAC_PHY_tx_en_pin => fpga_0_Ethernet_MAC_PHY_tx_en_pin,
      fpga_0_Ethernet_MAC_PHY_tx_data_pin => fpga_0_Ethernet_MAC_PHY_tx_data_pin,
      fpga_0_Ethernet_MAC_PHY_MDC_pin => fpga_0_Ethernet_MAC_PHY_MDC_pin,
      fpga_0_Ethernet_MAC_PHY_MDIO_pin => fpga_0_Ethernet_MAC_PHY_MDIO_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      embs_vga_0_HSync_pin => embs_vga_0_HSync_pin,
      embs_vga_0_Red_pin => embs_vga_0_Red_pin,
      embs_vga_0_Green_pin => embs_vga_0_Green_pin,
      embs_vga_0_Blue_pin => embs_vga_0_Blue_pin,
      embs_vga_0_VSync_pin => embs_vga_0_VSync_pin
    );

end architecture STRUCTURE;

