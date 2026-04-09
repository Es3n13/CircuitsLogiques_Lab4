-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  9 18:25:07 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_mux_4x1_0_0/design_3_mux_4x1_0_0_sim_netlist.vhdl}
-- Design      : design_3_mux_4x1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_mux_4x1_0_0_mux_4x1 is
  port (
    bcd_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_3_mux_4x1_0_0_mux_4x1 : entity is "mux_4x1";
end design_3_mux_4x1_0_0_mux_4x1;

architecture STRUCTURE of design_3_mux_4x1_0_0_mux_4x1 is
begin
\bcd_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => in1(0),
      I1 => in0(0),
      I2 => in3(0),
      I3 => select_in(0),
      I4 => select_in(1),
      I5 => in2(0),
      O => bcd_out(0)
    );
\bcd_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => in1(1),
      I1 => in0(1),
      I2 => in3(1),
      I3 => select_in(0),
      I4 => select_in(1),
      I5 => in2(1),
      O => bcd_out(1)
    );
\bcd_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => in1(2),
      I1 => in0(2),
      I2 => in3(2),
      I3 => select_in(0),
      I4 => select_in(1),
      I5 => in2(2),
      O => bcd_out(2)
    );
\bcd_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => in1(3),
      I1 => in0(3),
      I2 => in3(3),
      I3 => select_in(0),
      I4 => select_in(1),
      I5 => in2(3),
      O => bcd_out(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_mux_4x1_0_0 is
  port (
    in0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    select_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bcd_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_3_mux_4x1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_3_mux_4x1_0_0 : entity is "design_3_mux_4x1_0_0,mux_4x1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_3_mux_4x1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_3_mux_4x1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_3_mux_4x1_0_0 : entity is "mux_4x1,Vivado 2018.3";
end design_3_mux_4x1_0_0;

architecture STRUCTURE of design_3_mux_4x1_0_0 is
begin
U0: entity work.design_3_mux_4x1_0_0_mux_4x1
     port map (
      bcd_out(3 downto 0) => bcd_out(3 downto 0),
      in0(3 downto 0) => in0(3 downto 0),
      in1(3 downto 0) => in1(3 downto 0),
      in2(3 downto 0) => in2(3 downto 0),
      in3(3 downto 0) => in3(3 downto 0),
      select_in(1 downto 0) => select_in(1 downto 0)
    );
end STRUCTURE;
