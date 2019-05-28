-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/03/2018 07:30:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MASTER IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_BT_A : IN std_logic;
	i_BT_B : IN std_logic;
	i_BT_C : IN std_logic;
	i_DATA_SW : IN std_logic_vector(7 DOWNTO 0);
	o_SCL : OUT std_logic;
	o_SDA : OUT std_logic
	);
END MASTER;

-- Design Ports Information
-- o_SCL	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SDA	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_C	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_A	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_B	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[4]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MASTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_BT_A : std_logic;
SIGNAL ww_i_BT_B : std_logic;
SIGNAL ww_i_BT_C : std_logic;
SIGNAL ww_i_DATA_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_SCL : std_logic;
SIGNAL ww_o_SDA : std_logic;
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_P2S|process_0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_STM_MASTER|Selector1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_ENABLE_START~combout\ : std_logic;
SIGNAL \U_START_FRAME|done~8_combout\ : std_logic;
SIGNAL \U_START_FRAME|done~1_combout\ : std_logic;
SIGNAL \U_START_FRAME|done~3_combout\ : std_logic;
SIGNAL \U_START_FRAME|done~0_combout\ : std_logic;
SIGNAL \U_START_FRAME|done~_emulated_q\ : std_logic;
SIGNAL \U_START_FRAME|done~2_combout\ : std_logic;
SIGNAL \U_START_FRAME|o_CTRL_START~0_combout\ : std_logic;
SIGNAL \U_START_FRAME|o_CTRL_START~1_combout\ : std_logic;
SIGNAL \U_START_FRAME|o_CTRL_START~q\ : std_logic;
SIGNAL \U_STM_MASTER|o_ENABLE_P2S~combout\ : std_logic;
SIGNAL \U_P2S|cont~13_combout\ : std_logic;
SIGNAL \U_P2S|cont[0]~1_combout\ : std_logic;
SIGNAL \U_P2S|Add0~0_combout\ : std_logic;
SIGNAL \U_P2S|cont[0]~3_combout\ : std_logic;
SIGNAL \U_P2S|cont[0]~0_combout\ : std_logic;
SIGNAL \U_P2S|cont[0]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|cont[0]~2_combout\ : std_logic;
SIGNAL \U_P2S|Add0~1\ : std_logic;
SIGNAL \U_P2S|Add0~2_combout\ : std_logic;
SIGNAL \U_P2S|cont~39_combout\ : std_logic;
SIGNAL \U_P2S|Add0~3\ : std_logic;
SIGNAL \U_P2S|Add0~4_combout\ : std_logic;
SIGNAL \U_P2S|cont~38_combout\ : std_logic;
SIGNAL \U_P2S|Add0~5\ : std_logic;
SIGNAL \U_P2S|Add0~6_combout\ : std_logic;
SIGNAL \U_P2S|cont~37_combout\ : std_logic;
SIGNAL \U_P2S|Add0~7\ : std_logic;
SIGNAL \U_P2S|Add0~8_combout\ : std_logic;
SIGNAL \U_P2S|cont~36_combout\ : std_logic;
SIGNAL \U_P2S|process_0~8_combout\ : std_logic;
SIGNAL \U_P2S|Add0~9\ : std_logic;
SIGNAL \U_P2S|Add0~10_combout\ : std_logic;
SIGNAL \U_P2S|cont~35_combout\ : std_logic;
SIGNAL \U_P2S|Add0~11\ : std_logic;
SIGNAL \U_P2S|Add0~12_combout\ : std_logic;
SIGNAL \U_P2S|cont~34_combout\ : std_logic;
SIGNAL \U_P2S|Add0~13\ : std_logic;
SIGNAL \U_P2S|Add0~14_combout\ : std_logic;
SIGNAL \U_P2S|cont~33_combout\ : std_logic;
SIGNAL \U_P2S|Add0~15\ : std_logic;
SIGNAL \U_P2S|Add0~16_combout\ : std_logic;
SIGNAL \U_P2S|cont~32_combout\ : std_logic;
SIGNAL \U_P2S|Add0~17\ : std_logic;
SIGNAL \U_P2S|Add0~18_combout\ : std_logic;
SIGNAL \U_P2S|cont~31_combout\ : std_logic;
SIGNAL \U_P2S|Add0~19\ : std_logic;
SIGNAL \U_P2S|Add0~20_combout\ : std_logic;
SIGNAL \U_P2S|cont~30_combout\ : std_logic;
SIGNAL \U_P2S|Add0~21\ : std_logic;
SIGNAL \U_P2S|Add0~22_combout\ : std_logic;
SIGNAL \U_P2S|cont~29_combout\ : std_logic;
SIGNAL \U_P2S|Add0~23\ : std_logic;
SIGNAL \U_P2S|Add0~24_combout\ : std_logic;
SIGNAL \U_P2S|cont~28_combout\ : std_logic;
SIGNAL \U_P2S|process_0~6_combout\ : std_logic;
SIGNAL \U_P2S|process_0~7_combout\ : std_logic;
SIGNAL \U_P2S|Add0~25\ : std_logic;
SIGNAL \U_P2S|Add0~26_combout\ : std_logic;
SIGNAL \U_P2S|cont~27_combout\ : std_logic;
SIGNAL \U_P2S|Add0~27\ : std_logic;
SIGNAL \U_P2S|Add0~28_combout\ : std_logic;
SIGNAL \U_P2S|cont~26_combout\ : std_logic;
SIGNAL \U_P2S|Add0~29\ : std_logic;
SIGNAL \U_P2S|Add0~30_combout\ : std_logic;
SIGNAL \U_P2S|cont~25_combout\ : std_logic;
SIGNAL \U_P2S|Add0~31\ : std_logic;
SIGNAL \U_P2S|Add0~32_combout\ : std_logic;
SIGNAL \U_P2S|cont~24_combout\ : std_logic;
SIGNAL \U_P2S|process_0~5_combout\ : std_logic;
SIGNAL \U_P2S|process_0~9_combout\ : std_logic;
SIGNAL \U_P2S|Add0~33\ : std_logic;
SIGNAL \U_P2S|Add0~34_combout\ : std_logic;
SIGNAL \U_P2S|cont~23_combout\ : std_logic;
SIGNAL \U_P2S|Add0~35\ : std_logic;
SIGNAL \U_P2S|Add0~36_combout\ : std_logic;
SIGNAL \U_P2S|cont~22_combout\ : std_logic;
SIGNAL \U_P2S|Add0~37\ : std_logic;
SIGNAL \U_P2S|Add0~38_combout\ : std_logic;
SIGNAL \U_P2S|cont~21_combout\ : std_logic;
SIGNAL \U_P2S|Add0~39\ : std_logic;
SIGNAL \U_P2S|Add0~40_combout\ : std_logic;
SIGNAL \U_P2S|cont~20_combout\ : std_logic;
SIGNAL \U_P2S|Add0~41\ : std_logic;
SIGNAL \U_P2S|Add0~42_combout\ : std_logic;
SIGNAL \U_P2S|cont~12_combout\ : std_logic;
SIGNAL \U_P2S|Add0~43\ : std_logic;
SIGNAL \U_P2S|Add0~44_combout\ : std_logic;
SIGNAL \U_P2S|cont~11_combout\ : std_logic;
SIGNAL \U_P2S|Add0~45\ : std_logic;
SIGNAL \U_P2S|Add0~46_combout\ : std_logic;
SIGNAL \U_P2S|cont~10_combout\ : std_logic;
SIGNAL \U_P2S|Add0~47\ : std_logic;
SIGNAL \U_P2S|Add0~48_combout\ : std_logic;
SIGNAL \U_P2S|cont~7_combout\ : std_logic;
SIGNAL \U_P2S|Add0~49\ : std_logic;
SIGNAL \U_P2S|Add0~50_combout\ : std_logic;
SIGNAL \U_P2S|cont~19_combout\ : std_logic;
SIGNAL \U_P2S|Add0~51\ : std_logic;
SIGNAL \U_P2S|Add0~52_combout\ : std_logic;
SIGNAL \U_P2S|cont~18_combout\ : std_logic;
SIGNAL \U_P2S|Add0~53\ : std_logic;
SIGNAL \U_P2S|Add0~54_combout\ : std_logic;
SIGNAL \U_P2S|cont~17_combout\ : std_logic;
SIGNAL \U_P2S|Add0~55\ : std_logic;
SIGNAL \U_P2S|Add0~56_combout\ : std_logic;
SIGNAL \U_P2S|cont~16_combout\ : std_logic;
SIGNAL \U_P2S|Add0~57\ : std_logic;
SIGNAL \U_P2S|Add0~58_combout\ : std_logic;
SIGNAL \U_P2S|cont~15_combout\ : std_logic;
SIGNAL \U_P2S|Add0~59\ : std_logic;
SIGNAL \U_P2S|Add0~60_combout\ : std_logic;
SIGNAL \U_P2S|cont~14_combout\ : std_logic;
SIGNAL \U_P2S|process_0~1_combout\ : std_logic;
SIGNAL \U_P2S|process_0~2_combout\ : std_logic;
SIGNAL \U_P2S|process_0~3_combout\ : std_logic;
SIGNAL \U_P2S|process_0~0_combout\ : std_logic;
SIGNAL \U_P2S|process_0~4_combout\ : std_logic;
SIGNAL \U_P2S|process_0~10_combout\ : std_logic;
SIGNAL \U_P2S|cont[31]~40_combout\ : std_logic;
SIGNAL \U_P2S|cont[31]~9_combout\ : std_logic;
SIGNAL \U_P2S|Add0~61\ : std_logic;
SIGNAL \U_P2S|Add0~62_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~5_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~0_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~2_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~3_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~1_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~0_combout\ : std_logic;
SIGNAL \U_P2S|Equal1~4_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~1_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~2_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~3_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~4_combout\ : std_logic;
SIGNAL \U_P2S|o_CTRL_P2S~q\ : std_logic;
SIGNAL \U_STM_MASTER|state~16_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~23_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_READ_SW~feeder_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_READ_SW~q\ : std_logic;
SIGNAL \i_BT_B~input_o\ : std_logic;
SIGNAL \i_BT_C~input_o\ : std_logic;
SIGNAL \i_BT_A~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|process_0~0_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~18_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_IDLE~q\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~3_combout\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~4_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~21_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~22_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~19_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~20_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_CLOSE_COM~feeder_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_CLOSE_COM~q\ : std_logic;
SIGNAL \U_STOP_FRAME|o_CTRL_STOP~feeder_combout\ : std_logic;
SIGNAL \U_STM_MASTER|o_ENABLE_STOP~combout\ : std_logic;
SIGNAL \U_STOP_FRAME|o_CTRL_STOP~0_combout\ : std_logic;
SIGNAL \U_STOP_FRAME|o_CTRL_STOP~q\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~0_combout\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~1_combout\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~2_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~24_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state~17_combout\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_START_COM~q\ : std_logic;
SIGNAL \U_STM_MASTER|o_ENABLE~combout\ : std_logic;
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U_REG_SCL|o_Q~0_combout\ : std_logic;
SIGNAL \U_REG_SCL|o_Q~q\ : std_logic;
SIGNAL \U_STOP_FRAME|o_SDA~reg0feeder_combout\ : std_logic;
SIGNAL \U_STOP_FRAME|o_SDA~reg0_q\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[10]~0_combout\ : std_logic;
SIGNAL \U_STM_MASTER|Selector1~1clkctrl_outclk\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[10]$latch~combout\ : std_logic;
SIGNAL \U_P2S|process_0~10clkctrl_outclk\ : std_logic;
SIGNAL \U_P2S|w_REG[11]~17_combout\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[9]~1_combout\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[9]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[10]~21_combout\ : std_logic;
SIGNAL \i_DATA_SW[7]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[8]~25_combout\ : std_logic;
SIGNAL \i_DATA_SW[6]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[7]~29_combout\ : std_logic;
SIGNAL \i_DATA_SW[5]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[6]~33_combout\ : std_logic;
SIGNAL \i_DATA_SW[4]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[5]~37_combout\ : std_logic;
SIGNAL \i_DATA_SW[3]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[4]~41_combout\ : std_logic;
SIGNAL \i_DATA_SW[2]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[3]~45_combout\ : std_logic;
SIGNAL \i_DATA_SW[1]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[2]~49_combout\ : std_logic;
SIGNAL \i_DATA_SW[0]~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_P2S|w_REG[1]~53_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[1]~_emulatedfeeder_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[1]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[1]~54_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[2]~51_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[2]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[2]~50_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[3]~47_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[3]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[3]~46_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[4]~43_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[4]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[4]~42_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[5]~39_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[5]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[5]~38_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[6]~35_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[6]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[6]~34_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[7]~31_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[7]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[7]~30_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[8]~27_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[8]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[8]~26_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[10]~23_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[10]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[10]~22_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[11]~19_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[11]~_emulated_q\ : std_logic;
SIGNAL \U_P2S|w_REG[11]~18_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[13]~feeder_combout\ : std_logic;
SIGNAL \U_P2S|w_REG[14]~feeder_combout\ : std_logic;
SIGNAL \U_P2S|o_SDA~reg0_q\ : std_logic;
SIGNAL \U_P2S|o_SDA~en_q\ : std_logic;
SIGNAL \U_STOP_FRAME|o_SDA~enfeeder_combout\ : std_logic;
SIGNAL \U_STOP_FRAME|o_SDA~en_q\ : std_logic;
SIGNAL \U_REG_SDA|o_Q~0_combout\ : std_logic;
SIGNAL \U_REG_SDA|o_Q~1_combout\ : std_logic;
SIGNAL \U_REG_SDA|o_Q~feeder_combout\ : std_logic;
SIGNAL \U_REG_SDA|o_Q~q\ : std_logic;
SIGNAL \U_P2S|w_REG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_P2S|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_P2S|ALT_INV_process_0~10clkctrl_outclk\ : std_logic;
SIGNAL \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CLK~input_o\ : std_logic;
SIGNAL \U_STM_MASTER|ALT_INV_o_ENABLE_P2S~combout\ : std_logic;
SIGNAL \U_START_FRAME|ALT_INV_done~0_combout\ : std_logic;
SIGNAL \U_P2S|ALT_INV_cont[0]~0_combout\ : std_logic;
SIGNAL \U_P2S|ALT_INV_cont[31]~9_combout\ : std_logic;
SIGNAL \U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\ : std_logic;
SIGNAL \U_P2S|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_BT_A <= i_BT_A;
ww_i_BT_B <= i_BT_B;
ww_i_BT_C <= i_BT_C;
ww_i_DATA_SW <= i_DATA_SW;
o_SCL <= ww_o_SCL;
o_SDA <= ww_o_SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \i_CLK~input_o\);

