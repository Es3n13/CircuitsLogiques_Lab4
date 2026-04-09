--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Thu Apr  9 18:23:37 2026
--Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
--Command     : generate_target design_3_wrapper.bd
--Design      : design_3_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_3_wrapper is
  port (
    StartStopSW : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end design_3_wrapper;

architecture STRUCTURE of design_3_wrapper is
  component design_3 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    StartStopSW : in STD_LOGIC
  );
  end component design_3;
begin
design_3_i: component design_3
     port map (
      StartStopSW => StartStopSW,
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      dp(0) => dp(0),
      reset => reset,
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
