-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  7 10:55:49 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_1/ip/design_1_decoder_bcd_7seg_0_0/design_1_decoder_bcd_7seg_0_0_sim_netlist.vhdl}
-- Design      : design_1_decoder_bcd_7seg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_decoder_bcd_7seg_0_0_decoder_bcd_7seg is
  port (
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 );
    bcd : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_decoder_bcd_7seg_0_0_decoder_bcd_7seg : entity is "decoder_bcd_7seg";
end design_1_decoder_bcd_7seg_0_0_decoder_bcd_7seg;

architecture STRUCTURE of design_1_decoder_bcd_7seg_0_0_decoder_bcd_7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \segments[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \segments[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \segments[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \segments[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \segments[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \segments[5]_INST_0\ : label is "soft_lutpair2";
begin
\segments[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(0),
      I2 => bcd(2),
      I3 => bcd(1),
      O => segments(0)
    );
\segments[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB98"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(1),
      O => segments(1)
    );
\segments[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(1),
      I2 => bcd(2),
      I3 => bcd(0),
      O => segments(2)
    );
\segments[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA9C"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(1),
      O => segments(3)
    );
\segments[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(0),
      I2 => bcd(1),
      I3 => bcd(2),
      O => segments(4)
    );
\segments[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEC8"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(1),
      O => segments(5)
    );
\segments[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9C"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(1),
      O => segments(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_decoder_bcd_7seg_0_0 is
  port (
    bcd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_decoder_bcd_7seg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_decoder_bcd_7seg_0_0 : entity is "design_1_decoder_bcd_7seg_0_0,decoder_bcd_7seg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_decoder_bcd_7seg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_decoder_bcd_7seg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_decoder_bcd_7seg_0_0 : entity is "decoder_bcd_7seg,Vivado 2018.3";
end design_1_decoder_bcd_7seg_0_0;

architecture STRUCTURE of design_1_decoder_bcd_7seg_0_0 is
begin
U0: entity work.design_1_decoder_bcd_7seg_0_0_decoder_bcd_7seg
     port map (
      bcd(3 downto 0) => bcd(3 downto 0),
      segments(6 downto 0) => segments(6 downto 0)
    );
end STRUCTURE;