\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(1));

\U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_STM_MASTER|state.st_READ_SW~q\);

\U_P2S|process_0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_P2S|process_0~10_combout\);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\U_STM_MASTER|Selector1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_STM_MASTER|Selector1~1_combout\);
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;
\U_P2S|ALT_INV_process_0~10clkctrl_outclk\ <= NOT \U_P2S|process_0~10clkctrl_outclk\;
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ <= NOT \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\;
\ALT_INV_i_CLK~input_o\ <= NOT \i_CLK~input_o\;
\U_STM_MASTER|ALT_INV_o_ENABLE_P2S~combout\ <= NOT \U_STM_MASTER|o_ENABLE_P2S~combout\;
\U_START_FRAME|ALT_INV_done~0_combout\ <= NOT \U_START_FRAME|done~0_combout\;
\U_P2S|ALT_INV_cont[0]~0_combout\ <= NOT \U_P2S|cont[0]~0_combout\;
\U_P2S|ALT_INV_cont[31]~9_combout\ <= NOT \U_P2S|cont[31]~9_combout\;
\U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\ <= NOT \U_START_FRAME|o_CTRL_START~1_combout\;
\U_P2S|ALT_INV_process_0~10_combout\ <= NOT \U_P2S|process_0~10_combout\;
\U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\ <= NOT \U_STOP_FRAME|o_CTRL_STOP~0_combout\;

-- Location: IOOBUF_X41_Y21_N9
\o_SCL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG_SCL|o_Q~q\,
	devoe => ww_devoe,
	o => ww_o_SCL);

-- Location: IOOBUF_X41_Y14_N16
\o_SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REG_SDA|o_Q~q\,
	devoe => ww_devoe,
	o => ww_o_SDA);

