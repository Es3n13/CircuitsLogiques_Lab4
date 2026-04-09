-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr  9 18:26:02 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_decoder_2to4_0_0/design_3_decoder_2to4_0_0_sim_netlist.vhdl}
-- Design      : design_3_decoder_2to4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_decoder_2to4_0_0_decoder_2to4 is
  port (
    an : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_3_decoder_2to4_0_0_decoder_2to4 : entity is "decoder_2to4";
end design_3_decoder_2to4_0_0_decoder_2to4;

architecture STRUCTURE of design_3_decoder_2to4_0_0_decoder_2to4 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair0";
begin
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => an(0)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => an(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_decoder_2to4_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_3_decoder_2to4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_3_decoder_2to4_0_0 : entity is "design_3_decoder_2to4_0_0,decoder_2to4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_3_decoder_2to4_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_3_decoder_2to4_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_3_decoder_2to4_0_0 : entity is "decoder_2to4,Vivado 2018.3";
end design_3_decoder_2to4_0_0;

architecture STRUCTURE of design_3_decoder_2to4_0_0 is
begin
U0: entity work.design_3_decoder_2to4_0_0_decoder_2to4
     port map (
      an(1) => an(3),
      an(0) => an(0),
      sel(1 downto 0) => sel(1 downto 0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => an(2)
    );
end STRUCTURE;
