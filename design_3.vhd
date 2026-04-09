--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Apr  9 18:23:37 2026
--Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
--Command     : generate_target design_3.bd
--Design      : design_3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3 is
  port (
    StartStopSW : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_3 : entity is "design_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_3 : entity is "design_3.hwdef";
end design_3;

architecture STRUCTURE of design_3 is
  component design_3_counter_bcd_mod60_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    cs : in STD_LOGIC;
    QMSB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    QLSB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_3_counter_bcd_mod60_0_0;
  component design_3_counter_binary_2bit_0_0 is
  port (
    clk : in STD_LOGIC;
    select_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_3_counter_binary_2bit_0_0;
  component design_3_mux_4x1_0_0 is
  port (
    in0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bcd_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_3_mux_4x1_0_0;
  component design_3_decoder_bcd_7seg_0_0 is
  port (
    bcd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_3_decoder_bcd_7seg_0_0;
  component design_3_decoder_2to4_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_3_decoder_2to4_0_0;
  component design_3_Clock_Divider_250_0 is
  port (
    clkin : in STD_LOGIC;
    clkout : out STD_LOGIC
  );
  end component design_3_Clock_Divider_250_0;
  component design_3_Clock_Divider_100_0 is
  port (
    clkin : in STD_LOGIC;
    clkout : out STD_LOGIC
  );
  end component design_3_Clock_Divider_100_0;
  component design_3_Bit_Extractor_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_3_Bit_Extractor_0;
  component design_3_button_edge_det_0 is
  port (
    clk : in STD_LOGIC;
    btn_level : in STD_LOGIC;
    reset : in STD_LOGIC;
    rising_edge_pulse : out STD_LOGIC
  );
  end component design_3_button_edge_det_0;
  component design_3_toggle_start_stop_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_3_toggle_start_stop_0;
  component design_3_counter_bcd_mod60_wi_1_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    cs : in STD_LOGIC;
    carry_out : out STD_LOGIC;
    QMSB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    QLSB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_3_counter_bcd_mod60_wi_1_0;
  signal Bit_Extractor_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Clock_Divider_100_clkout : STD_LOGIC;
  signal Clock_Divider_250_clkout : STD_LOGIC;
  signal StartStopSW_1 : STD_LOGIC;
  signal button_edge_det_rising_edge_pulse : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal counter_bcd_mod60_0_QLSB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_bcd_mod60_0_QMSB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_bcd_mod60_wi_1_QLSB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_bcd_mod60_wi_1_QMSB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal counter_bcd_mod60_wi_1_carry_out : STD_LOGIC;
  signal counter_binary_2bit_0_select_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal decoder_2to4_0_an : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal decoder_bcd_7seg_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal mux_4x1_0_bcd_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_1 : STD_LOGIC;
  signal toggle_start_stop_q : STD_LOGIC;
begin
  StartStopSW_1 <= StartStopSW;
  an(3 downto 0) <= decoder_2to4_0_an(3 downto 0);
  clk_1 <= clk;
  dp(0) <= Bit_Extractor_Dout(0);
  reset_1 <= reset;
  seg(6 downto 0) <= decoder_bcd_7seg_0_segments(6 downto 0);
Bit_Extractor: component design_3_Bit_Extractor_0
     port map (
      Din(3 downto 0) => decoder_2to4_0_an(3 downto 0),
      Dout(0) => Bit_Extractor_Dout(0)
    );
Clock_Divider_1: component design_3_Clock_Divider_100_0
     port map (
      clkin => clk_1,
      clkout => Clock_Divider_100_clkout
    );
Clock_Divider_250: component design_3_Clock_Divider_250_0
     port map (
      clkin => clk_1,
      clkout => Clock_Divider_250_clkout
    );
button_edge_det: component design_3_button_edge_det_0
     port map (
      btn_level => StartStopSW_1,
      clk => Clock_Divider_250_clkout,
      reset => reset_1,
      rising_edge_pulse => button_edge_det_rising_edge_pulse
    );
counter_bcd_mod60_0: component design_3_counter_bcd_mod60_0_0
     port map (
      QLSB(3 downto 0) => counter_bcd_mod60_0_QLSB(3 downto 0),
      QMSB(3 downto 0) => counter_bcd_mod60_0_QMSB(3 downto 0),
      clk => Clock_Divider_100_clkout,
      cs => counter_bcd_mod60_wi_1_carry_out,
      reset => reset_1
    );
counter_bcd_mod60_wi_1: component design_3_counter_bcd_mod60_wi_1_0
     port map (
      QLSB(3 downto 0) => counter_bcd_mod60_wi_1_QLSB(3 downto 0),
      QMSB(3 downto 0) => counter_bcd_mod60_wi_1_QMSB(3 downto 0),
      carry_out => counter_bcd_mod60_wi_1_carry_out,
      clk => Clock_Divider_100_clkout,
      cs => toggle_start_stop_q,
      reset => reset_1
    );
counter_binary_2bit_0: component design_3_counter_binary_2bit_0_0
     port map (
      clk => Clock_Divider_250_clkout,
      select_out(1 downto 0) => counter_binary_2bit_0_select_out(1 downto 0)
    );
decoder_2to4_0: component design_3_decoder_2to4_0_0
     port map (
      an(3 downto 0) => decoder_2to4_0_an(3 downto 0),
      sel(1 downto 0) => counter_binary_2bit_0_select_out(1 downto 0)
    );
decoder_bcd_7seg_0: component design_3_decoder_bcd_7seg_0_0
     port map (
      bcd(3 downto 0) => mux_4x1_0_bcd_out(3 downto 0),
      segments(6 downto 0) => decoder_bcd_7seg_0_segments(6 downto 0)
    );
mux_4x1_0: component design_3_mux_4x1_0_0
     port map (
      bcd_out(3 downto 0) => mux_4x1_0_bcd_out(3 downto 0),
      in0(3 downto 0) => counter_bcd_mod60_wi_1_QLSB(3 downto 0),
      in1(3 downto 0) => counter_bcd_mod60_wi_1_QMSB(3 downto 0),
      in2(3 downto 0) => counter_bcd_mod60_0_QLSB(3 downto 0),
      in3(3 downto 0) => counter_bcd_mod60_0_QMSB(3 downto 0),
      select_in(1 downto 0) => counter_binary_2bit_0_select_out(1 downto 0)
    );
toggle_start_stop: component design_3_toggle_start_stop_0
     port map (
      clk => button_edge_det_rising_edge_pulse,
      q => toggle_start_stop_q,
      reset => reset_1
    );
end STRUCTURE;