-- Location: IOIBUF_X0_Y14_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G2
\i_CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: PLL_1
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 6,
	c2_initial => 253,
	c2_low => 6,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 250,
	c3_initial => 105,
	c3_low => 250,
	c3_mode => "even",
	c3_ph => 0,
	c3_use_casc_in => "on",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 500,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c3",
	clk1_divide_by => 500,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "2500000",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y19_N22
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X40_Y15_N18
\U_STM_MASTER|o_ENABLE_START\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_ENABLE_START~combout\ = (\i_RST~input_o\ & ((\U_STM_MASTER|state.st_START_COM~q\ & ((!\U_START_FRAME|o_CTRL_START~q\))) # (!\U_STM_MASTER|state.st_START_COM~q\ & (\U_STM_MASTER|o_ENABLE_START~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_START_COM~q\,
	datab => \U_STM_MASTER|o_ENABLE_START~combout\,
	datac => \U_START_FRAME|o_CTRL_START~q\,
	datad => \i_RST~input_o\,
	combout => \U_STM_MASTER|o_ENABLE_START~combout\);

-- Location: LCCOMB_X40_Y15_N0
\U_START_FRAME|done~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|done~8_combout\ = (!\U_START_FRAME|done~2_combout\ & \U_STM_MASTER|o_ENABLE_START~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_START_FRAME|done~2_combout\,
	datad => \U_STM_MASTER|o_ENABLE_START~combout\,
	combout => \U_START_FRAME|done~8_combout\);

-- Location: LCCOMB_X40_Y15_N22
\U_START_FRAME|done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|done~1_combout\ = (\i_RST~input_o\ & ((\U_START_FRAME|done~8_combout\) # (\U_START_FRAME|done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_START_FRAME|done~8_combout\,
	datab => \i_RST~input_o\,
	datad => \U_START_FRAME|done~1_combout\,
	combout => \U_START_FRAME|done~1_combout\);

-- Location: LCCOMB_X40_Y15_N8
\U_START_FRAME|done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|done~3_combout\ = \U_START_FRAME|done~1_combout\ $ (((!\U_STM_MASTER|o_ENABLE_START~combout\ & \U_START_FRAME|done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_START_FRAME|done~1_combout\,
	datac => \U_STM_MASTER|o_ENABLE_START~combout\,
	datad => \U_START_FRAME|done~2_combout\,
	combout => \U_START_FRAME|done~3_combout\);

-- Location: LCCOMB_X40_Y15_N26
\U_START_FRAME|done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|done~0_combout\ = (\U_START_FRAME|done~8_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RST~input_o\,
	datad => \U_START_FRAME|done~8_combout\,
	combout => \U_START_FRAME|done~0_combout\);

-- Location: FF_X40_Y15_N9
\U_START_FRAME|done~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_START_FRAME|done~3_combout\,
	clrn => \U_START_FRAME|ALT_INV_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_START_FRAME|done~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N6
\U_START_FRAME|done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|done~2_combout\ = (\i_RST~input_o\ & ((\U_START_FRAME|done~8_combout\) # (\U_START_FRAME|done~1_combout\ $ (\U_START_FRAME|done~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_START_FRAME|done~1_combout\,
	datab => \U_START_FRAME|done~8_combout\,
	datac => \U_START_FRAME|done~_emulated_q\,
	datad => \i_RST~input_o\,
	combout => \U_START_FRAME|done~2_combout\);

-- Location: LCCOMB_X39_Y15_N16
\U_START_FRAME|o_CTRL_START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|o_CTRL_START~0_combout\ = (\U_START_FRAME|o_CTRL_START~q\) # (\U_START_FRAME|done~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_START_FRAME|o_CTRL_START~q\,
	datad => \U_START_FRAME|done~2_combout\,
	combout => \U_START_FRAME|o_CTRL_START~0_combout\);

-- Location: LCCOMB_X39_Y15_N12
\U_START_FRAME|o_CTRL_START~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_START_FRAME|o_CTRL_START~1_combout\ = (!\U_STM_MASTER|o_ENABLE_START~combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datad => \U_STM_MASTER|o_ENABLE_START~combout\,
	combout => \U_START_FRAME|o_CTRL_START~1_combout\);

-- Location: FF_X39_Y15_N17
\U_START_FRAME|o_CTRL_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_START_FRAME|o_CTRL_START~0_combout\,
	clrn => \U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_START_FRAME|o_CTRL_START~q\);

-- Location: LCCOMB_X40_Y15_N10
\U_STM_MASTER|o_ENABLE_P2S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_ENABLE_P2S~combout\ = (\i_RST~input_o\ & ((\U_STM_MASTER|state.st_SND_DATA~q\ & ((!\U_P2S|o_CTRL_P2S~q\))) # (!\U_STM_MASTER|state.st_SND_DATA~q\ & (\U_STM_MASTER|o_ENABLE_P2S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datab => \U_STM_MASTER|state.st_SND_DATA~q\,
	datac => \U_P2S|o_CTRL_P2S~q\,
	datad => \i_RST~input_o\,
	combout => \U_STM_MASTER|o_ENABLE_P2S~combout\);

-- Location: LCCOMB_X39_Y20_N6
\U_P2S|cont~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~13_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~62_combout\,
	combout => \U_P2S|cont~13_combout\);

-- Location: LCCOMB_X37_Y21_N28
\U_P2S|cont[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[0]~1_combout\ = (\i_RST~input_o\ & ((\U_P2S|cont[31]~40_combout\) # (\U_P2S|cont[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datac => \U_P2S|cont[31]~40_combout\,
	datad => \U_P2S|cont[0]~1_combout\,
	combout => \U_P2S|cont[0]~1_combout\);

-- Location: LCCOMB_X38_Y21_N0
\U_P2S|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~0_combout\ = \U_P2S|cont[0]~2_combout\ $ (VCC)
-- \U_P2S|Add0~1\ = CARRY(\U_P2S|cont[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont[0]~2_combout\,
	datad => VCC,
	combout => \U_P2S|Add0~0_combout\,
	cout => \U_P2S|Add0~1\);

-- Location: LCCOMB_X36_Y20_N4
\U_P2S|cont[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[0]~3_combout\ = \U_P2S|cont[0]~1_combout\ $ (((\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont[0]~1_combout\,
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~0_combout\,
	combout => \U_P2S|cont[0]~3_combout\);

-- Location: LCCOMB_X36_Y20_N16
\U_P2S|cont[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[0]~0_combout\ = (\U_P2S|cont[31]~40_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datad => \U_P2S|cont[31]~40_combout\,
	combout => \U_P2S|cont[0]~0_combout\);

-- Location: FF_X36_Y20_N17
\U_P2S|cont[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U_P2S|cont[0]~3_combout\,
	clrn => \U_P2S|ALT_INV_cont[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont[0]~_emulated_q\);

-- Location: LCCOMB_X37_Y21_N6
\U_P2S|cont[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[0]~2_combout\ = (\i_RST~input_o\ & ((\U_P2S|cont[31]~40_combout\) # (\U_P2S|cont[0]~1_combout\ $ (\U_P2S|cont[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont[31]~40_combout\,
	datab => \U_P2S|cont[0]~1_combout\,
	datac => \U_P2S|cont[0]~_emulated_q\,
	datad => \i_RST~input_o\,
	combout => \U_P2S|cont[0]~2_combout\);

-- Location: LCCOMB_X38_Y21_N2
\U_P2S|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~2_combout\ = (\U_P2S|cont\(1) & (!\U_P2S|Add0~1\)) # (!\U_P2S|cont\(1) & ((\U_P2S|Add0~1\) # (GND)))
-- \U_P2S|Add0~3\ = CARRY((!\U_P2S|Add0~1\) # (!\U_P2S|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(1),
	datad => VCC,
	cin => \U_P2S|Add0~1\,
	combout => \U_P2S|Add0~2_combout\,
	cout => \U_P2S|Add0~3\);

-- Location: LCCOMB_X36_Y20_N22
\U_P2S|cont~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~39_combout\ = (\U_P2S|Add0~2_combout\ & \U_STM_MASTER|o_ENABLE_P2S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~2_combout\,
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	combout => \U_P2S|cont~39_combout\);

-- Location: FF_X36_Y20_N23
\U_P2S|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~39_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(1));

-- Location: LCCOMB_X38_Y21_N4
\U_P2S|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~4_combout\ = (\U_P2S|cont\(2) & (\U_P2S|Add0~3\ $ (GND))) # (!\U_P2S|cont\(2) & (!\U_P2S|Add0~3\ & VCC))
-- \U_P2S|Add0~5\ = CARRY((\U_P2S|cont\(2) & !\U_P2S|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(2),
	datad => VCC,
	cin => \U_P2S|Add0~3\,
	combout => \U_P2S|Add0~4_combout\,
	cout => \U_P2S|Add0~5\);

-- Location: LCCOMB_X36_Y20_N24
\U_P2S|cont~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~38_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~4_combout\,
	combout => \U_P2S|cont~38_combout\);

-- Location: FF_X36_Y20_N25
\U_P2S|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~38_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(2));

-- Location: LCCOMB_X38_Y21_N6
\U_P2S|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~6_combout\ = (\U_P2S|cont\(3) & (!\U_P2S|Add0~5\)) # (!\U_P2S|cont\(3) & ((\U_P2S|Add0~5\) # (GND)))
-- \U_P2S|Add0~7\ = CARRY((!\U_P2S|Add0~5\) # (!\U_P2S|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(3),
	datad => VCC,
	cin => \U_P2S|Add0~5\,
	combout => \U_P2S|Add0~6_combout\,
	cout => \U_P2S|Add0~7\);

-- Location: LCCOMB_X36_Y20_N8
\U_P2S|cont~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~37_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~6_combout\,
	combout => \U_P2S|cont~37_combout\);

-- Location: FF_X36_Y20_N9
\U_P2S|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~37_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(3));

-- Location: LCCOMB_X38_Y21_N8
\U_P2S|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~8_combout\ = (\U_P2S|cont\(4) & (\U_P2S|Add0~7\ $ (GND))) # (!\U_P2S|cont\(4) & (!\U_P2S|Add0~7\ & VCC))
-- \U_P2S|Add0~9\ = CARRY((\U_P2S|cont\(4) & !\U_P2S|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(4),
	datad => VCC,
	cin => \U_P2S|Add0~7\,
	combout => \U_P2S|Add0~8_combout\,
	cout => \U_P2S|Add0~9\);

-- Location: LCCOMB_X40_Y20_N6
\U_P2S|cont~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~36_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~8_combout\,
	combout => \U_P2S|cont~36_combout\);

-- Location: FF_X40_Y20_N7
\U_P2S|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~36_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(4));

-- Location: LCCOMB_X36_Y20_N12
\U_P2S|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~8_combout\ = (!\U_P2S|cont\(1) & (!\U_P2S|cont\(4) & (!\U_P2S|cont\(3) & !\U_P2S|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(1),
	datab => \U_P2S|cont\(4),
	datac => \U_P2S|cont\(3),
	datad => \U_P2S|cont\(2),
	combout => \U_P2S|process_0~8_combout\);

-- Location: LCCOMB_X38_Y21_N10
\U_P2S|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~10_combout\ = (\U_P2S|cont\(5) & (!\U_P2S|Add0~9\)) # (!\U_P2S|cont\(5) & ((\U_P2S|Add0~9\) # (GND)))
-- \U_P2S|Add0~11\ = CARRY((!\U_P2S|Add0~9\) # (!\U_P2S|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(5),
	datad => VCC,
	cin => \U_P2S|Add0~9\,
	combout => \U_P2S|Add0~10_combout\,
	cout => \U_P2S|Add0~11\);

-- Location: LCCOMB_X40_Y20_N20
\U_P2S|cont~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~35_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~10_combout\,
	combout => \U_P2S|cont~35_combout\);

-- Location: FF_X40_Y20_N21
\U_P2S|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~35_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(5));

-- Location: LCCOMB_X38_Y21_N12
\U_P2S|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~12_combout\ = (\U_P2S|cont\(6) & (\U_P2S|Add0~11\ $ (GND))) # (!\U_P2S|cont\(6) & (!\U_P2S|Add0~11\ & VCC))
-- \U_P2S|Add0~13\ = CARRY((\U_P2S|cont\(6) & !\U_P2S|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(6),
	datad => VCC,
	cin => \U_P2S|Add0~11\,
	combout => \U_P2S|Add0~12_combout\,
	cout => \U_P2S|Add0~13\);

-- Location: LCCOMB_X40_Y20_N16
\U_P2S|cont~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~34_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~12_combout\,
	combout => \U_P2S|cont~34_combout\);

-- Location: FF_X40_Y20_N17
\U_P2S|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~34_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(6));

-- Location: LCCOMB_X38_Y21_N14
\U_P2S|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~14_combout\ = (\U_P2S|cont\(7) & (!\U_P2S|Add0~13\)) # (!\U_P2S|cont\(7) & ((\U_P2S|Add0~13\) # (GND)))
-- \U_P2S|Add0~15\ = CARRY((!\U_P2S|Add0~13\) # (!\U_P2S|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(7),
	datad => VCC,
	cin => \U_P2S|Add0~13\,
	combout => \U_P2S|Add0~14_combout\,
	cout => \U_P2S|Add0~15\);

-- Location: LCCOMB_X40_Y20_N24
\U_P2S|cont~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~33_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~14_combout\,
	combout => \U_P2S|cont~33_combout\);

-- Location: FF_X40_Y20_N25
\U_P2S|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~33_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(7));

-- Location: LCCOMB_X38_Y21_N16
\U_P2S|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~16_combout\ = (\U_P2S|cont\(8) & (\U_P2S|Add0~15\ $ (GND))) # (!\U_P2S|cont\(8) & (!\U_P2S|Add0~15\ & VCC))
-- \U_P2S|Add0~17\ = CARRY((\U_P2S|cont\(8) & !\U_P2S|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(8),
	datad => VCC,
	cin => \U_P2S|Add0~15\,
	combout => \U_P2S|Add0~16_combout\,
	cout => \U_P2S|Add0~17\);

-- Location: LCCOMB_X40_Y20_N12
\U_P2S|cont~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~32_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~16_combout\,
	combout => \U_P2S|cont~32_combout\);

-- Location: FF_X40_Y20_N13
\U_P2S|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~32_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(8));

-- Location: LCCOMB_X38_Y21_N18
\U_P2S|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~18_combout\ = (\U_P2S|cont\(9) & (!\U_P2S|Add0~17\)) # (!\U_P2S|cont\(9) & ((\U_P2S|Add0~17\) # (GND)))
-- \U_P2S|Add0~19\ = CARRY((!\U_P2S|Add0~17\) # (!\U_P2S|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(9),
	datad => VCC,
	cin => \U_P2S|Add0~17\,
	combout => \U_P2S|Add0~18_combout\,
	cout => \U_P2S|Add0~19\);

-- Location: LCCOMB_X40_Y20_N10
\U_P2S|cont~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~31_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~18_combout\,
	combout => \U_P2S|cont~31_combout\);

-- Location: FF_X40_Y20_N11
\U_P2S|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~31_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(9));

-- Location: LCCOMB_X38_Y21_N20
\U_P2S|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~20_combout\ = (\U_P2S|cont\(10) & (\U_P2S|Add0~19\ $ (GND))) # (!\U_P2S|cont\(10) & (!\U_P2S|Add0~19\ & VCC))
-- \U_P2S|Add0~21\ = CARRY((\U_P2S|cont\(10) & !\U_P2S|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(10),
	datad => VCC,
	cin => \U_P2S|Add0~19\,
	combout => \U_P2S|Add0~20_combout\,
	cout => \U_P2S|Add0~21\);

-- Location: LCCOMB_X36_Y20_N14
\U_P2S|cont~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~30_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~20_combout\,
	combout => \U_P2S|cont~30_combout\);

-- Location: FF_X36_Y20_N15
\U_P2S|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~30_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(10));

-- Location: LCCOMB_X38_Y21_N22
\U_P2S|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~22_combout\ = (\U_P2S|cont\(11) & (!\U_P2S|Add0~21\)) # (!\U_P2S|cont\(11) & ((\U_P2S|Add0~21\) # (GND)))
-- \U_P2S|Add0~23\ = CARRY((!\U_P2S|Add0~21\) # (!\U_P2S|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(11),
	datad => VCC,
	cin => \U_P2S|Add0~21\,
	combout => \U_P2S|Add0~22_combout\,
	cout => \U_P2S|Add0~23\);

-- Location: LCCOMB_X40_Y20_N28
\U_P2S|cont~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~29_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~22_combout\,
	combout => \U_P2S|cont~29_combout\);

-- Location: FF_X40_Y20_N29
\U_P2S|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~29_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(11));

-- Location: LCCOMB_X38_Y21_N24
\U_P2S|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~24_combout\ = (\U_P2S|cont\(12) & (\U_P2S|Add0~23\ $ (GND))) # (!\U_P2S|cont\(12) & (!\U_P2S|Add0~23\ & VCC))
-- \U_P2S|Add0~25\ = CARRY((\U_P2S|cont\(12) & !\U_P2S|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(12),
	datad => VCC,
	cin => \U_P2S|Add0~23\,
	combout => \U_P2S|Add0~24_combout\,
	cout => \U_P2S|Add0~25\);

-- Location: LCCOMB_X40_Y20_N14
\U_P2S|cont~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~28_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~24_combout\,
	combout => \U_P2S|cont~28_combout\);

-- Location: FF_X40_Y20_N15
\U_P2S|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~28_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(12));

-- Location: LCCOMB_X36_Y20_N20
\U_P2S|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~6_combout\ = (!\U_P2S|cont\(12) & (!\U_P2S|cont\(9) & (!\U_P2S|cont\(10) & !\U_P2S|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(12),
	datab => \U_P2S|cont\(9),
	datac => \U_P2S|cont\(10),
	datad => \U_P2S|cont\(11),
	combout => \U_P2S|process_0~6_combout\);

-- Location: LCCOMB_X36_Y20_N26
\U_P2S|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~7_combout\ = (!\U_P2S|cont\(7) & (!\U_P2S|cont\(8) & (!\U_P2S|cont\(5) & !\U_P2S|cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(7),
	datab => \U_P2S|cont\(8),
	datac => \U_P2S|cont\(5),
	datad => \U_P2S|cont\(6),
	combout => \U_P2S|process_0~7_combout\);

-- Location: LCCOMB_X38_Y21_N26
\U_P2S|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~26_combout\ = (\U_P2S|cont\(13) & (!\U_P2S|Add0~25\)) # (!\U_P2S|cont\(13) & ((\U_P2S|Add0~25\) # (GND)))
-- \U_P2S|Add0~27\ = CARRY((!\U_P2S|Add0~25\) # (!\U_P2S|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(13),
	datad => VCC,
	cin => \U_P2S|Add0~25\,
	combout => \U_P2S|Add0~26_combout\,
	cout => \U_P2S|Add0~27\);

-- Location: LCCOMB_X36_Y20_N18
\U_P2S|cont~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~27_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~26_combout\,
	combout => \U_P2S|cont~27_combout\);

-- Location: FF_X36_Y20_N19
\U_P2S|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~27_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(13));

-- Location: LCCOMB_X38_Y21_N28
\U_P2S|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~28_combout\ = (\U_P2S|cont\(14) & (\U_P2S|Add0~27\ $ (GND))) # (!\U_P2S|cont\(14) & (!\U_P2S|Add0~27\ & VCC))
-- \U_P2S|Add0~29\ = CARRY((\U_P2S|cont\(14) & !\U_P2S|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(14),
	datad => VCC,
	cin => \U_P2S|Add0~27\,
	combout => \U_P2S|Add0~28_combout\,
	cout => \U_P2S|Add0~29\);

-- Location: LCCOMB_X40_Y20_N22
\U_P2S|cont~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~26_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~28_combout\,
	combout => \U_P2S|cont~26_combout\);

-- Location: FF_X40_Y20_N23
\U_P2S|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~26_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(14));

-- Location: LCCOMB_X38_Y21_N30
\U_P2S|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~30_combout\ = (\U_P2S|cont\(15) & (!\U_P2S|Add0~29\)) # (!\U_P2S|cont\(15) & ((\U_P2S|Add0~29\) # (GND)))
-- \U_P2S|Add0~31\ = CARRY((!\U_P2S|Add0~29\) # (!\U_P2S|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(15),
	datad => VCC,
	cin => \U_P2S|Add0~29\,
	combout => \U_P2S|Add0~30_combout\,
	cout => \U_P2S|Add0~31\);

-- Location: LCCOMB_X40_Y20_N2
\U_P2S|cont~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~25_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~30_combout\,
	combout => \U_P2S|cont~25_combout\);

