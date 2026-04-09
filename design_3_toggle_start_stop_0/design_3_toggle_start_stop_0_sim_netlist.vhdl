-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  9 18:25:08 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_toggle_start_stop_0/design_3_toggle_start_stop_0_sim_netlist.vhdl}
-- Design      : design_3_toggle_start_stop_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_toggle_start_stop_0_toggle_ff is
  port (
    q : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_3_toggle_start_stop_0_toggle_ff : entity is "toggle_ff";
end design_3_toggle_start_stop_0_toggle_ff;

architecture STRUCTURE of design_3_toggle_start_stop_0_toggle_ff is
  signal \^q\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
begin
  q <= \^q\;
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      I1 => \^q\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^q\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_toggle_start_stop_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_3_toggle_start_stop_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_3_toggle_start_stop_0 : entity is "design_3_toggle_start_stop_0,toggle_ff,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_3_toggle_start_stop_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_3_toggle_start_stop_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_3_toggle_start_stop_0 : entity is "toggle_ff,Vivado 2018.3";
end design_3_toggle_start_stop_0;

architecture STRUCTURE of design_3_toggle_start_stop_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_3_toggle_start_stop_0_toggle_ff
     port map (
      clk => clk,
      q => q,
      reset => reset
    );
end STRUCTURE;
