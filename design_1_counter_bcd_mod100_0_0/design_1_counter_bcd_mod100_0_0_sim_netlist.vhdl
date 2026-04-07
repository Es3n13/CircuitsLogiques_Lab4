-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  7 10:55:49 2026
-- Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/UQAR/2026 Hiver/Circuits
--               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_1/ip/design_1_counter_bcd_mod100_0_0/design_1_counter_bcd_mod100_0_0_sim_netlist.vhdl}
-- Design      : design_1_counter_bcd_mod100_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_counter_bcd_mod100_0_0_counter_bcd_mod100 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    QMSB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    carry_out : out STD_LOGIC;
    cs : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_counter_bcd_mod100_0_0_counter_bcd_mod100 : entity is "counter_bcd_mod100";
end design_1_counter_bcd_mod100_0_0_counter_bcd_mod100;

architecture STRUCTURE of design_1_counter_bcd_mod100_0_0_counter_bcd_mod100 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^qmsb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal carry_cnt : STD_LOGIC;
  signal \carry_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \^carry_out\ : STD_LOGIC;
  signal carry_reg_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tens_cnt : STD_LOGIC;
  signal \tens_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \tens_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal units_cnt1 : STD_LOGIC;
  signal units_cnt11_in : STD_LOGIC;
  signal \units_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \units_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \units_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \units_cnt[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of carry_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of carry_reg_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tens_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tens_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tens_cnt[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \units_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \units_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \units_cnt[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  QMSB(3 downto 0) <= \^qmsb\(3 downto 0);
  carry_out <= \^carry_out\;
\carry_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => cs,
      I1 => units_cnt1,
      I2 => units_cnt11_in,
      I3 => reset,
      O => \carry_cnt[0]_i_1_n_0\
    );
\carry_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \carry_cnt[0]_i_1_n_0\,
      Q => carry_cnt,
      R => '0'
    );
carry_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0C000AA"
    )
        port map (
      I0 => \^carry_out\,
      I1 => units_cnt1,
      I2 => units_cnt11_in,
      I3 => carry_cnt,
      I4 => cs,
      I5 => reset,
      O => carry_reg_i_1_n_0
    );
carry_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^qmsb\(1),
      I1 => \^qmsb\(2),
      I2 => \^qmsb\(0),
      I3 => \^qmsb\(3),
      O => units_cnt1
    );
carry_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => units_cnt11_in
    );
carry_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => carry_reg_i_1_n_0,
      Q => \^carry_out\,
      R => '0'
    );
\tens_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^qmsb\(0),
      O => plusOp(0)
    );
\tens_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^qmsb\(0),
      I1 => \^qmsb\(1),
      O => plusOp(1)
    );
\tens_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^qmsb\(0),
      I1 => \^qmsb\(1),
      I2 => \^qmsb\(2),
      O => plusOp(2)
    );
\tens_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => reset,
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \tens_cnt[3]_i_4_n_0\,
      I4 => units_cnt1,
      I5 => cs,
      O => \tens_cnt[3]_i_1_n_0\
    );
\tens_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => cs,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => tens_cnt
    );
\tens_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^qmsb\(1),
      I1 => \^qmsb\(0),
      I2 => \^qmsb\(2),
      I3 => \^qmsb\(3),
      O => plusOp(3)
    );
\tens_cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \tens_cnt[3]_i_4_n_0\
    );
\tens_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tens_cnt,
      D => plusOp(0),
      Q => \^qmsb\(0),
      R => \tens_cnt[3]_i_1_n_0\
    );
\tens_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tens_cnt,
      D => plusOp(1),
      Q => \^qmsb\(1),
      R => \tens_cnt[3]_i_1_n_0\
    );
\tens_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tens_cnt,
      D => plusOp(2),
      Q => \^qmsb\(2),
      R => \tens_cnt[3]_i_1_n_0\
    );
\tens_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tens_cnt,
      D => plusOp(3),
      Q => \^qmsb\(3),
      R => \tens_cnt[3]_i_1_n_0\
    );
\units_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \units_cnt[0]_i_1_n_0\
    );
\units_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \units_cnt[1]_i_1_n_0\
    );
\units_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      O => \units_cnt[2]_i_1_n_0\
    );
\units_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68F0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \units_cnt[3]_i_1_n_0\
    );
\units_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cs,
      D => \units_cnt[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \tens_cnt[3]_i_1_n_0\
    );
\units_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cs,
      D => \units_cnt[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \tens_cnt[3]_i_1_n_0\
    );
\units_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cs,
      D => \units_cnt[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \tens_cnt[3]_i_1_n_0\
    );
\units_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => cs,
      D => \units_cnt[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \tens_cnt[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_counter_bcd_mod100_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    cs : in STD_LOGIC;
    carry_out : out STD_LOGIC;
    QMSB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    QLSB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_counter_bcd_mod100_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_counter_bcd_mod100_0_0 : entity is "design_1_counter_bcd_mod100_0_0,counter_bcd_mod100,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_counter_bcd_mod100_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_counter_bcd_mod100_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_counter_bcd_mod100_0_0 : entity is "counter_bcd_mod100,Vivado 2018.3";
end design_1_counter_bcd_mod100_0_0;

architecture STRUCTURE of design_1_counter_bcd_mod100_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_counter_bcd_mod100_0_0_counter_bcd_mod100
     port map (
      Q(3 downto 0) => QLSB(3 downto 0),
      QMSB(3 downto 0) => QMSB(3 downto 0),
      carry_out => carry_out,
      clk => clk,
      cs => cs,
      reset => reset
    );
end STRUCTURE;