-- Location: FF_X40_Y20_N3
\U_P2S|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~25_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(15));

-- Location: LCCOMB_X38_Y20_N0
\U_P2S|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~32_combout\ = (\U_P2S|cont\(16) & (\U_P2S|Add0~31\ $ (GND))) # (!\U_P2S|cont\(16) & (!\U_P2S|Add0~31\ & VCC))
-- \U_P2S|Add0~33\ = CARRY((\U_P2S|cont\(16) & !\U_P2S|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(16),
	datad => VCC,
	cin => \U_P2S|Add0~31\,
	combout => \U_P2S|Add0~32_combout\,
	cout => \U_P2S|Add0~33\);

-- Location: LCCOMB_X40_Y20_N4
\U_P2S|cont~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~24_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~32_combout\,
	combout => \U_P2S|cont~24_combout\);

-- Location: FF_X40_Y20_N5
\U_P2S|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~24_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(16));

-- Location: LCCOMB_X36_Y20_N28
\U_P2S|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~5_combout\ = (!\U_P2S|cont\(15) & (!\U_P2S|cont\(13) & (!\U_P2S|cont\(14) & !\U_P2S|cont\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(15),
	datab => \U_P2S|cont\(13),
	datac => \U_P2S|cont\(14),
	datad => \U_P2S|cont\(16),
	combout => \U_P2S|process_0~5_combout\);

-- Location: LCCOMB_X36_Y20_N30
\U_P2S|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~9_combout\ = (\U_P2S|process_0~8_combout\ & (\U_P2S|process_0~6_combout\ & (\U_P2S|process_0~7_combout\ & \U_P2S|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~8_combout\,
	datab => \U_P2S|process_0~6_combout\,
	datac => \U_P2S|process_0~7_combout\,
	datad => \U_P2S|process_0~5_combout\,
	combout => \U_P2S|process_0~9_combout\);

-- Location: LCCOMB_X38_Y20_N2
\U_P2S|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~34_combout\ = (\U_P2S|cont\(17) & (!\U_P2S|Add0~33\)) # (!\U_P2S|cont\(17) & ((\U_P2S|Add0~33\) # (GND)))
-- \U_P2S|Add0~35\ = CARRY((!\U_P2S|Add0~33\) # (!\U_P2S|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(17),
	datad => VCC,
	cin => \U_P2S|Add0~33\,
	combout => \U_P2S|Add0~34_combout\,
	cout => \U_P2S|Add0~35\);

-- Location: LCCOMB_X40_Y20_N30
\U_P2S|cont~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~23_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~34_combout\,
	combout => \U_P2S|cont~23_combout\);

-- Location: FF_X40_Y20_N31
\U_P2S|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~23_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(17));

-- Location: LCCOMB_X38_Y20_N4
\U_P2S|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~36_combout\ = (\U_P2S|cont\(18) & (\U_P2S|Add0~35\ $ (GND))) # (!\U_P2S|cont\(18) & (!\U_P2S|Add0~35\ & VCC))
-- \U_P2S|Add0~37\ = CARRY((\U_P2S|cont\(18) & !\U_P2S|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(18),
	datad => VCC,
	cin => \U_P2S|Add0~35\,
	combout => \U_P2S|Add0~36_combout\,
	cout => \U_P2S|Add0~37\);

-- Location: LCCOMB_X40_Y20_N18
\U_P2S|cont~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~22_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \U_P2S|Add0~36_combout\,
	combout => \U_P2S|cont~22_combout\);

-- Location: FF_X40_Y20_N19
\U_P2S|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~22_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(18));

-- Location: LCCOMB_X38_Y20_N6
\U_P2S|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~38_combout\ = (\U_P2S|cont\(19) & (!\U_P2S|Add0~37\)) # (!\U_P2S|cont\(19) & ((\U_P2S|Add0~37\) # (GND)))
-- \U_P2S|Add0~39\ = CARRY((!\U_P2S|Add0~37\) # (!\U_P2S|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(19),
	datad => VCC,
	cin => \U_P2S|Add0~37\,
	combout => \U_P2S|Add0~38_combout\,
	cout => \U_P2S|Add0~39\);

-- Location: LCCOMB_X40_Y20_N8
\U_P2S|cont~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~21_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~38_combout\,
	combout => \U_P2S|cont~21_combout\);

-- Location: FF_X40_Y20_N9
\U_P2S|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~21_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(19));

-- Location: LCCOMB_X38_Y20_N8
\U_P2S|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~40_combout\ = (\U_P2S|cont\(20) & (\U_P2S|Add0~39\ $ (GND))) # (!\U_P2S|cont\(20) & (!\U_P2S|Add0~39\ & VCC))
-- \U_P2S|Add0~41\ = CARRY((\U_P2S|cont\(20) & !\U_P2S|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(20),
	datad => VCC,
	cin => \U_P2S|Add0~39\,
	combout => \U_P2S|Add0~40_combout\,
	cout => \U_P2S|Add0~41\);

-- Location: LCCOMB_X39_Y20_N14
\U_P2S|cont~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~20_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~40_combout\,
	combout => \U_P2S|cont~20_combout\);

-- Location: FF_X39_Y20_N15
\U_P2S|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~20_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(20));

-- Location: LCCOMB_X38_Y20_N10
\U_P2S|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~42_combout\ = (\U_P2S|cont\(21) & (!\U_P2S|Add0~41\)) # (!\U_P2S|cont\(21) & ((\U_P2S|Add0~41\) # (GND)))
-- \U_P2S|Add0~43\ = CARRY((!\U_P2S|Add0~41\) # (!\U_P2S|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(21),
	datad => VCC,
	cin => \U_P2S|Add0~41\,
	combout => \U_P2S|Add0~42_combout\,
	cout => \U_P2S|Add0~43\);

-- Location: LCCOMB_X39_Y20_N26
\U_P2S|cont~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~12_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~42_combout\,
	combout => \U_P2S|cont~12_combout\);

-- Location: FF_X39_Y20_N27
\U_P2S|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~12_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(21));

-- Location: LCCOMB_X38_Y20_N12
\U_P2S|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~44_combout\ = (\U_P2S|cont\(22) & (\U_P2S|Add0~43\ $ (GND))) # (!\U_P2S|cont\(22) & (!\U_P2S|Add0~43\ & VCC))
-- \U_P2S|Add0~45\ = CARRY((\U_P2S|cont\(22) & !\U_P2S|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(22),
	datad => VCC,
	cin => \U_P2S|Add0~43\,
	combout => \U_P2S|Add0~44_combout\,
	cout => \U_P2S|Add0~45\);

-- Location: LCCOMB_X39_Y20_N10
\U_P2S|cont~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~11_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~44_combout\,
	combout => \U_P2S|cont~11_combout\);

-- Location: FF_X39_Y20_N11
\U_P2S|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~11_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(22));

-- Location: LCCOMB_X38_Y20_N14
\U_P2S|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~46_combout\ = (\U_P2S|cont\(23) & (!\U_P2S|Add0~45\)) # (!\U_P2S|cont\(23) & ((\U_P2S|Add0~45\) # (GND)))
-- \U_P2S|Add0~47\ = CARRY((!\U_P2S|Add0~45\) # (!\U_P2S|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(23),
	datad => VCC,
	cin => \U_P2S|Add0~45\,
	combout => \U_P2S|Add0~46_combout\,
	cout => \U_P2S|Add0~47\);

-- Location: LCCOMB_X39_Y20_N28
\U_P2S|cont~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~10_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~46_combout\,
	combout => \U_P2S|cont~10_combout\);

-- Location: FF_X39_Y20_N29
\U_P2S|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~10_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(23));

-- Location: LCCOMB_X38_Y20_N16
\U_P2S|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~48_combout\ = (\U_P2S|cont\(24) & (\U_P2S|Add0~47\ $ (GND))) # (!\U_P2S|cont\(24) & (!\U_P2S|Add0~47\ & VCC))
-- \U_P2S|Add0~49\ = CARRY((\U_P2S|cont\(24) & !\U_P2S|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(24),
	datad => VCC,
	cin => \U_P2S|Add0~47\,
	combout => \U_P2S|Add0~48_combout\,
	cout => \U_P2S|Add0~49\);

-- Location: LCCOMB_X39_Y20_N8
\U_P2S|cont~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~7_combout\ = (\U_P2S|Add0~48_combout\ & \U_STM_MASTER|o_ENABLE_P2S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|Add0~48_combout\,
	datad => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	combout => \U_P2S|cont~7_combout\);

-- Location: FF_X39_Y20_N9
\U_P2S|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~7_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(24));

-- Location: LCCOMB_X38_Y20_N18
\U_P2S|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~50_combout\ = (\U_P2S|cont\(25) & (!\U_P2S|Add0~49\)) # (!\U_P2S|cont\(25) & ((\U_P2S|Add0~49\) # (GND)))
-- \U_P2S|Add0~51\ = CARRY((!\U_P2S|Add0~49\) # (!\U_P2S|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(25),
	datad => VCC,
	cin => \U_P2S|Add0~49\,
	combout => \U_P2S|Add0~50_combout\,
	cout => \U_P2S|Add0~51\);

-- Location: LCCOMB_X39_Y20_N12
\U_P2S|cont~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~19_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~50_combout\,
	combout => \U_P2S|cont~19_combout\);

-- Location: FF_X39_Y20_N13
\U_P2S|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~19_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(25));

-- Location: LCCOMB_X38_Y20_N20
\U_P2S|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~52_combout\ = (\U_P2S|cont\(26) & (\U_P2S|Add0~51\ $ (GND))) # (!\U_P2S|cont\(26) & (!\U_P2S|Add0~51\ & VCC))
-- \U_P2S|Add0~53\ = CARRY((\U_P2S|cont\(26) & !\U_P2S|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(26),
	datad => VCC,
	cin => \U_P2S|Add0~51\,
	combout => \U_P2S|Add0~52_combout\,
	cout => \U_P2S|Add0~53\);

-- Location: LCCOMB_X39_Y20_N0
\U_P2S|cont~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~18_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~52_combout\,
	combout => \U_P2S|cont~18_combout\);

-- Location: FF_X39_Y20_N1
\U_P2S|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~18_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(26));

-- Location: LCCOMB_X38_Y20_N22
\U_P2S|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~54_combout\ = (\U_P2S|cont\(27) & (!\U_P2S|Add0~53\)) # (!\U_P2S|cont\(27) & ((\U_P2S|Add0~53\) # (GND)))
-- \U_P2S|Add0~55\ = CARRY((!\U_P2S|Add0~53\) # (!\U_P2S|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(27),
	datad => VCC,
	cin => \U_P2S|Add0~53\,
	combout => \U_P2S|Add0~54_combout\,
	cout => \U_P2S|Add0~55\);

