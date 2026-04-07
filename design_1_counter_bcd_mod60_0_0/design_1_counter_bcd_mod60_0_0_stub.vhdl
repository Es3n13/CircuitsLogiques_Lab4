-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  7 10:55:49 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_1/ip/design_1_counter_bcd_mod60_0_0/design_1_counter_bcd_mod60_0_0_stub.vhdl}
-- Design      : design_1_counter_bcd_mod60_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_counter_bcd_mod60_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    cs : in STD_LOGIC;
    QMSB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    QLSB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_counter_bcd_mod60_0_0;

architecture stub of design_1_counter_bcd_mod60_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,cs,QMSB[3:0],QLSB[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "counter_bcd_mod60,Vivado 2018.3";
begin
end;