-- Location: LCCOMB_X39_Y20_N4
\U_P2S|cont~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~17_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~54_combout\,
	combout => \U_P2S|cont~17_combout\);

-- Location: FF_X39_Y20_N5
\U_P2S|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~17_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(27));

-- Location: LCCOMB_X38_Y20_N24
\U_P2S|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~56_combout\ = (\U_P2S|cont\(28) & (\U_P2S|Add0~55\ $ (GND))) # (!\U_P2S|cont\(28) & (!\U_P2S|Add0~55\ & VCC))
-- \U_P2S|Add0~57\ = CARRY((\U_P2S|cont\(28) & !\U_P2S|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(28),
	datad => VCC,
	cin => \U_P2S|Add0~55\,
	combout => \U_P2S|Add0~56_combout\,
	cout => \U_P2S|Add0~57\);

-- Location: LCCOMB_X39_Y20_N30
\U_P2S|cont~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~16_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~56_combout\,
	combout => \U_P2S|cont~16_combout\);

-- Location: FF_X39_Y20_N31
\U_P2S|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~16_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(28));

-- Location: LCCOMB_X38_Y20_N26
\U_P2S|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~58_combout\ = (\U_P2S|cont\(29) & (!\U_P2S|Add0~57\)) # (!\U_P2S|cont\(29) & ((\U_P2S|Add0~57\) # (GND)))
-- \U_P2S|Add0~59\ = CARRY((!\U_P2S|Add0~57\) # (!\U_P2S|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(29),
	datad => VCC,
	cin => \U_P2S|Add0~57\,
	combout => \U_P2S|Add0~58_combout\,
	cout => \U_P2S|Add0~59\);

-- Location: LCCOMB_X39_Y20_N18
\U_P2S|cont~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~15_combout\ = (\U_P2S|Add0~58_combout\ & \U_STM_MASTER|o_ENABLE_P2S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|Add0~58_combout\,
	datad => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	combout => \U_P2S|cont~15_combout\);

-- Location: FF_X39_Y20_N19
\U_P2S|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~15_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(29));

-- Location: LCCOMB_X38_Y20_N28
\U_P2S|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~60_combout\ = (\U_P2S|cont\(30) & (\U_P2S|Add0~59\ $ (GND))) # (!\U_P2S|cont\(30) & (!\U_P2S|Add0~59\ & VCC))
-- \U_P2S|Add0~61\ = CARRY((\U_P2S|cont\(30) & !\U_P2S|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont\(30),
	datad => VCC,
	cin => \U_P2S|Add0~59\,
	combout => \U_P2S|Add0~60_combout\,
	cout => \U_P2S|Add0~61\);

-- Location: LCCOMB_X39_Y20_N22
\U_P2S|cont~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont~14_combout\ = (\U_STM_MASTER|o_ENABLE_P2S~combout\ & \U_P2S|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	datad => \U_P2S|Add0~60_combout\,
	combout => \U_P2S|cont~14_combout\);

-- Location: FF_X39_Y20_N23
\U_P2S|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~14_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(30));

-- Location: LCCOMB_X39_Y20_N24
\U_P2S|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~1_combout\ = (!\U_P2S|cont\(17) & (!\U_P2S|cont\(20) & (!\U_P2S|cont\(19) & !\U_P2S|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(17),
	datab => \U_P2S|cont\(20),
	datac => \U_P2S|cont\(19),
	datad => \U_P2S|cont\(18),
	combout => \U_P2S|process_0~1_combout\);

-- Location: LCCOMB_X39_Y20_N16
\U_P2S|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~2_combout\ = (!\U_P2S|cont\(25) & (!\U_P2S|cont\(26) & (!\U_P2S|cont\(27) & \U_P2S|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(25),
	datab => \U_P2S|cont\(26),
	datac => \U_P2S|cont\(27),
	datad => \U_P2S|process_0~1_combout\,
	combout => \U_P2S|process_0~2_combout\);

-- Location: LCCOMB_X39_Y20_N20
\U_P2S|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~3_combout\ = (!\U_P2S|cont\(28) & (!\U_P2S|cont\(29) & (!\U_P2S|cont\(30) & \U_P2S|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(28),
	datab => \U_P2S|cont\(29),
	datac => \U_P2S|cont\(30),
	datad => \U_P2S|process_0~2_combout\,
	combout => \U_P2S|process_0~3_combout\);

-- Location: LCCOMB_X39_Y20_N2
\U_P2S|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~0_combout\ = (!\U_P2S|cont\(21) & (!\U_P2S|cont\(23) & (!\U_P2S|cont\(24) & !\U_P2S|cont\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|cont\(21),
	datab => \U_P2S|cont\(23),
	datac => \U_P2S|cont\(24),
	datad => \U_P2S|cont\(22),
	combout => \U_P2S|process_0~0_combout\);

-- Location: LCCOMB_X40_Y15_N20
\U_P2S|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~4_combout\ = (\U_P2S|process_0~3_combout\ & (!\U_P2S|cont\(31) & (\U_P2S|process_0~0_combout\ & \U_STM_MASTER|o_ENABLE_P2S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~3_combout\,
	datab => \U_P2S|cont\(31),
	datac => \U_P2S|process_0~0_combout\,
	datad => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	combout => \U_P2S|process_0~4_combout\);

-- Location: LCCOMB_X40_Y15_N28
\U_P2S|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|process_0~10_combout\ = (!\U_P2S|cont[0]~2_combout\ & (\U_P2S|process_0~9_combout\ & \U_P2S|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|cont[0]~2_combout\,
	datac => \U_P2S|process_0~9_combout\,
	datad => \U_P2S|process_0~4_combout\,
	combout => \U_P2S|process_0~10_combout\);

-- Location: LCCOMB_X40_Y20_N26
\U_P2S|cont[31]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[31]~40_combout\ = (\U_P2S|process_0~10_combout\ & \i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|process_0~10_combout\,
	datad => \i_RST~input_o\,
	combout => \U_P2S|cont[31]~40_combout\);

-- Location: LCCOMB_X40_Y20_N0
\U_P2S|cont[31]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|cont[31]~9_combout\ = (\U_P2S|cont[31]~40_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RST~input_o\,
	datac => \U_P2S|cont[31]~40_combout\,
	combout => \U_P2S|cont[31]~9_combout\);

-- Location: FF_X39_Y20_N7
\U_P2S|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|cont~13_combout\,
	clrn => \U_P2S|ALT_INV_cont[31]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|cont\(31));

-- Location: LCCOMB_X38_Y20_N30
\U_P2S|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Add0~62_combout\ = \U_P2S|Add0~61\ $ (\U_P2S|cont\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_P2S|cont\(31),
	cin => \U_P2S|Add0~61\,
	combout => \U_P2S|Add0~62_combout\);

-- Location: LCCOMB_X37_Y20_N10
\U_P2S|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~5_combout\ = (!\U_P2S|Add0~36_combout\ & (!\U_P2S|Add0~32_combout\ & (!\U_P2S|Add0~34_combout\ & !\U_P2S|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~36_combout\,
	datab => \U_P2S|Add0~32_combout\,
	datac => \U_P2S|Add0~34_combout\,
	datad => \U_P2S|Add0~38_combout\,
	combout => \U_P2S|Equal1~5_combout\);

-- Location: LCCOMB_X37_Y20_N12
\U_P2S|o_CTRL_P2S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|o_CTRL_P2S~0_combout\ = (!\U_P2S|Add0~40_combout\ & (!\U_P2S|Add0~44_combout\ & (!\U_P2S|Add0~42_combout\ & \U_P2S|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~40_combout\,
	datab => \U_P2S|Add0~44_combout\,
	datac => \U_P2S|Add0~42_combout\,
	datad => \U_P2S|Equal1~5_combout\,
	combout => \U_P2S|o_CTRL_P2S~0_combout\);

-- Location: LCCOMB_X37_Y20_N22
\U_P2S|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~2_combout\ = (!\U_P2S|Add0~12_combout\ & (\U_P2S|Add0~8_combout\ & (!\U_P2S|Add0~10_combout\ & !\U_P2S|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~12_combout\,
	datab => \U_P2S|Add0~8_combout\,
	datac => \U_P2S|Add0~10_combout\,
	datad => \U_P2S|Add0~14_combout\,
	combout => \U_P2S|Equal1~2_combout\);

-- Location: LCCOMB_X37_Y21_N4
\U_P2S|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~3_combout\ = (!\U_P2S|Add0~2_combout\ & (\U_P2S|Add0~0_combout\ & (!\U_P2S|Add0~4_combout\ & !\U_P2S|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~2_combout\,
	datab => \U_P2S|Add0~0_combout\,
	datac => \U_P2S|Add0~4_combout\,
	datad => \U_P2S|Add0~6_combout\,
	combout => \U_P2S|Equal1~3_combout\);

-- Location: LCCOMB_X37_Y20_N4
\U_P2S|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~1_combout\ = (!\U_P2S|Add0~16_combout\ & (!\U_P2S|Add0~22_combout\ & (!\U_P2S|Add0~20_combout\ & !\U_P2S|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~16_combout\,
	datab => \U_P2S|Add0~22_combout\,
	datac => \U_P2S|Add0~20_combout\,
	datad => \U_P2S|Add0~18_combout\,
	combout => \U_P2S|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y20_N6
\U_P2S|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~0_combout\ = (!\U_P2S|Add0~26_combout\ & (!\U_P2S|Add0~30_combout\ & (!\U_P2S|Add0~24_combout\ & !\U_P2S|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~26_combout\,
	datab => \U_P2S|Add0~30_combout\,
	datac => \U_P2S|Add0~24_combout\,
	datad => \U_P2S|Add0~28_combout\,
	combout => \U_P2S|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y20_N8
\U_P2S|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|Equal1~4_combout\ = (\U_P2S|Equal1~2_combout\ & (\U_P2S|Equal1~3_combout\ & (\U_P2S|Equal1~1_combout\ & \U_P2S|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Equal1~2_combout\,
	datab => \U_P2S|Equal1~3_combout\,
	datac => \U_P2S|Equal1~1_combout\,
	datad => \U_P2S|Equal1~0_combout\,
	combout => \U_P2S|Equal1~4_combout\);

-- Location: LCCOMB_X37_Y20_N18
\U_P2S|o_CTRL_P2S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|o_CTRL_P2S~1_combout\ = (\U_P2S|Add0~46_combout\) # ((\U_P2S|Add0~48_combout\) # ((\U_P2S|Add0~52_combout\) # (\U_P2S|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~46_combout\,
	datab => \U_P2S|Add0~48_combout\,
	datac => \U_P2S|Add0~52_combout\,
	datad => \U_P2S|Add0~54_combout\,
	combout => \U_P2S|o_CTRL_P2S~1_combout\);

-- Location: LCCOMB_X37_Y20_N24
\U_P2S|o_CTRL_P2S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|o_CTRL_P2S~2_combout\ = (\U_P2S|o_CTRL_P2S~0_combout\ & (!\U_P2S|Add0~50_combout\ & (\U_P2S|Equal1~4_combout\ & !\U_P2S|o_CTRL_P2S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|o_CTRL_P2S~0_combout\,
	datab => \U_P2S|Add0~50_combout\,
	datac => \U_P2S|Equal1~4_combout\,
	datad => \U_P2S|o_CTRL_P2S~1_combout\,
	combout => \U_P2S|o_CTRL_P2S~2_combout\);

-- Location: LCCOMB_X37_Y20_N2
\U_P2S|o_CTRL_P2S~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|o_CTRL_P2S~3_combout\ = (!\U_P2S|Add0~56_combout\ & (!\U_P2S|Add0~58_combout\ & \U_P2S|o_CTRL_P2S~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|Add0~56_combout\,
	datac => \U_P2S|Add0~58_combout\,
	datad => \U_P2S|o_CTRL_P2S~2_combout\,
	combout => \U_P2S|o_CTRL_P2S~3_combout\);

-- Location: LCCOMB_X37_Y20_N28
\U_P2S|o_CTRL_P2S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|o_CTRL_P2S~4_combout\ = (\U_P2S|o_CTRL_P2S~q\) # ((!\U_P2S|Add0~62_combout\ & (!\U_P2S|Add0~60_combout\ & \U_P2S|o_CTRL_P2S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|Add0~62_combout\,
	datab => \U_P2S|Add0~60_combout\,
	datac => \U_P2S|o_CTRL_P2S~q\,
	datad => \U_P2S|o_CTRL_P2S~3_combout\,
	combout => \U_P2S|o_CTRL_P2S~4_combout\);

-- Location: FF_X37_Y20_N29
\U_P2S|o_CTRL_P2S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|o_CTRL_P2S~4_combout\,
	clrn => \i_RST~input_o\,
	sclr => \U_STM_MASTER|ALT_INV_o_ENABLE_P2S~combout\,
	ena => \U_P2S|ALT_INV_process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|o_CTRL_P2S~q\);

-- Location: LCCOMB_X40_Y15_N12
\U_STM_MASTER|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~16_combout\ = (\U_START_FRAME|o_CTRL_START~q\ & (!\U_STM_MASTER|state.st_START_COM~q\ & ((!\U_STM_MASTER|state.st_SND_DATA~q\) # (!\U_P2S|o_CTRL_P2S~q\)))) # (!\U_START_FRAME|o_CTRL_START~q\ & (((!\U_STM_MASTER|state.st_SND_DATA~q\)) # 
-- (!\U_P2S|o_CTRL_P2S~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_START_FRAME|o_CTRL_START~q\,
	datab => \U_P2S|o_CTRL_P2S~q\,
	datac => \U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_STM_MASTER|state~16_combout\);

-- Location: LCCOMB_X39_Y19_N2
\U_STM_MASTER|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~23_combout\ = (\U_STM_MASTER|state.st_IDLE~2_combout\ & (\U_STM_MASTER|state~16_combout\ & (!\U_STM_MASTER|Selector1~4_combout\ & !\U_STM_MASTER|state.st_READ_SW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_IDLE~2_combout\,
	datab => \U_STM_MASTER|state~16_combout\,
	datac => \U_STM_MASTER|Selector1~4_combout\,
	datad => \U_STM_MASTER|state.st_READ_SW~q\,
	combout => \U_STM_MASTER|state~23_combout\);

-- Location: LCCOMB_X39_Y19_N8
\U_STM_MASTER|state.st_READ_SW~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state.st_READ_SW~feeder_combout\ = \U_STM_MASTER|state~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|state~23_combout\,
	combout => \U_STM_MASTER|state.st_READ_SW~feeder_combout\);

-- Location: FF_X39_Y19_N9
\U_STM_MASTER|state.st_READ_SW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_MASTER|state.st_READ_SW~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_MASTER|state.st_READ_SW~q\);

-- Location: IOIBUF_X41_Y19_N1
\i_BT_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_B,
	o => \i_BT_B~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\i_BT_C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_C,
	o => \i_BT_C~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\i_BT_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_A,
	o => \i_BT_A~input_o\);

-- Location: LCCOMB_X39_Y19_N14
\U_STM_MASTER|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|process_0~0_combout\ = (\i_BT_A~input_o\ & (\i_BT_C~input_o\ & \i_BT_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_A~input_o\,
	datab => \i_BT_C~input_o\,
	datad => \i_BT_B~input_o\,
	combout => \U_STM_MASTER|process_0~0_combout\);

-- Location: LCCOMB_X37_Y15_N10
\U_STM_MASTER|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~18_combout\ = (!\U_STM_MASTER|Selector1~0_combout\ & (\U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_STM_MASTER|state.st_IDLE~q\) # (!\U_STM_MASTER|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|process_0~0_combout\,
	datab => \U_STM_MASTER|Selector1~0_combout\,
	datac => \U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_STM_MASTER|state.st_IDLE~2_combout\,
	combout => \U_STM_MASTER|state~18_combout\);

-- Location: FF_X37_Y15_N11
\U_STM_MASTER|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_STM_MASTER|state~18_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_MASTER|state.st_IDLE~q\);

-- Location: LCCOMB_X39_Y19_N18
\U_STM_MASTER|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|Selector1~3_combout\ = (\U_STM_MASTER|state.st_IDLE~q\) # ((\i_BT_B~input_o\ & (\i_BT_C~input_o\ & \i_BT_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_B~input_o\,
	datab => \i_BT_C~input_o\,
	datac => \U_STM_MASTER|state.st_IDLE~q\,
	datad => \i_BT_A~input_o\,
	combout => \U_STM_MASTER|Selector1~3_combout\);

-- Location: LCCOMB_X39_Y19_N10
\U_STM_MASTER|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|Selector1~4_combout\ = (\U_STM_MASTER|Selector1~0_combout\) # ((!\U_STM_MASTER|state.st_READ_SW~q\ & (\U_STM_MASTER|state~16_combout\ & \U_STM_MASTER|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|Selector1~0_combout\,
	datab => \U_STM_MASTER|state.st_READ_SW~q\,
	datac => \U_STM_MASTER|state~16_combout\,
	datad => \U_STM_MASTER|Selector1~3_combout\,
	combout => \U_STM_MASTER|Selector1~4_combout\);

-- Location: LCCOMB_X39_Y19_N28
\U_STM_MASTER|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~21_combout\ = (\U_START_FRAME|o_CTRL_START~q\ & (\U_STM_MASTER|state.st_START_COM~q\ & !\U_STM_MASTER|Selector1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_START_FRAME|o_CTRL_START~q\,
	datac => \U_STM_MASTER|state.st_START_COM~q\,
	datad => \U_STM_MASTER|Selector1~4_combout\,
	combout => \U_STM_MASTER|state~21_combout\);

-- Location: LCCOMB_X40_Y15_N30
\U_STM_MASTER|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~22_combout\ = (\U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_STM_MASTER|state~21_combout\) # ((!\U_STM_MASTER|Selector1~2_combout\ & \U_STM_MASTER|state.st_SND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|Selector1~2_combout\,
	datab => \U_STM_MASTER|state.st_IDLE~2_combout\,
	datac => \U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_STM_MASTER|state~21_combout\,
	combout => \U_STM_MASTER|state~22_combout\);

-- Location: FF_X40_Y15_N5
\U_STM_MASTER|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \U_STM_MASTER|state~22_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_MASTER|state.st_SND_DATA~q\);

-- Location: LCCOMB_X39_Y19_N4
\U_STM_MASTER|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state.st_IDLE~0_combout\ = (!\U_STM_MASTER|state.st_READ_SW~q\ & ((\U_STM_MASTER|state.st_CLOSE_COM~q\ & (\U_STM_MASTER|state.st_IDLE~q\ & !\U_STM_MASTER|state.st_SND_DATA~q\)) # (!\U_STM_MASTER|state.st_CLOSE_COM~q\ & 
-- (\U_STM_MASTER|state.st_IDLE~q\ $ (!\U_STM_MASTER|state.st_SND_DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_READ_SW~q\,
	datab => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datac => \U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_STM_MASTER|state.st_SND_DATA~q\,
	combout => \U_STM_MASTER|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X39_Y19_N26
\U_STM_MASTER|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state.st_IDLE~1_combout\ = (!\U_STM_MASTER|state.st_CLOSE_COM~q\ & (\U_STM_MASTER|state.st_IDLE~q\ & (\U_STM_MASTER|state.st_READ_SW~q\ $ (\U_STM_MASTER|state.st_START_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_READ_SW~q\,
	datab => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datac => \U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_STM_MASTER|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X39_Y19_N20
\U_STM_MASTER|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state.st_IDLE~2_combout\ = (\U_STM_MASTER|state.st_START_COM~q\ & (!\U_STM_MASTER|state.st_SND_DATA~q\ & ((\U_STM_MASTER|state.st_IDLE~1_combout\)))) # (!\U_STM_MASTER|state.st_START_COM~q\ & ((\U_STM_MASTER|state.st_IDLE~0_combout\) # 
-- ((!\U_STM_MASTER|state.st_SND_DATA~q\ & \U_STM_MASTER|state.st_IDLE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_START_COM~q\,
	datab => \U_STM_MASTER|state.st_SND_DATA~q\,
	datac => \U_STM_MASTER|state.st_IDLE~0_combout\,
	datad => \U_STM_MASTER|state.st_IDLE~1_combout\,
	combout => \U_STM_MASTER|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X39_Y19_N0
\U_STM_MASTER|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~19_combout\ = (!\U_STM_MASTER|Selector1~4_combout\ & (\U_P2S|o_CTRL_P2S~q\ & \U_STM_MASTER|state.st_SND_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|Selector1~4_combout\,
	datab => \U_P2S|o_CTRL_P2S~q\,
	datad => \U_STM_MASTER|state.st_SND_DATA~q\,
	combout => \U_STM_MASTER|state~19_combout\);

-- Location: LCCOMB_X39_Y19_N30
\U_STM_MASTER|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~20_combout\ = (\U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_STM_MASTER|state~19_combout\) # ((\U_STM_MASTER|state.st_CLOSE_COM~q\ & !\U_STM_MASTER|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_IDLE~2_combout\,
	datab => \U_STM_MASTER|state~19_combout\,
	datac => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_STM_MASTER|Selector1~2_combout\,
	combout => \U_STM_MASTER|state~20_combout\);

-- Location: LCCOMB_X39_Y19_N24
\U_STM_MASTER|state.st_CLOSE_COM~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state.st_CLOSE_COM~feeder_combout\ = \U_STM_MASTER|state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|state~20_combout\,
	combout => \U_STM_MASTER|state.st_CLOSE_COM~feeder_combout\);

-- Location: FF_X39_Y19_N25
\U_STM_MASTER|state.st_CLOSE_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_MASTER|state.st_CLOSE_COM~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_MASTER|state.st_CLOSE_COM~q\);

-- Location: LCCOMB_X40_Y19_N18
\U_STOP_FRAME|o_CTRL_STOP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STOP_FRAME|o_CTRL_STOP~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_STOP_FRAME|o_CTRL_STOP~feeder_combout\);

-- Location: LCCOMB_X39_Y19_N6
\U_STM_MASTER|o_ENABLE_STOP\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_ENABLE_STOP~combout\ = (\i_RST~input_o\ & ((\U_STM_MASTER|state.st_CLOSE_COM~q\ & ((!\U_STOP_FRAME|o_CTRL_STOP~q\))) # (!\U_STM_MASTER|state.st_CLOSE_COM~q\ & (\U_STM_MASTER|o_ENABLE_STOP~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_ENABLE_STOP~combout\,
	datab => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datac => \i_RST~input_o\,
	datad => \U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_STM_MASTER|o_ENABLE_STOP~combout\);

-- Location: LCCOMB_X40_Y19_N0
\U_STOP_FRAME|o_CTRL_STOP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STOP_FRAME|o_CTRL_STOP~0_combout\ = (!\i_RST~input_o\) # (!\U_STM_MASTER|o_ENABLE_STOP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_MASTER|o_ENABLE_STOP~combout\,
	datad => \i_RST~input_o\,
	combout => \U_STOP_FRAME|o_CTRL_STOP~0_combout\);

-- Location: FF_X40_Y19_N19
\U_STOP_FRAME|o_CTRL_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_STOP_FRAME|o_CTRL_STOP~feeder_combout\,
	clrn => \U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STOP_FRAME|o_CTRL_STOP~q\);

-- Location: LCCOMB_X39_Y19_N12
\U_STM_MASTER|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|Selector1~0_combout\ = (\U_STM_MASTER|state.st_CLOSE_COM~q\ & \U_STOP_FRAME|o_CTRL_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_STM_MASTER|Selector1~0_combout\);

-- Location: LCCOMB_X40_Y15_N14
\U_STM_MASTER|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|Selector1~1_combout\ = (!\U_STM_MASTER|state.st_IDLE~q\ & (((!\i_BT_A~input_o\) # (!\i_BT_B~input_o\)) # (!\i_BT_C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_C~input_o\,
	datab => \i_BT_B~input_o\,
	datac => \U_STM_MASTER|state.st_IDLE~q\,
	datad => \i_BT_A~input_o\,
	combout => \U_STM_MASTER|Selector1~1_combout\);

-- Location: LCCOMB_X40_Y15_N16
\U_STM_MASTER|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|Selector1~2_combout\ = (\U_STM_MASTER|Selector1~0_combout\) # ((\U_STM_MASTER|state.st_READ_SW~q\) # ((\U_STM_MASTER|Selector1~1_combout\) # (!\U_STM_MASTER|state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|Selector1~0_combout\,
	datab => \U_STM_MASTER|state.st_READ_SW~q\,
	datac => \U_STM_MASTER|Selector1~1_combout\,
	datad => \U_STM_MASTER|state~16_combout\,
	combout => \U_STM_MASTER|Selector1~2_combout\);

-- Location: LCCOMB_X39_Y19_N16
\U_STM_MASTER|state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~24_combout\ = (\U_STM_MASTER|state.st_READ_SW~q\ & ((!\U_STOP_FRAME|o_CTRL_STOP~q\) # (!\U_STM_MASTER|state.st_CLOSE_COM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|state.st_READ_SW~q\,
	datab => \U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_STM_MASTER|state~24_combout\);

-- Location: LCCOMB_X40_Y15_N24
\U_STM_MASTER|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|state~17_combout\ = (\U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_STM_MASTER|state~24_combout\) # ((!\U_STM_MASTER|Selector1~2_combout\ & \U_STM_MASTER|state.st_START_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|Selector1~2_combout\,
	datab => \U_STM_MASTER|state~24_combout\,
	datac => \U_STM_MASTER|state.st_START_COM~q\,
	datad => \U_STM_MASTER|state.st_IDLE~2_combout\,
	combout => \U_STM_MASTER|state~17_combout\);

-- Location: FF_X40_Y15_N23
\U_STM_MASTER|state.st_START_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \U_STM_MASTER|state~17_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_MASTER|state.st_START_COM~q\);

-- Location: LCCOMB_X38_Y19_N28
\U_STM_MASTER|o_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_STM_MASTER|state.st_START_COM~q\) # (\U_STM_MASTER|o_ENABLE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|state.st_START_COM~q\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|o_ENABLE~combout\,
	combout => \U_STM_MASTER|o_ENABLE~combout\);

-- Location: CLKCTRL_G4
\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y21_N2
\U_REG_SCL|o_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_SCL|o_Q~0_combout\ = ((GLOBAL(\U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)) # (!\i_RST~input_o\)) # (!\U_STM_MASTER|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE~combout\,
	datac => \i_RST~input_o\,
	datad => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	combout => \U_REG_SCL|o_Q~0_combout\);

-- Location: FF_X40_Y21_N17
\U_REG_SCL|o_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \U_REG_SCL|o_Q~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_SCL|o_Q~q\);

-- Location: LCCOMB_X40_Y19_N4
\U_STOP_FRAME|o_SDA~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STOP_FRAME|o_SDA~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_STOP_FRAME|o_SDA~reg0feeder_combout\);

-- Location: FF_X40_Y19_N5
\U_STOP_FRAME|o_SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_STOP_FRAME|o_SDA~reg0feeder_combout\,
	clrn => \U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STOP_FRAME|o_SDA~reg0_q\);

-- Location: LCCOMB_X40_Y15_N4
\U_STM_MASTER|o_DATA[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[10]~0_combout\ = (\i_BT_B~input_o\ & \i_BT_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BT_B~input_o\,
	datad => \i_BT_A~input_o\,
	combout => \U_STM_MASTER|o_DATA[10]~0_combout\);

-- Location: CLKCTRL_G9
\U_STM_MASTER|Selector1~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_STM_MASTER|Selector1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_STM_MASTER|Selector1~1clkctrl_outclk\);

-- Location: LCCOMB_X39_Y15_N18
\U_STM_MASTER|o_DATA[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[10]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|Selector1~1clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[10]~0_combout\)) # (!GLOBAL(\U_STM_MASTER|Selector1~1clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_MASTER|o_DATA[10]~0_combout\,
	datac => \U_STM_MASTER|o_DATA[10]$latch~combout\,
	datad => \U_STM_MASTER|Selector1~1clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[10]$latch~combout\);

-- Location: CLKCTRL_G7
\U_P2S|process_0~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_P2S|process_0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_P2S|process_0~10clkctrl_outclk\);

-- Location: LCCOMB_X39_Y15_N8
\U_P2S|w_REG[11]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[11]~17_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[10]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[10]$latch~combout\,
	datac => \U_P2S|w_REG[11]~17_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[11]~17_combout\);

-- Location: LCCOMB_X40_Y15_N2
\U_STM_MASTER|o_DATA[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[9]~1_combout\ = (\i_BT_B~input_o\) # (!\i_BT_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BT_B~input_o\,
	datad => \i_BT_A~input_o\,
	combout => \U_STM_MASTER|o_DATA[9]~1_combout\);

-- Location: LCCOMB_X39_Y15_N30
\U_STM_MASTER|o_DATA[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[9]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|Selector1~1clkctrl_outclk\) & (!\U_STM_MASTER|o_DATA[9]~1_combout\)) # (!GLOBAL(\U_STM_MASTER|Selector1~1clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_MASTER|o_DATA[9]~1_combout\,
	datac => \U_STM_MASTER|o_DATA[9]$latch~combout\,
	datad => \U_STM_MASTER|Selector1~1clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[9]$latch~combout\);

-- Location: LCCOMB_X39_Y15_N24
\U_P2S|w_REG[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[10]~21_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[9]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[10]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[9]$latch~combout\,
	datab => \U_P2S|w_REG[10]~21_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[10]~21_combout\);

-- Location: IOIBUF_X41_Y18_N22
\i_DATA_SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(7),
	o => \i_DATA_SW[7]~input_o\);

-- Location: CLKCTRL_G8
\U_STM_MASTER|state.st_READ_SW~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y18_N18
\U_STM_MASTER|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[7]~input_o\)) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[7]~input_o\,
	datab => \U_STM_MASTER|o_DATA[7]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X40_Y18_N8
\U_P2S|w_REG[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[8]~25_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[8]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[7]$latch~combout\,
	datab => \U_P2S|w_REG[8]~25_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[8]~25_combout\);

-- Location: IOIBUF_X41_Y17_N8
\i_DATA_SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(6),
	o => \i_DATA_SW[6]~input_o\);

-- Location: LCCOMB_X40_Y18_N6
\U_STM_MASTER|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[6]~input_o\)) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[6]~input_o\,
	datab => \U_STM_MASTER|o_DATA[6]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X40_Y18_N4
\U_P2S|w_REG[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[7]~29_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[6]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[7]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[6]$latch~combout\,
	datac => \U_P2S|w_REG[7]~29_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[7]~29_combout\);

-- Location: IOIBUF_X41_Y18_N8
\i_DATA_SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(5),
	o => \i_DATA_SW[5]~input_o\);

-- Location: LCCOMB_X40_Y18_N22
\U_STM_MASTER|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[5]~input_o\))) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[5]$latch~combout\,
	datab => \i_DATA_SW[5]~input_o\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X40_Y18_N24
\U_P2S|w_REG[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[6]~33_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[5]$latch~combout\))) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_P2S|w_REG[6]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|w_REG[6]~33_combout\,
	datac => \U_STM_MASTER|o_DATA[5]$latch~combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[6]~33_combout\);

-- Location: IOIBUF_X41_Y18_N15
\i_DATA_SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(4),
	o => \i_DATA_SW[4]~input_o\);

-- Location: LCCOMB_X39_Y18_N2
\U_STM_MASTER|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[4]~input_o\)) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[4]~input_o\,
	datab => \U_STM_MASTER|o_DATA[4]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X39_Y18_N8
\U_P2S|w_REG[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[5]~37_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[5]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[4]$latch~combout\,
	datac => \U_P2S|w_REG[5]~37_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[5]~37_combout\);

-- Location: IOIBUF_X41_Y20_N15
\i_DATA_SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(3),
	o => \i_DATA_SW[3]~input_o\);

-- Location: LCCOMB_X39_Y18_N14
\U_STM_MASTER|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[3]~input_o\)) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[3]~input_o\,
	datab => \U_STM_MASTER|o_DATA[3]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X39_Y18_N20
\U_P2S|w_REG[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[4]~41_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[3]$latch~combout\))) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_P2S|w_REG[4]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|w_REG[4]~41_combout\,
	datac => \U_STM_MASTER|o_DATA[3]$latch~combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[4]~41_combout\);

-- Location: IOIBUF_X41_Y20_N8
\i_DATA_SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(2),
	o => \i_DATA_SW[2]~input_o\);

-- Location: LCCOMB_X39_Y18_N6
\U_STM_MASTER|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[2]~input_o\))) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[2]$latch~combout\,
	datab => \i_DATA_SW[2]~input_o\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X39_Y18_N12
\U_P2S|w_REG[3]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[3]~45_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[2]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[2]$latch~combout\,
	datac => \U_P2S|w_REG[3]~45_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[3]~45_combout\);

-- Location: IOIBUF_X41_Y24_N8
\i_DATA_SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(1),
	o => \i_DATA_SW[1]~input_o\);

-- Location: LCCOMB_X39_Y18_N10
\U_STM_MASTER|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[1]~input_o\))) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[1]$latch~combout\,
	datab => \i_DATA_SW[1]~input_o\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X39_Y18_N4
\U_P2S|w_REG[2]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[2]~49_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[1]$latch~combout\)) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_P2S|w_REG[2]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_DATA[1]$latch~combout\,
	datac => \U_P2S|w_REG[2]~49_combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[2]~49_combout\);

-- Location: IOIBUF_X41_Y18_N1
\i_DATA_SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(0),
	o => \i_DATA_SW[0]~input_o\);

-- Location: LCCOMB_X40_Y18_N26
\U_STM_MASTER|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_MASTER|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[0]~input_o\))) # (!GLOBAL(\U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\U_STM_MASTER|o_DATA[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_MASTER|o_DATA[0]$latch~combout\,
	datab => \i_DATA_SW[0]~input_o\,
	datac => \i_RST~input_o\,
	datad => \U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_STM_MASTER|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X40_Y18_N0
\U_P2S|w_REG[1]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[1]~53_combout\ = (GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & ((\U_STM_MASTER|o_DATA[0]$latch~combout\))) # (!GLOBAL(\U_P2S|process_0~10clkctrl_outclk\) & (\U_P2S|w_REG[1]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|w_REG[1]~53_combout\,
	datac => \U_STM_MASTER|o_DATA[0]$latch~combout\,
	datad => \U_P2S|process_0~10clkctrl_outclk\,
	combout => \U_P2S|w_REG[1]~53_combout\);

-- Location: LCCOMB_X40_Y18_N28
\U_P2S|w_REG[1]~_emulatedfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[1]~_emulatedfeeder_combout\ = \U_P2S|w_REG[1]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[1]~53_combout\,
	combout => \U_P2S|w_REG[1]~_emulatedfeeder_combout\);

-- Location: FF_X40_Y18_N29
\U_P2S|w_REG[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[1]~_emulatedfeeder_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[1]~_emulated_q\);

-- Location: LCCOMB_X40_Y18_N10
\U_P2S|w_REG[1]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[1]~54_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[0]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[1]~_emulated_q\ $ (((\U_P2S|w_REG[1]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[1]~_emulated_q\,
	datac => \U_STM_MASTER|o_DATA[0]$latch~combout\,
	datad => \U_P2S|w_REG[1]~53_combout\,
	combout => \U_P2S|w_REG[1]~54_combout\);

-- Location: LCCOMB_X40_Y18_N14
\U_P2S|w_REG[2]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[2]~51_combout\ = \U_P2S|w_REG[2]~49_combout\ $ (\U_P2S|w_REG[1]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[2]~49_combout\,
	datad => \U_P2S|w_REG[1]~54_combout\,
	combout => \U_P2S|w_REG[2]~51_combout\);

-- Location: FF_X40_Y18_N15
\U_P2S|w_REG[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[2]~51_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[2]~_emulated_q\);

-- Location: LCCOMB_X39_Y18_N18
\U_P2S|w_REG[2]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[2]~50_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[1]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[2]~_emulated_q\ $ ((\U_P2S|w_REG[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|w_REG[2]~_emulated_q\,
	datab => \U_P2S|process_0~10_combout\,
	datac => \U_P2S|w_REG[2]~49_combout\,
	datad => \U_STM_MASTER|o_DATA[1]$latch~combout\,
	combout => \U_P2S|w_REG[2]~50_combout\);

-- Location: LCCOMB_X39_Y18_N30
\U_P2S|w_REG[3]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[3]~47_combout\ = \U_P2S|w_REG[3]~45_combout\ $ (\U_P2S|w_REG[2]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[3]~45_combout\,
	datad => \U_P2S|w_REG[2]~50_combout\,
	combout => \U_P2S|w_REG[3]~47_combout\);

-- Location: FF_X39_Y18_N31
\U_P2S|w_REG[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[3]~47_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[3]~_emulated_q\);

-- Location: LCCOMB_X39_Y18_N24
\U_P2S|w_REG[3]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[3]~46_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[2]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[3]~45_combout\ $ ((\U_P2S|w_REG[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|w_REG[3]~45_combout\,
	datab => \U_P2S|process_0~10_combout\,
	datac => \U_P2S|w_REG[3]~_emulated_q\,
	datad => \U_STM_MASTER|o_DATA[2]$latch~combout\,
	combout => \U_P2S|w_REG[3]~46_combout\);

-- Location: LCCOMB_X39_Y18_N26
\U_P2S|w_REG[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[4]~43_combout\ = \U_P2S|w_REG[4]~41_combout\ $ (\U_P2S|w_REG[3]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_P2S|w_REG[4]~41_combout\,
	datad => \U_P2S|w_REG[3]~46_combout\,
	combout => \U_P2S|w_REG[4]~43_combout\);

-- Location: FF_X39_Y18_N27
\U_P2S|w_REG[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[4]~43_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[4]~_emulated_q\);

-- Location: LCCOMB_X39_Y18_N28
\U_P2S|w_REG[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[4]~42_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[3]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[4]~_emulated_q\ $ (((\U_P2S|w_REG[4]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[4]~_emulated_q\,
	datac => \U_STM_MASTER|o_DATA[3]$latch~combout\,
	datad => \U_P2S|w_REG[4]~41_combout\,
	combout => \U_P2S|w_REG[4]~42_combout\);

-- Location: LCCOMB_X39_Y18_N22
\U_P2S|w_REG[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[5]~39_combout\ = \U_P2S|w_REG[5]~37_combout\ $ (\U_P2S|w_REG[4]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|w_REG[5]~37_combout\,
	datad => \U_P2S|w_REG[4]~42_combout\,
	combout => \U_P2S|w_REG[5]~39_combout\);

-- Location: FF_X39_Y18_N23
\U_P2S|w_REG[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[5]~39_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[5]~_emulated_q\);

-- Location: LCCOMB_X39_Y18_N0
\U_P2S|w_REG[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[5]~38_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[4]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[5]~_emulated_q\ $ ((\U_P2S|w_REG[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|w_REG[5]~_emulated_q\,
	datab => \U_P2S|process_0~10_combout\,
	datac => \U_P2S|w_REG[5]~37_combout\,
	datad => \U_STM_MASTER|o_DATA[4]$latch~combout\,
	combout => \U_P2S|w_REG[5]~38_combout\);

-- Location: LCCOMB_X39_Y18_N16
\U_P2S|w_REG[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[6]~35_combout\ = \U_P2S|w_REG[6]~33_combout\ $ (\U_P2S|w_REG[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[6]~33_combout\,
	datad => \U_P2S|w_REG[5]~38_combout\,
	combout => \U_P2S|w_REG[6]~35_combout\);

-- Location: FF_X39_Y18_N17
\U_P2S|w_REG[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[6]~35_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[6]~_emulated_q\);

-- Location: LCCOMB_X40_Y18_N20
\U_P2S|w_REG[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[6]~34_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[5]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[6]~_emulated_q\ $ (((\U_P2S|w_REG[6]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|w_REG[6]~_emulated_q\,
	datab => \U_P2S|process_0~10_combout\,
	datac => \U_STM_MASTER|o_DATA[5]$latch~combout\,
	datad => \U_P2S|w_REG[6]~33_combout\,
	combout => \U_P2S|w_REG[6]~34_combout\);

-- Location: LCCOMB_X40_Y18_N16
\U_P2S|w_REG[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[7]~31_combout\ = \U_P2S|w_REG[7]~29_combout\ $ (\U_P2S|w_REG[6]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[7]~29_combout\,
	datad => \U_P2S|w_REG[6]~34_combout\,
	combout => \U_P2S|w_REG[7]~31_combout\);

-- Location: FF_X40_Y18_N17
\U_P2S|w_REG[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[7]~31_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[7]~_emulated_q\);

-- Location: LCCOMB_X40_Y18_N2
\U_P2S|w_REG[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[7]~30_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[6]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[7]~_emulated_q\ $ ((\U_P2S|w_REG[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[7]~_emulated_q\,
	datac => \U_P2S|w_REG[7]~29_combout\,
	datad => \U_STM_MASTER|o_DATA[6]$latch~combout\,
	combout => \U_P2S|w_REG[7]~30_combout\);

-- Location: LCCOMB_X40_Y18_N30
\U_P2S|w_REG[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[8]~27_combout\ = \U_P2S|w_REG[8]~25_combout\ $ (\U_P2S|w_REG[7]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[8]~25_combout\,
	datad => \U_P2S|w_REG[7]~30_combout\,
	combout => \U_P2S|w_REG[8]~27_combout\);

-- Location: FF_X40_Y18_N31
\U_P2S|w_REG[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[8]~27_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[8]~_emulated_q\);

-- Location: LCCOMB_X40_Y18_N12
\U_P2S|w_REG[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[8]~26_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[7]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[8]~_emulated_q\ $ ((\U_P2S|w_REG[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[8]~_emulated_q\,
	datac => \U_P2S|w_REG[8]~25_combout\,
	datad => \U_STM_MASTER|o_DATA[7]$latch~combout\,
	combout => \U_P2S|w_REG[8]~26_combout\);

-- Location: FF_X40_Y18_N13
\U_P2S|w_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[8]~26_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG\(9));

-- Location: LCCOMB_X39_Y15_N20
\U_P2S|w_REG[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[10]~23_combout\ = \U_P2S|w_REG[10]~21_combout\ $ (\U_P2S|w_REG\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[10]~21_combout\,
	datad => \U_P2S|w_REG\(9),
	combout => \U_P2S|w_REG[10]~23_combout\);

-- Location: FF_X39_Y15_N21
\U_P2S|w_REG[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[10]~23_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[10]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N6
\U_P2S|w_REG[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[10]~22_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[9]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[10]~_emulated_q\ $ (((\U_P2S|w_REG[10]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[10]~_emulated_q\,
	datac => \U_STM_MASTER|o_DATA[9]$latch~combout\,
	datad => \U_P2S|w_REG[10]~21_combout\,
	combout => \U_P2S|w_REG[10]~22_combout\);

-- Location: LCCOMB_X39_Y15_N26
\U_P2S|w_REG[11]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[11]~19_combout\ = \U_P2S|w_REG[11]~17_combout\ $ (\U_P2S|w_REG[10]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_P2S|w_REG[11]~17_combout\,
	datad => \U_P2S|w_REG[10]~22_combout\,
	combout => \U_P2S|w_REG[11]~19_combout\);

-- Location: FF_X39_Y15_N27
\U_P2S|w_REG[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[11]~19_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG[11]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N28
\U_P2S|w_REG[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[11]~18_combout\ = (\U_P2S|process_0~10_combout\ & (((\U_STM_MASTER|o_DATA[10]$latch~combout\)))) # (!\U_P2S|process_0~10_combout\ & (\U_P2S|w_REG[11]~17_combout\ $ ((\U_P2S|w_REG[11]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_P2S|process_0~10_combout\,
	datab => \U_P2S|w_REG[11]~17_combout\,
	datac => \U_P2S|w_REG[11]~_emulated_q\,
	datad => \U_STM_MASTER|o_DATA[10]$latch~combout\,
	combout => \U_P2S|w_REG[11]~18_combout\);

-- Location: FF_X39_Y15_N29
\U_P2S|w_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[11]~18_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG\(12));

-- Location: LCCOMB_X39_Y15_N10
\U_P2S|w_REG[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[13]~feeder_combout\ = \U_P2S|w_REG\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_P2S|w_REG\(12),
	combout => \U_P2S|w_REG[13]~feeder_combout\);

-- Location: FF_X39_Y15_N11
\U_P2S|w_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[13]~feeder_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG\(13));

-- Location: LCCOMB_X39_Y15_N14
\U_P2S|w_REG[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_P2S|w_REG[14]~feeder_combout\ = \U_P2S|w_REG\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_P2S|w_REG\(13),
	combout => \U_P2S|w_REG[14]~feeder_combout\);

-- Location: FF_X39_Y15_N15
\U_P2S|w_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_P2S|w_REG[14]~feeder_combout\,
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG\(14));

-- Location: FF_X39_Y15_N23
\U_P2S|w_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U_P2S|w_REG\(14),
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|w_REG\(15));

-- Location: FF_X39_Y15_N1
\U_P2S|o_SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U_P2S|w_REG\(15),
	clrn => \U_P2S|ALT_INV_process_0~10clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|o_SDA~reg0_q\);

-- Location: FF_X39_Y19_N23
\U_P2S|o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U_STM_MASTER|o_ENABLE_P2S~combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_P2S|o_SDA~en_q\);

-- Location: LCCOMB_X40_Y19_N22
\U_STOP_FRAME|o_SDA~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STOP_FRAME|o_SDA~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_STOP_FRAME|o_SDA~enfeeder_combout\);

-- Location: FF_X40_Y19_N23
\U_STOP_FRAME|o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_STOP_FRAME|o_SDA~enfeeder_combout\,
	clrn => \U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STOP_FRAME|o_SDA~en_q\);

-- Location: LCCOMB_X39_Y19_N22
\U_REG_SDA|o_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_SDA|o_Q~0_combout\ = (\U_STOP_FRAME|o_SDA~reg0_q\ & ((\U_STOP_FRAME|o_SDA~en_q\) # ((\U_P2S|o_SDA~reg0_q\ & \U_P2S|o_SDA~en_q\)))) # (!\U_STOP_FRAME|o_SDA~reg0_q\ & (\U_P2S|o_SDA~reg0_q\ & (\U_P2S|o_SDA~en_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STOP_FRAME|o_SDA~reg0_q\,
	datab => \U_P2S|o_SDA~reg0_q\,
	datac => \U_P2S|o_SDA~en_q\,
	datad => \U_STOP_FRAME|o_SDA~en_q\,
	combout => \U_REG_SDA|o_Q~0_combout\);

-- Location: LCCOMB_X38_Y19_N2
\U_REG_SDA|o_Q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_SDA|o_Q~1_combout\ = ((\U_REG_SDA|o_Q~0_combout\) # (!\i_RST~input_o\)) # (!\U_STM_MASTER|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_MASTER|o_ENABLE~combout\,
	datac => \i_RST~input_o\,
	datad => \U_REG_SDA|o_Q~0_combout\,
	combout => \U_REG_SDA|o_Q~1_combout\);

-- Location: LCCOMB_X38_Y19_N16
\U_REG_SDA|o_Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_REG_SDA|o_Q~feeder_combout\ = \U_REG_SDA|o_Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_REG_SDA|o_Q~1_combout\,
	combout => \U_REG_SDA|o_Q~feeder_combout\);

-- Location: FF_X38_Y19_N17
\U_REG_SDA|o_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_REG_SDA|o_Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REG_SDA|o_Q~q\);
END structure;


