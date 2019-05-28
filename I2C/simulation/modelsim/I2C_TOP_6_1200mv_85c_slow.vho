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

-- DATE "12/04/2018 19:24:02"

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

ENTITY 	I2C_TOP IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_BT_A : IN std_logic;
	i_BT_B : IN std_logic;
	i_BT_C : IN std_logic;
	i_DATA_SW : IN std_logic_vector(7 DOWNTO 0);
	o_BCD0 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_BCD1 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_BCD2 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_BCD3 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_LEDg : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END I2C_TOP;

-- Design Ports Information
-- o_BCD0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD0[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD1[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_BCD3[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_LEDg[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_C	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_A	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_B	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_TOP IS
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
SIGNAL ww_o_BCD0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_BCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_BCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_BCD3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_LEDg : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_MASTER|U_P2S|Equal0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MASTER|U_REG_SCL|o_Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_BT_A~input_o\ : std_logic;
SIGNAL \i_BT_B~input_o\ : std_logic;
SIGNAL \i_BT_C~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|process_0~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~19_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~20_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_START_COM~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_START_COM~q\ : std_logic;
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~22_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~23_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|WideOr2~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~8_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|done~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|o_CTRL_START~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|o_CTRL_START~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|o_CTRL_START~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|WideOr3~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|process_0~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[0]~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[0]~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[0]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[0]~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~1\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~3\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~4_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~5\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~6_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~7\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~8_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~9\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~10_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~11\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~12_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~13\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~14_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~7_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~8_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~15\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~16_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~17\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~18_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~19\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~20_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~21\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~22_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~23\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~24_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~25\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~26_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~27\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~28_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~29\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~30_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~5_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~6_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~9_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~31\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~32_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~33\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~34_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~35\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~36_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~37\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~38_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~4_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~39\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~40_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~41\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~42_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~43\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~44_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~45\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~46_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~47\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~48_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~49\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~50_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~51\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~53\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~54_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~55\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~56_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~57\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~58_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~59\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~60_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~61\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~62_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~10_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[0]~8_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|cont[31]~7_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Add0~52_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~7_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~8_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~9_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~5_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~4_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~6_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~10_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_CTRL_P2S~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~18_combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector1~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~26_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~3_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~21_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~24_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state~25_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_IDLE~q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|WideOr1~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_ENABLE~combout\ : std_logic;
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_REG_SCL|o_Q~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_REG_SCL|o_Q~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_REG_SCL|o_Q~q\ : std_logic;
SIGNAL \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_SDA~enfeeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_SDA~en_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_SDA~enfeeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_SDA~en_q\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[10]~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[11]~17_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[9]~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[10]~21_combout\ : std_logic;
SIGNAL \i_DATA_SW[7]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[8]~25_combout\ : std_logic;
SIGNAL \i_DATA_SW[6]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[7]~29_combout\ : std_logic;
SIGNAL \i_DATA_SW[5]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[6]~33_combout\ : std_logic;
SIGNAL \i_DATA_SW[4]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[5]~37_combout\ : std_logic;
SIGNAL \i_DATA_SW[3]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[4]~41_combout\ : std_logic;
SIGNAL \i_DATA_SW[2]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[3]~45_combout\ : std_logic;
SIGNAL \i_DATA_SW[1]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[2]~49_combout\ : std_logic;
SIGNAL \i_DATA_SW[0]~input_o\ : std_logic;
SIGNAL \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[1]~53_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[1]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[1]~54_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[2]~51_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[2]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[2]~50_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[3]~47_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[3]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[3]~46_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[4]~43_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[4]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[4]~42_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[5]~39_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[5]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[5]~38_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[6]~35_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[6]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[6]~34_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[7]~31_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[7]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[7]~30_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[8]~27_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[8]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[8]~26_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[10]~23_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[10]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[10]~22_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[11]~19_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[11]~_emulated_q\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[11]~18_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[13]~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[14]~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|w_REG[15]~feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|o_SDA~reg0_q\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_SDA~reg0feeder_combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|o_SDA~reg0_q\ : std_logic;
SIGNAL \U_MASTER|U_REG_SDA|o_Q~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_REG_SDA|o_Q~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_REG_SDA|o_Q~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|o_ENABLE~1_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|process_0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~1\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~3\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~4_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~5\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~6_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Equal1~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~7\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|Add0~8_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|cont~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[15]~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~18_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Selector9~1_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Selector9~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|stage~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|stage~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[10]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal1~3_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[12]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|w_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[14]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[14]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[15]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[15]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[12]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[13]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[13]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[4]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[2]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal0~1_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~19_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~16_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~20_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~21_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~22_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state~17_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Selector9~0_combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~1\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~3\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~4_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~5\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~6_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Equal1~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~7\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|Add0~8_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|cont~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[15]~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~18_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[11]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[10]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[14]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[14]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[15]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[15]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[12]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[13]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[13]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~16_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Selector9~1_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Selector9~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|stage~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|stage~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal0~1_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal1~3_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Equal0~3_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~19_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~20_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~21_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~22_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state~17_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~1\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~3\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~4_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~5\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~6_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Equal1~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~7\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|Add0~8_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|cont~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[15]~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[9]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[14]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[15]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[12]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[13]~reg0feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[13]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~22_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~18_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Selector9~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Selector9~2_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|stage~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|stage~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal0~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal1~3_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal0~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal0~2_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Equal0~3_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~19_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~20_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~21_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~16_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state~17_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\ : std_logic;
SIGNAL \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|Equal3~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Selector9~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|Equal2~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Selector9~0_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|Equal1~0_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[7]~0_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[7]~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[6]~2_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[6]~3_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[5]~4_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[5]~5_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[4]~6_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[4]~7_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[3]~8_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[3]~9_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[2]~10_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[2]~11_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_BCD7|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \U_BCD7|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \U_BCD7|aux[2]~1\ : std_logic;
SIGNAL \U_BCD7|aux[3]~3\ : std_logic;
SIGNAL \U_BCD7|aux[4]~5\ : std_logic;
SIGNAL \U_BCD7|aux[5]~7\ : std_logic;
SIGNAL \U_BCD7|aux[6]~9\ : std_logic;
SIGNAL \U_BCD7|aux[7]~11\ : std_logic;
SIGNAL \U_BCD7|aux[8]~13\ : std_logic;
SIGNAL \U_BCD7|aux[9]~15\ : std_logic;
SIGNAL \U_BCD7|aux[10]~17\ : std_logic;
SIGNAL \U_BCD7|aux[11]~19\ : std_logic;
SIGNAL \U_BCD7|aux[12]~21\ : std_logic;
SIGNAL \U_BCD7|aux[13]~23\ : std_logic;
SIGNAL \U_BCD7|aux[14]~25\ : std_logic;
SIGNAL \U_BCD7|Add0~0_combout\ : std_logic;
SIGNAL \U_BCD7|aux[14]~24_combout\ : std_logic;
SIGNAL \U_BCD7|aux[13]~22_combout\ : std_logic;
SIGNAL \U_BCD7|aux[12]~20_combout\ : std_logic;
SIGNAL \U_BCD7|aux[11]~18_combout\ : std_logic;
SIGNAL \U_BCD7|aux[10]~16_combout\ : std_logic;
SIGNAL \U_BCD7|aux[7]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\ : std_logic;
SIGNAL \U_BCD7|aux[6]~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\ : std_logic;
SIGNAL \U_BCD7|aux[8]~12_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[0]~12_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[0]~13_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[1]~14_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_S[1]~15_combout\ : std_logic;
SIGNAL \U_BCD7|aux[2]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \U_BCD7|aux[3]~2_combout\ : std_logic;
SIGNAL \U_BCD7|aux[4]~4_combout\ : std_logic;
SIGNAL \U_BCD7|aux[5]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \U_BCD7|aux[9]~14_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~15\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~17\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~19\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~21\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~23\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~25\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~27\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~29\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~30_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~28_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~26_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|_~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~24_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~22_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~20_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~18_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\ : std_logic;
SIGNAL \U_BCD7|Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \U_BCD7|dezena~0_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~1\ : std_logic;
SIGNAL \U_BCD7|Add1~3\ : std_logic;
SIGNAL \U_BCD7|Add1~5\ : std_logic;
SIGNAL \U_BCD7|Add1~7\ : std_logic;
SIGNAL \U_BCD7|Add1~9\ : std_logic;
SIGNAL \U_BCD7|Add1~11\ : std_logic;
SIGNAL \U_BCD7|Add1~13\ : std_logic;
SIGNAL \U_BCD7|Add1~15\ : std_logic;
SIGNAL \U_BCD7|Add1~17\ : std_logic;
SIGNAL \U_BCD7|Add1~19\ : std_logic;
SIGNAL \U_BCD7|Add1~21\ : std_logic;
SIGNAL \U_BCD7|Add1~23\ : std_logic;
SIGNAL \U_BCD7|Add1~25\ : std_logic;
SIGNAL \U_BCD7|Add1~27\ : std_logic;
SIGNAL \U_BCD7|Add1~29\ : std_logic;
SIGNAL \U_BCD7|Add1~30_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~28_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~26_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~24_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~22_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~20_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~18_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~16_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~14_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~12_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~10_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~8_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~6_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~4_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~2_combout\ : std_logic;
SIGNAL \U_BCD7|Add1~0_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~1\ : std_logic;
SIGNAL \U_BCD7|Add2~3\ : std_logic;
SIGNAL \U_BCD7|Add2~5\ : std_logic;
SIGNAL \U_BCD7|Add2~7\ : std_logic;
SIGNAL \U_BCD7|Add2~9\ : std_logic;
SIGNAL \U_BCD7|Add2~11\ : std_logic;
SIGNAL \U_BCD7|Add2~13\ : std_logic;
SIGNAL \U_BCD7|Add2~15\ : std_logic;
SIGNAL \U_BCD7|Add2~17\ : std_logic;
SIGNAL \U_BCD7|Add2~19\ : std_logic;
SIGNAL \U_BCD7|Add2~21\ : std_logic;
SIGNAL \U_BCD7|Add2~23\ : std_logic;
SIGNAL \U_BCD7|Add2~25\ : std_logic;
SIGNAL \U_BCD7|Add2~27\ : std_logic;
SIGNAL \U_BCD7|Add2~29\ : std_logic;
SIGNAL \U_BCD7|Add2~31\ : std_logic;
SIGNAL \U_BCD7|Add2~32_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~30_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~28_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~26_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~24_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~22_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~20_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~18_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~16_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~14_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~12_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~10_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~8_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~6_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~4_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~2_combout\ : std_logic;
SIGNAL \U_BCD7|Add2~0_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[1]~1\ : std_logic;
SIGNAL \U_BCD7|unidade[2]~3\ : std_logic;
SIGNAL \U_BCD7|unidade[3]~5\ : std_logic;
SIGNAL \U_BCD7|unidade[4]~7\ : std_logic;
SIGNAL \U_BCD7|unidade[5]~9\ : std_logic;
SIGNAL \U_BCD7|unidade[6]~11\ : std_logic;
SIGNAL \U_BCD7|unidade[7]~13\ : std_logic;
SIGNAL \U_BCD7|unidade[8]~15\ : std_logic;
SIGNAL \U_BCD7|unidade[9]~17\ : std_logic;
SIGNAL \U_BCD7|unidade[10]~19\ : std_logic;
SIGNAL \U_BCD7|unidade[11]~21\ : std_logic;
SIGNAL \U_BCD7|unidade[12]~23\ : std_logic;
SIGNAL \U_BCD7|unidade[13]~25\ : std_logic;
SIGNAL \U_BCD7|unidade[14]~27\ : std_logic;
SIGNAL \U_BCD7|unidade[15]~29\ : std_logic;
SIGNAL \U_BCD7|unidade[16]~31\ : std_logic;
SIGNAL \U_BCD7|unidade[17]~33\ : std_logic;
SIGNAL \U_BCD7|unidade[18]~35\ : std_logic;
SIGNAL \U_BCD7|unidade[19]~37\ : std_logic;
SIGNAL \U_BCD7|unidade[20]~39\ : std_logic;
SIGNAL \U_BCD7|unidade[21]~41\ : std_logic;
SIGNAL \U_BCD7|unidade[22]~42_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[21]~40_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[22]~43\ : std_logic;
SIGNAL \U_BCD7|Add3~0_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[20]~38_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~0_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[1]~0_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[3]~4_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[6]~10_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[5]~8_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[7]~12_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[4]~6_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~1_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[11]~20_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[10]~18_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[9]~16_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[8]~14_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~2_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[18]~34_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[19]~36_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[16]~30_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[17]~32_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~4_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[15]~28_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[13]~24_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[14]~26_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[12]~22_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~3_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~5_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~7_combout\ : std_logic;
SIGNAL \U_BCD7|Equal10~6_combout\ : std_logic;
SIGNAL \U_BCD7|unidade[2]~2_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor1~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor1~1_combout\ : std_logic;
SIGNAL \U_BCD7|Equal18~0_combout\ : std_logic;
SIGNAL \U_BCD7|Equal18~1_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor1~2_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr4~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr9~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr9~combout\ : std_logic;
SIGNAL \U_BCD7|Equal12~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr8~combout\ : std_logic;
SIGNAL \U_BCD7|WideNor1~3_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor1~4_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr6~combout\ : std_logic;
SIGNAL \U_BCD7|WideOr5~2_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr5~combout\ : std_logic;
SIGNAL \U_BCD7|WideOr4~combout\ : std_logic;
SIGNAL \U_BCD7|Equal0~1_combout\ : std_logic;
SIGNAL \U_BCD7|Equal0~2_combout\ : std_logic;
SIGNAL \U_BCD7|Equal0~0_combout\ : std_logic;
SIGNAL \U_BCD7|Equal0~3_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr3~combout\ : std_logic;
SIGNAL \U_BCD7|WideOr2~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor0~1_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor0~0_combout\ : std_logic;
SIGNAL \U_BCD7|Equal8~0_combout\ : std_logic;
SIGNAL \U_BCD7|Equal8~1_combout\ : std_logic;
SIGNAL \U_BCD7|WideOr1~combout\ : std_logic;
SIGNAL \U_BCD7|WideNor0~2_combout\ : std_logic;
SIGNAL \U_BCD7|Equal2~0_combout\ : std_logic;
SIGNAL \U_BCD7|o_BCD1[6]~0_combout\ : std_logic;
SIGNAL \U_BCD7|WideNor0~3_combout\ : std_logic;
SIGNAL \U_BCD7|Mux6~0_combout\ : std_logic;
SIGNAL \U_BCD7|Mux4~0_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_ID[5]~0_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|o_ID[7]~1_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_SLAVE_C|U_S2P|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_MASTER|U_P2S|w_REG\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_MASTER|U_P2S|cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_SLAVE_A|U_S2P|w_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_SLAVE_A|U_S2P|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_BCD7|o_BCD1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_BCD7|o_BCD0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CLK~input_o\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|ALT_INV_done~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\ : std_logic;
SIGNAL \U_MASTER|U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\ : std_logic;
SIGNAL \U_MASTER|U_P2S|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U_MASTER|U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\ : std_logic;
SIGNAL \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U_BCD7|ALT_INV_o_BCD1[6]~0_combout\ : std_logic;
SIGNAL \U_BCD7|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \U_BCD7|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \U_MUX_3x1_3SEL|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \U_BCD7|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_BT_A <= i_BT_A;
ww_i_BT_B <= i_BT_B;
ww_i_BT_C <= i_BT_C;
ww_i_DATA_SW <= i_DATA_SW;
o_BCD0 <= ww_o_BCD0;
o_BCD1 <= ww_o_BCD1;
o_BCD2 <= ww_o_BCD2;
o_BCD3 <= ww_o_BCD3;
o_LEDg <= ww_o_LEDg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \i_CLK~input_o\);

\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\U_MASTER|U_P2S|Equal0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_P2S|Equal0~10_combout\);

\U_MASTER|U_REG_SCL|o_Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_REG_SCL|o_Q~q\);

\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\);

\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_SLAVE_A|U_STM_SLAVE|Selector9~0_combout\);

\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_SLAVE_B|U_STM_SLAVE|Selector9~0_combout\);

\U_MASTER|U_STM_MASTER|Selector4~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_STM_MASTER|Selector4~2_combout\);

\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_SLAVE_C|U_STM_SLAVE|Selector9~0_combout\);

\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(1));

\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk\(0));

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ <= NOT \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\;
\U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\ <= NOT \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\;
\ALT_INV_i_CLK~input_o\ <= NOT \i_CLK~input_o\;
\U_MASTER|U_START_FRAME|ALT_INV_done~0_combout\ <= NOT \U_MASTER|U_START_FRAME|done~0_combout\;
\U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\ <= NOT \U_MASTER|U_P2S|cont[31]~7_combout\;
\U_MASTER|U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\ <= NOT \U_MASTER|U_START_FRAME|o_CTRL_START~1_combout\;
\U_MASTER|U_P2S|ALT_INV_process_0~0_combout\ <= NOT \U_MASTER|U_P2S|process_0~0_combout\;
\U_MASTER|U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\ <= NOT \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~0_combout\;
\U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\ <= NOT \U_SLAVE_B|U_S2P|process_0~0_combout\;
\U_BCD7|ALT_INV_o_BCD1[6]~0_combout\ <= NOT \U_BCD7|o_BCD1[6]~0_combout\;
\U_BCD7|ALT_INV_WideNor0~2_combout\ <= NOT \U_BCD7|WideNor0~2_combout\;
\U_BCD7|ALT_INV_WideOr1~combout\ <= NOT \U_BCD7|WideOr1~combout\;
\U_MUX_3x1_3SEL|ALT_INV_Equal3~0_combout\ <= NOT \U_MUX_3x1_3SEL|Equal3~0_combout\;
\U_MUX_3x1_3SEL|ALT_INV_Equal1~0_combout\ <= NOT \U_MUX_3x1_3SEL|Equal1~0_combout\;
\U_BCD7|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;

-- Location: IOOBUF_X0_Y20_N9
\o_LEDg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(0));

-- Location: IOOBUF_X0_Y20_N2
\o_LEDg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(1));

-- Location: IOOBUF_X0_Y21_N23
\o_LEDg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(2));

-- Location: IOOBUF_X0_Y21_N16
\o_LEDg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(3));

-- Location: IOOBUF_X0_Y24_N23
\o_LEDg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(4));

-- Location: IOOBUF_X0_Y24_N16
\o_LEDg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(5));

-- Location: IOOBUF_X0_Y26_N23
\o_LEDg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(6));

-- Location: IOOBUF_X0_Y26_N16
\o_LEDg[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	oe => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	devoe => ww_devoe,
	o => ww_o_LEDg(7));

-- Location: IOOBUF_X26_Y29_N16
\o_BCD0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr9~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(0));

-- Location: IOOBUF_X28_Y29_N23
\o_BCD0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(1));

-- Location: IOOBUF_X26_Y29_N9
\o_BCD0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideNor1~3_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(2));

-- Location: IOOBUF_X28_Y29_N30
\o_BCD0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(3));

-- Location: IOOBUF_X26_Y29_N2
\o_BCD0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|o_BCD0\(4),
	devoe => ww_devoe,
	o => ww_o_BCD0(4));

-- Location: IOOBUF_X21_Y29_N30
\o_BCD0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(5));

-- Location: IOOBUF_X21_Y29_N23
\o_BCD0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(6));

-- Location: IOOBUF_X23_Y29_N9
\o_BCD0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideNor1~2_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD0(7));

-- Location: IOOBUF_X26_Y29_N23
\o_BCD1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(0));

-- Location: IOOBUF_X28_Y29_N16
\o_BCD1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(1));

-- Location: IOOBUF_X23_Y29_N30
\o_BCD1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(2));

-- Location: IOOBUF_X23_Y29_N23
\o_BCD1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|ALT_INV_WideNor0~2_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(3));

-- Location: IOOBUF_X23_Y29_N2
\o_BCD1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(4));

-- Location: IOOBUF_X21_Y29_N9
\o_BCD1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|o_BCD1\(5),
	devoe => ww_devoe,
	o => ww_o_BCD1(5));

-- Location: IOOBUF_X21_Y29_N2
\o_BCD1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|ALT_INV_o_BCD1[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(6));

-- Location: IOOBUF_X26_Y29_N30
\o_BCD1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|WideNor0~3_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD1(7));

-- Location: IOOBUF_X37_Y29_N2
\o_BCD2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(0));

-- Location: IOOBUF_X30_Y29_N23
\o_BCD2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(1));

-- Location: IOOBUF_X30_Y29_N16
\o_BCD2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(2));

-- Location: IOOBUF_X30_Y29_N2
\o_BCD2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(3));

-- Location: IOOBUF_X28_Y29_N2
\o_BCD2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Mult0|mult_core|_~1_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(4));

-- Location: IOOBUF_X30_Y29_N30
\o_BCD2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_BCD2(5));

-- Location: IOOBUF_X32_Y29_N30
\o_BCD2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_BCD7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD2(6));

-- Location: IOOBUF_X32_Y29_N16
\o_BCD2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_o_BCD2(7));

-- Location: IOOBUF_X39_Y29_N30
\o_BCD3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(0));

-- Location: IOOBUF_X37_Y29_N30
\o_BCD3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_BCD3(1));

-- Location: IOOBUF_X37_Y29_N23
\o_BCD3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_o_BCD3(2));

-- Location: IOOBUF_X32_Y29_N2
\o_BCD3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(3));

-- Location: IOOBUF_X32_Y29_N9
\o_BCD3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(4));

-- Location: IOOBUF_X39_Y29_N16
\o_BCD3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|o_ID[5]~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(5));

-- Location: IOOBUF_X32_Y29_N23
\o_BCD3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(6));

-- Location: IOOBUF_X39_Y29_N23
\o_BCD3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MUX_3x1_3SEL|o_ID[7]~1_combout\,
	devoe => ww_devoe,
	o => ww_o_BCD3(7));

-- Location: IOIBUF_X0_Y25_N1
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: IOIBUF_X0_Y21_N8
\i_BT_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_A,
	o => \i_BT_A~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\i_BT_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_B,
	o => \i_BT_B~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\i_BT_C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_C,
	o => \i_BT_C~input_o\);

-- Location: LCCOMB_X15_Y22_N4
\U_MASTER|U_STM_MASTER|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|process_0~0_combout\ = (\i_BT_A~input_o\ & (\i_BT_B~input_o\ & (\i_BT_C~input_o\ & !\U_MASTER|U_STM_MASTER|state.st_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_A~input_o\,
	datab => \i_BT_B~input_o\,
	datac => \i_BT_C~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	combout => \U_MASTER|U_STM_MASTER|process_0~0_combout\);

-- Location: LCCOMB_X15_Y22_N0
\U_MASTER|U_STM_MASTER|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|Selector4~2_combout\ = (!\U_MASTER|U_STM_MASTER|state.st_IDLE~q\ & (((!\i_BT_B~input_o\) # (!\i_BT_C~input_o\)) # (!\i_BT_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_A~input_o\,
	datab => \i_BT_C~input_o\,
	datac => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	datad => \i_BT_B~input_o\,
	combout => \U_MASTER|U_STM_MASTER|Selector4~2_combout\);

-- Location: LCCOMB_X15_Y21_N28
\U_MASTER|U_STM_MASTER|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~19_combout\ = (!\U_MASTER|U_STM_MASTER|Selector4~2_combout\ & (\U_MASTER|U_STM_MASTER|state~18_combout\ & (!\U_MASTER|U_STM_MASTER|Selector4~1_combout\ & \U_MASTER|U_STM_MASTER|state.st_START_COM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector4~2_combout\,
	datab => \U_MASTER|U_STM_MASTER|state~18_combout\,
	datac => \U_MASTER|U_STM_MASTER|Selector4~1_combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|state~19_combout\);

-- Location: LCCOMB_X15_Y21_N6
\U_MASTER|U_STM_MASTER|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~20_combout\ = (\U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_MASTER|U_STM_MASTER|state~19_combout\) # ((\U_MASTER|U_STM_MASTER|state.st_READ_SW~q\ & !\U_MASTER|U_STM_MASTER|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\,
	datab => \U_MASTER|U_STM_MASTER|state~19_combout\,
	datac => \U_MASTER|U_STM_MASTER|Selector1~2_combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\,
	combout => \U_MASTER|U_STM_MASTER|state~20_combout\);

-- Location: LCCOMB_X14_Y21_N0
\U_MASTER|U_STM_MASTER|state.st_START_COM~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state.st_START_COM~feeder_combout\ = \U_MASTER|U_STM_MASTER|state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|state~20_combout\,
	combout => \U_MASTER|U_STM_MASTER|state.st_START_COM~feeder_combout\);

-- Location: FF_X14_Y21_N1
\U_MASTER|U_STM_MASTER|state.st_START_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_MASTER|U_STM_MASTER|state.st_START_COM~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\);

-- Location: PLL_2
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	pll_compensation_delay => 5738,
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
	fbin => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y22_N28
\U_MASTER|U_STM_MASTER|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~22_combout\ = (!\U_MASTER|U_STM_MASTER|Selector4~1_combout\ & (!\U_MASTER|U_STM_MASTER|Selector4~2_combout\ & (\U_MASTER|U_STM_MASTER|state~18_combout\ & \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector4~1_combout\,
	datab => \U_MASTER|U_STM_MASTER|Selector4~2_combout\,
	datac => \U_MASTER|U_STM_MASTER|state~18_combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	combout => \U_MASTER|U_STM_MASTER|state~22_combout\);

-- Location: LCCOMB_X15_Y22_N26
\U_MASTER|U_STM_MASTER|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~23_combout\ = (\U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_MASTER|U_STM_MASTER|state~22_combout\) # ((!\U_MASTER|U_STM_MASTER|Selector1~2_combout\ & \U_MASTER|U_STM_MASTER|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector1~2_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\,
	datac => \U_MASTER|U_STM_MASTER|state~22_combout\,
	datad => \U_MASTER|U_STM_MASTER|Selector4~0_combout\,
	combout => \U_MASTER|U_STM_MASTER|state~23_combout\);

-- Location: FF_X15_Y22_N31
\U_MASTER|U_STM_MASTER|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \U_MASTER|U_STM_MASTER|state~23_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\);

-- Location: LCCOMB_X15_Y22_N30
\U_MASTER|U_STM_MASTER|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|WideOr2~0_combout\ = (\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\) # (\U_MASTER|U_STM_MASTER|state.st_START_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|WideOr2~0_combout\);

-- Location: LCCOMB_X15_Y22_N18
\U_MASTER|U_STM_MASTER|o_ENABLE_START\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_STM_MASTER|WideOr2~0_combout\ & (!\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\)) # (!\U_MASTER|U_STM_MASTER|WideOr2~0_combout\ & 
-- ((\U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|WideOr2~0_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	datac => \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\,
	datad => \i_RST~input_o\,
	combout => \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\);

-- Location: LCCOMB_X15_Y22_N22
\U_MASTER|U_START_FRAME|done~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|done~8_combout\ = (!\U_MASTER|U_START_FRAME|done~2_combout\ & \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_START_FRAME|done~2_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\,
	combout => \U_MASTER|U_START_FRAME|done~8_combout\);

-- Location: LCCOMB_X16_Y22_N26
\U_MASTER|U_START_FRAME|done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|done~1_combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_START_FRAME|done~8_combout\) # (\U_MASTER|U_START_FRAME|done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RST~input_o\,
	datac => \U_MASTER|U_START_FRAME|done~8_combout\,
	datad => \U_MASTER|U_START_FRAME|done~1_combout\,
	combout => \U_MASTER|U_START_FRAME|done~1_combout\);

-- Location: LCCOMB_X16_Y22_N14
\U_MASTER|U_START_FRAME|done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|done~3_combout\ = \U_MASTER|U_START_FRAME|done~1_combout\ $ (((!\U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\ & \U_MASTER|U_START_FRAME|done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\,
	datac => \U_MASTER|U_START_FRAME|done~2_combout\,
	datad => \U_MASTER|U_START_FRAME|done~1_combout\,
	combout => \U_MASTER|U_START_FRAME|done~3_combout\);

-- Location: LCCOMB_X16_Y22_N30
\U_MASTER|U_START_FRAME|done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|done~0_combout\ = (\U_MASTER|U_START_FRAME|done~8_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_START_FRAME|done~8_combout\,
	combout => \U_MASTER|U_START_FRAME|done~0_combout\);

-- Location: FF_X16_Y22_N15
\U_MASTER|U_START_FRAME|done~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_START_FRAME|done~3_combout\,
	clrn => \U_MASTER|U_START_FRAME|ALT_INV_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_START_FRAME|done~_emulated_q\);

-- Location: LCCOMB_X16_Y22_N8
\U_MASTER|U_START_FRAME|done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|done~2_combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_START_FRAME|done~8_combout\) # (\U_MASTER|U_START_FRAME|done~1_combout\ $ (\U_MASTER|U_START_FRAME|done~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_START_FRAME|done~8_combout\,
	datab => \U_MASTER|U_START_FRAME|done~1_combout\,
	datac => \U_MASTER|U_START_FRAME|done~_emulated_q\,
	datad => \i_RST~input_o\,
	combout => \U_MASTER|U_START_FRAME|done~2_combout\);

-- Location: LCCOMB_X17_Y22_N24
\U_MASTER|U_START_FRAME|o_CTRL_START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|o_CTRL_START~0_combout\ = (\U_MASTER|U_START_FRAME|o_CTRL_START~q\) # (\U_MASTER|U_START_FRAME|done~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_START_FRAME|o_CTRL_START~q\,
	datad => \U_MASTER|U_START_FRAME|done~2_combout\,
	combout => \U_MASTER|U_START_FRAME|o_CTRL_START~0_combout\);

-- Location: LCCOMB_X16_Y22_N16
\U_MASTER|U_START_FRAME|o_CTRL_START~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_START_FRAME|o_CTRL_START~1_combout\ = (!\U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|o_ENABLE_START~combout\,
	combout => \U_MASTER|U_START_FRAME|o_CTRL_START~1_combout\);

-- Location: FF_X17_Y22_N25
\U_MASTER|U_START_FRAME|o_CTRL_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_START_FRAME|o_CTRL_START~0_combout\,
	clrn => \U_MASTER|U_START_FRAME|ALT_INV_o_CTRL_START~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_START_FRAME|o_CTRL_START~q\);

-- Location: LCCOMB_X15_Y14_N24
\U_MASTER|U_STM_MASTER|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|Selector4~0_combout\ = (\U_MASTER|U_STM_MASTER|state.st_START_COM~q\ & \U_MASTER|U_START_FRAME|o_CTRL_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	datad => \U_MASTER|U_START_FRAME|o_CTRL_START~q\,
	combout => \U_MASTER|U_STM_MASTER|Selector4~0_combout\);

-- Location: LCCOMB_X15_Y14_N26
\U_MASTER|U_STM_MASTER|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|WideOr3~0_combout\ = (\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\) # (\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|WideOr3~0_combout\);

-- Location: LCCOMB_X15_Y14_N20
\U_MASTER|U_STM_MASTER|o_ENABLE_P2S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_STM_MASTER|WideOr3~0_combout\ & ((!\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\))) # (!\U_MASTER|U_STM_MASTER|WideOr3~0_combout\ & 
-- (\U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|WideOr3~0_combout\,
	datab => \U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\,
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\);

-- Location: LCCOMB_X15_Y14_N6
\U_MASTER|U_P2S|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|process_0~0_combout\ = (!\U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|o_ENABLE_P2S~combout\,
	combout => \U_MASTER|U_P2S|process_0~0_combout\);

-- Location: LCCOMB_X15_Y14_N10
\U_MASTER|U_P2S|cont[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|cont[0]~1_combout\ = (!\U_MASTER|U_P2S|process_0~0_combout\ & ((\U_MASTER|U_P2S|cont[0]~8_combout\) # (\U_MASTER|U_P2S|cont[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont[0]~8_combout\,
	datac => \U_MASTER|U_P2S|process_0~0_combout\,
	datad => \U_MASTER|U_P2S|cont[0]~1_combout\,
	combout => \U_MASTER|U_P2S|cont[0]~1_combout\);

-- Location: LCCOMB_X16_Y13_N0
\U_MASTER|U_P2S|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~0_combout\ = \U_MASTER|U_P2S|cont[0]~2_combout\ $ (VCC)
-- \U_MASTER|U_P2S|Add0~1\ = CARRY(\U_MASTER|U_P2S|cont[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont[0]~2_combout\,
	datad => VCC,
	combout => \U_MASTER|U_P2S|Add0~0_combout\,
	cout => \U_MASTER|U_P2S|Add0~1\);

-- Location: LCCOMB_X15_Y14_N14
\U_MASTER|U_P2S|cont[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|cont[0]~3_combout\ = \U_MASTER|U_P2S|cont[0]~1_combout\ $ (\U_MASTER|U_P2S|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont[0]~1_combout\,
	datad => \U_MASTER|U_P2S|Add0~0_combout\,
	combout => \U_MASTER|U_P2S|cont[0]~3_combout\);

-- Location: FF_X15_Y14_N15
\U_MASTER|U_P2S|cont[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|cont[0]~3_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont[0]~_emulated_q\);

-- Location: LCCOMB_X15_Y14_N30
\U_MASTER|U_P2S|cont[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|cont[0]~2_combout\ = (!\U_MASTER|U_P2S|process_0~0_combout\ & ((\U_MASTER|U_P2S|cont[0]~8_combout\) # (\U_MASTER|U_P2S|cont[0]~1_combout\ $ (\U_MASTER|U_P2S|cont[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont[0]~1_combout\,
	datab => \U_MASTER|U_P2S|cont[0]~8_combout\,
	datac => \U_MASTER|U_P2S|cont[0]~_emulated_q\,
	datad => \U_MASTER|U_P2S|process_0~0_combout\,
	combout => \U_MASTER|U_P2S|cont[0]~2_combout\);

-- Location: LCCOMB_X16_Y13_N2
\U_MASTER|U_P2S|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~2_combout\ = (\U_MASTER|U_P2S|cont\(1) & (!\U_MASTER|U_P2S|Add0~1\)) # (!\U_MASTER|U_P2S|cont\(1) & ((\U_MASTER|U_P2S|Add0~1\) # (GND)))
-- \U_MASTER|U_P2S|Add0~3\ = CARRY((!\U_MASTER|U_P2S|Add0~1\) # (!\U_MASTER|U_P2S|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(1),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~1\,
	combout => \U_MASTER|U_P2S|Add0~2_combout\,
	cout => \U_MASTER|U_P2S|Add0~3\);

-- Location: FF_X16_Y13_N3
\U_MASTER|U_P2S|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~2_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(1));

-- Location: LCCOMB_X16_Y13_N4
\U_MASTER|U_P2S|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~4_combout\ = (\U_MASTER|U_P2S|cont\(2) & (\U_MASTER|U_P2S|Add0~3\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(2) & (!\U_MASTER|U_P2S|Add0~3\ & VCC))
-- \U_MASTER|U_P2S|Add0~5\ = CARRY((\U_MASTER|U_P2S|cont\(2) & !\U_MASTER|U_P2S|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(2),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~3\,
	combout => \U_MASTER|U_P2S|Add0~4_combout\,
	cout => \U_MASTER|U_P2S|Add0~5\);

-- Location: FF_X16_Y13_N5
\U_MASTER|U_P2S|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~4_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(2));

-- Location: LCCOMB_X16_Y13_N6
\U_MASTER|U_P2S|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~6_combout\ = (\U_MASTER|U_P2S|cont\(3) & (!\U_MASTER|U_P2S|Add0~5\)) # (!\U_MASTER|U_P2S|cont\(3) & ((\U_MASTER|U_P2S|Add0~5\) # (GND)))
-- \U_MASTER|U_P2S|Add0~7\ = CARRY((!\U_MASTER|U_P2S|Add0~5\) # (!\U_MASTER|U_P2S|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(3),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~5\,
	combout => \U_MASTER|U_P2S|Add0~6_combout\,
	cout => \U_MASTER|U_P2S|Add0~7\);

-- Location: FF_X16_Y13_N7
\U_MASTER|U_P2S|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~6_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(3));

-- Location: LCCOMB_X16_Y13_N8
\U_MASTER|U_P2S|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~8_combout\ = (\U_MASTER|U_P2S|cont\(4) & (\U_MASTER|U_P2S|Add0~7\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(4) & (!\U_MASTER|U_P2S|Add0~7\ & VCC))
-- \U_MASTER|U_P2S|Add0~9\ = CARRY((\U_MASTER|U_P2S|cont\(4) & !\U_MASTER|U_P2S|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(4),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~7\,
	combout => \U_MASTER|U_P2S|Add0~8_combout\,
	cout => \U_MASTER|U_P2S|Add0~9\);

-- Location: FF_X16_Y13_N9
\U_MASTER|U_P2S|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~8_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(4));

-- Location: LCCOMB_X16_Y13_N10
\U_MASTER|U_P2S|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~10_combout\ = (\U_MASTER|U_P2S|cont\(5) & (!\U_MASTER|U_P2S|Add0~9\)) # (!\U_MASTER|U_P2S|cont\(5) & ((\U_MASTER|U_P2S|Add0~9\) # (GND)))
-- \U_MASTER|U_P2S|Add0~11\ = CARRY((!\U_MASTER|U_P2S|Add0~9\) # (!\U_MASTER|U_P2S|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(5),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~9\,
	combout => \U_MASTER|U_P2S|Add0~10_combout\,
	cout => \U_MASTER|U_P2S|Add0~11\);

-- Location: FF_X16_Y13_N11
\U_MASTER|U_P2S|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~10_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(5));

-- Location: LCCOMB_X16_Y13_N12
\U_MASTER|U_P2S|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~12_combout\ = (\U_MASTER|U_P2S|cont\(6) & (\U_MASTER|U_P2S|Add0~11\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(6) & (!\U_MASTER|U_P2S|Add0~11\ & VCC))
-- \U_MASTER|U_P2S|Add0~13\ = CARRY((\U_MASTER|U_P2S|cont\(6) & !\U_MASTER|U_P2S|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(6),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~11\,
	combout => \U_MASTER|U_P2S|Add0~12_combout\,
	cout => \U_MASTER|U_P2S|Add0~13\);

-- Location: FF_X16_Y13_N13
\U_MASTER|U_P2S|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~12_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(6));

-- Location: LCCOMB_X16_Y13_N14
\U_MASTER|U_P2S|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~14_combout\ = (\U_MASTER|U_P2S|cont\(7) & (!\U_MASTER|U_P2S|Add0~13\)) # (!\U_MASTER|U_P2S|cont\(7) & ((\U_MASTER|U_P2S|Add0~13\) # (GND)))
-- \U_MASTER|U_P2S|Add0~15\ = CARRY((!\U_MASTER|U_P2S|Add0~13\) # (!\U_MASTER|U_P2S|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(7),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~13\,
	combout => \U_MASTER|U_P2S|Add0~14_combout\,
	cout => \U_MASTER|U_P2S|Add0~15\);

-- Location: FF_X16_Y13_N15
\U_MASTER|U_P2S|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~14_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(7));

-- Location: LCCOMB_X15_Y13_N10
\U_MASTER|U_P2S|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~7_combout\ = (!\U_MASTER|U_P2S|cont\(7) & (!\U_MASTER|U_P2S|cont\(5) & (!\U_MASTER|U_P2S|cont\(6) & !\U_MASTER|U_P2S|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(7),
	datab => \U_MASTER|U_P2S|cont\(5),
	datac => \U_MASTER|U_P2S|cont\(6),
	datad => \U_MASTER|U_P2S|cont\(4),
	combout => \U_MASTER|U_P2S|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y13_N18
\U_MASTER|U_P2S|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~8_combout\ = (!\U_MASTER|U_P2S|cont\(1) & (!\U_MASTER|U_P2S|cont[0]~2_combout\ & (!\U_MASTER|U_P2S|cont\(2) & !\U_MASTER|U_P2S|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(1),
	datab => \U_MASTER|U_P2S|cont[0]~2_combout\,
	datac => \U_MASTER|U_P2S|cont\(2),
	datad => \U_MASTER|U_P2S|cont\(3),
	combout => \U_MASTER|U_P2S|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y13_N16
\U_MASTER|U_P2S|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~16_combout\ = (\U_MASTER|U_P2S|cont\(8) & (\U_MASTER|U_P2S|Add0~15\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(8) & (!\U_MASTER|U_P2S|Add0~15\ & VCC))
-- \U_MASTER|U_P2S|Add0~17\ = CARRY((\U_MASTER|U_P2S|cont\(8) & !\U_MASTER|U_P2S|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(8),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~15\,
	combout => \U_MASTER|U_P2S|Add0~16_combout\,
	cout => \U_MASTER|U_P2S|Add0~17\);

-- Location: FF_X16_Y13_N17
\U_MASTER|U_P2S|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~16_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(8));

-- Location: LCCOMB_X16_Y13_N18
\U_MASTER|U_P2S|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~18_combout\ = (\U_MASTER|U_P2S|cont\(9) & (!\U_MASTER|U_P2S|Add0~17\)) # (!\U_MASTER|U_P2S|cont\(9) & ((\U_MASTER|U_P2S|Add0~17\) # (GND)))
-- \U_MASTER|U_P2S|Add0~19\ = CARRY((!\U_MASTER|U_P2S|Add0~17\) # (!\U_MASTER|U_P2S|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(9),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~17\,
	combout => \U_MASTER|U_P2S|Add0~18_combout\,
	cout => \U_MASTER|U_P2S|Add0~19\);

-- Location: FF_X16_Y13_N19
\U_MASTER|U_P2S|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~18_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(9));

-- Location: LCCOMB_X16_Y13_N20
\U_MASTER|U_P2S|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~20_combout\ = (\U_MASTER|U_P2S|cont\(10) & (\U_MASTER|U_P2S|Add0~19\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(10) & (!\U_MASTER|U_P2S|Add0~19\ & VCC))
-- \U_MASTER|U_P2S|Add0~21\ = CARRY((\U_MASTER|U_P2S|cont\(10) & !\U_MASTER|U_P2S|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(10),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~19\,
	combout => \U_MASTER|U_P2S|Add0~20_combout\,
	cout => \U_MASTER|U_P2S|Add0~21\);

-- Location: FF_X16_Y13_N21
\U_MASTER|U_P2S|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~20_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(10));

-- Location: LCCOMB_X16_Y13_N22
\U_MASTER|U_P2S|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~22_combout\ = (\U_MASTER|U_P2S|cont\(11) & (!\U_MASTER|U_P2S|Add0~21\)) # (!\U_MASTER|U_P2S|cont\(11) & ((\U_MASTER|U_P2S|Add0~21\) # (GND)))
-- \U_MASTER|U_P2S|Add0~23\ = CARRY((!\U_MASTER|U_P2S|Add0~21\) # (!\U_MASTER|U_P2S|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(11),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~21\,
	combout => \U_MASTER|U_P2S|Add0~22_combout\,
	cout => \U_MASTER|U_P2S|Add0~23\);

-- Location: FF_X16_Y13_N23
\U_MASTER|U_P2S|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~22_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(11));

-- Location: LCCOMB_X16_Y13_N24
\U_MASTER|U_P2S|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~24_combout\ = (\U_MASTER|U_P2S|cont\(12) & (\U_MASTER|U_P2S|Add0~23\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(12) & (!\U_MASTER|U_P2S|Add0~23\ & VCC))
-- \U_MASTER|U_P2S|Add0~25\ = CARRY((\U_MASTER|U_P2S|cont\(12) & !\U_MASTER|U_P2S|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(12),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~23\,
	combout => \U_MASTER|U_P2S|Add0~24_combout\,
	cout => \U_MASTER|U_P2S|Add0~25\);

-- Location: FF_X16_Y13_N25
\U_MASTER|U_P2S|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~24_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(12));

-- Location: LCCOMB_X16_Y13_N26
\U_MASTER|U_P2S|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~26_combout\ = (\U_MASTER|U_P2S|cont\(13) & (!\U_MASTER|U_P2S|Add0~25\)) # (!\U_MASTER|U_P2S|cont\(13) & ((\U_MASTER|U_P2S|Add0~25\) # (GND)))
-- \U_MASTER|U_P2S|Add0~27\ = CARRY((!\U_MASTER|U_P2S|Add0~25\) # (!\U_MASTER|U_P2S|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(13),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~25\,
	combout => \U_MASTER|U_P2S|Add0~26_combout\,
	cout => \U_MASTER|U_P2S|Add0~27\);

-- Location: FF_X16_Y13_N27
\U_MASTER|U_P2S|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~26_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(13));

-- Location: LCCOMB_X16_Y13_N28
\U_MASTER|U_P2S|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~28_combout\ = (\U_MASTER|U_P2S|cont\(14) & (\U_MASTER|U_P2S|Add0~27\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(14) & (!\U_MASTER|U_P2S|Add0~27\ & VCC))
-- \U_MASTER|U_P2S|Add0~29\ = CARRY((\U_MASTER|U_P2S|cont\(14) & !\U_MASTER|U_P2S|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(14),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~27\,
	combout => \U_MASTER|U_P2S|Add0~28_combout\,
	cout => \U_MASTER|U_P2S|Add0~29\);

-- Location: FF_X16_Y13_N29
\U_MASTER|U_P2S|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~28_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(14));

-- Location: LCCOMB_X16_Y13_N30
\U_MASTER|U_P2S|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~30_combout\ = (\U_MASTER|U_P2S|cont\(15) & (!\U_MASTER|U_P2S|Add0~29\)) # (!\U_MASTER|U_P2S|cont\(15) & ((\U_MASTER|U_P2S|Add0~29\) # (GND)))
-- \U_MASTER|U_P2S|Add0~31\ = CARRY((!\U_MASTER|U_P2S|Add0~29\) # (!\U_MASTER|U_P2S|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(15),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~29\,
	combout => \U_MASTER|U_P2S|Add0~30_combout\,
	cout => \U_MASTER|U_P2S|Add0~31\);

-- Location: FF_X16_Y13_N31
\U_MASTER|U_P2S|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~30_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(15));

-- Location: LCCOMB_X15_Y13_N14
\U_MASTER|U_P2S|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~5_combout\ = (!\U_MASTER|U_P2S|cont\(15) & (!\U_MASTER|U_P2S|cont\(12) & (!\U_MASTER|U_P2S|cont\(13) & !\U_MASTER|U_P2S|cont\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(15),
	datab => \U_MASTER|U_P2S|cont\(12),
	datac => \U_MASTER|U_P2S|cont\(13),
	datad => \U_MASTER|U_P2S|cont\(14),
	combout => \U_MASTER|U_P2S|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y13_N24
\U_MASTER|U_P2S|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~6_combout\ = (!\U_MASTER|U_P2S|cont\(10) & (!\U_MASTER|U_P2S|cont\(11) & (!\U_MASTER|U_P2S|cont\(9) & !\U_MASTER|U_P2S|cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(10),
	datab => \U_MASTER|U_P2S|cont\(11),
	datac => \U_MASTER|U_P2S|cont\(9),
	datad => \U_MASTER|U_P2S|cont\(8),
	combout => \U_MASTER|U_P2S|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y13_N22
\U_MASTER|U_P2S|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~9_combout\ = (\U_MASTER|U_P2S|Equal0~7_combout\ & (\U_MASTER|U_P2S|Equal0~8_combout\ & (\U_MASTER|U_P2S|Equal0~5_combout\ & \U_MASTER|U_P2S|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~7_combout\,
	datab => \U_MASTER|U_P2S|Equal0~8_combout\,
	datac => \U_MASTER|U_P2S|Equal0~5_combout\,
	datad => \U_MASTER|U_P2S|Equal0~6_combout\,
	combout => \U_MASTER|U_P2S|Equal0~9_combout\);

-- Location: LCCOMB_X16_Y12_N0
\U_MASTER|U_P2S|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~32_combout\ = (\U_MASTER|U_P2S|cont\(16) & (\U_MASTER|U_P2S|Add0~31\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(16) & (!\U_MASTER|U_P2S|Add0~31\ & VCC))
-- \U_MASTER|U_P2S|Add0~33\ = CARRY((\U_MASTER|U_P2S|cont\(16) & !\U_MASTER|U_P2S|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(16),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~31\,
	combout => \U_MASTER|U_P2S|Add0~32_combout\,
	cout => \U_MASTER|U_P2S|Add0~33\);

-- Location: FF_X16_Y12_N1
\U_MASTER|U_P2S|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~32_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(16));

-- Location: LCCOMB_X16_Y12_N2
\U_MASTER|U_P2S|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~34_combout\ = (\U_MASTER|U_P2S|cont\(17) & (!\U_MASTER|U_P2S|Add0~33\)) # (!\U_MASTER|U_P2S|cont\(17) & ((\U_MASTER|U_P2S|Add0~33\) # (GND)))
-- \U_MASTER|U_P2S|Add0~35\ = CARRY((!\U_MASTER|U_P2S|Add0~33\) # (!\U_MASTER|U_P2S|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(17),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~33\,
	combout => \U_MASTER|U_P2S|Add0~34_combout\,
	cout => \U_MASTER|U_P2S|Add0~35\);

-- Location: FF_X16_Y12_N3
\U_MASTER|U_P2S|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~34_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(17));

-- Location: LCCOMB_X16_Y12_N4
\U_MASTER|U_P2S|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~36_combout\ = (\U_MASTER|U_P2S|cont\(18) & (\U_MASTER|U_P2S|Add0~35\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(18) & (!\U_MASTER|U_P2S|Add0~35\ & VCC))
-- \U_MASTER|U_P2S|Add0~37\ = CARRY((\U_MASTER|U_P2S|cont\(18) & !\U_MASTER|U_P2S|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(18),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~35\,
	combout => \U_MASTER|U_P2S|Add0~36_combout\,
	cout => \U_MASTER|U_P2S|Add0~37\);

-- Location: FF_X16_Y12_N5
\U_MASTER|U_P2S|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~36_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(18));

-- Location: LCCOMB_X16_Y12_N6
\U_MASTER|U_P2S|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~38_combout\ = (\U_MASTER|U_P2S|cont\(19) & (!\U_MASTER|U_P2S|Add0~37\)) # (!\U_MASTER|U_P2S|cont\(19) & ((\U_MASTER|U_P2S|Add0~37\) # (GND)))
-- \U_MASTER|U_P2S|Add0~39\ = CARRY((!\U_MASTER|U_P2S|Add0~37\) # (!\U_MASTER|U_P2S|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(19),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~37\,
	combout => \U_MASTER|U_P2S|Add0~38_combout\,
	cout => \U_MASTER|U_P2S|Add0~39\);

-- Location: FF_X16_Y12_N7
\U_MASTER|U_P2S|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~38_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(19));

-- Location: LCCOMB_X17_Y12_N24
\U_MASTER|U_P2S|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~4_combout\ = (!\U_MASTER|U_P2S|cont\(16) & (!\U_MASTER|U_P2S|cont\(18) & (!\U_MASTER|U_P2S|cont\(19) & !\U_MASTER|U_P2S|cont\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(16),
	datab => \U_MASTER|U_P2S|cont\(18),
	datac => \U_MASTER|U_P2S|cont\(19),
	datad => \U_MASTER|U_P2S|cont\(17),
	combout => \U_MASTER|U_P2S|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y12_N8
\U_MASTER|U_P2S|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~40_combout\ = (\U_MASTER|U_P2S|cont\(20) & (\U_MASTER|U_P2S|Add0~39\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(20) & (!\U_MASTER|U_P2S|Add0~39\ & VCC))
-- \U_MASTER|U_P2S|Add0~41\ = CARRY((\U_MASTER|U_P2S|cont\(20) & !\U_MASTER|U_P2S|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(20),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~39\,
	combout => \U_MASTER|U_P2S|Add0~40_combout\,
	cout => \U_MASTER|U_P2S|Add0~41\);

-- Location: FF_X16_Y12_N9
\U_MASTER|U_P2S|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~40_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(20));

-- Location: LCCOMB_X16_Y12_N10
\U_MASTER|U_P2S|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~42_combout\ = (\U_MASTER|U_P2S|cont\(21) & (!\U_MASTER|U_P2S|Add0~41\)) # (!\U_MASTER|U_P2S|cont\(21) & ((\U_MASTER|U_P2S|Add0~41\) # (GND)))
-- \U_MASTER|U_P2S|Add0~43\ = CARRY((!\U_MASTER|U_P2S|Add0~41\) # (!\U_MASTER|U_P2S|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(21),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~41\,
	combout => \U_MASTER|U_P2S|Add0~42_combout\,
	cout => \U_MASTER|U_P2S|Add0~43\);

-- Location: FF_X16_Y12_N11
\U_MASTER|U_P2S|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~42_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(21));

-- Location: LCCOMB_X16_Y12_N12
\U_MASTER|U_P2S|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~44_combout\ = (\U_MASTER|U_P2S|cont\(22) & (\U_MASTER|U_P2S|Add0~43\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(22) & (!\U_MASTER|U_P2S|Add0~43\ & VCC))
-- \U_MASTER|U_P2S|Add0~45\ = CARRY((\U_MASTER|U_P2S|cont\(22) & !\U_MASTER|U_P2S|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(22),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~43\,
	combout => \U_MASTER|U_P2S|Add0~44_combout\,
	cout => \U_MASTER|U_P2S|Add0~45\);

-- Location: FF_X16_Y12_N13
\U_MASTER|U_P2S|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~44_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(22));

-- Location: LCCOMB_X16_Y12_N14
\U_MASTER|U_P2S|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~46_combout\ = (\U_MASTER|U_P2S|cont\(23) & (!\U_MASTER|U_P2S|Add0~45\)) # (!\U_MASTER|U_P2S|cont\(23) & ((\U_MASTER|U_P2S|Add0~45\) # (GND)))
-- \U_MASTER|U_P2S|Add0~47\ = CARRY((!\U_MASTER|U_P2S|Add0~45\) # (!\U_MASTER|U_P2S|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(23),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~45\,
	combout => \U_MASTER|U_P2S|Add0~46_combout\,
	cout => \U_MASTER|U_P2S|Add0~47\);

-- Location: FF_X16_Y12_N15
\U_MASTER|U_P2S|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~46_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(23));

-- Location: LCCOMB_X17_Y12_N30
\U_MASTER|U_P2S|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~3_combout\ = (!\U_MASTER|U_P2S|cont\(23) & (!\U_MASTER|U_P2S|cont\(20) & (!\U_MASTER|U_P2S|cont\(21) & !\U_MASTER|U_P2S|cont\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(23),
	datab => \U_MASTER|U_P2S|cont\(20),
	datac => \U_MASTER|U_P2S|cont\(21),
	datad => \U_MASTER|U_P2S|cont\(22),
	combout => \U_MASTER|U_P2S|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y12_N16
\U_MASTER|U_P2S|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~48_combout\ = (\U_MASTER|U_P2S|cont\(24) & (\U_MASTER|U_P2S|Add0~47\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(24) & (!\U_MASTER|U_P2S|Add0~47\ & VCC))
-- \U_MASTER|U_P2S|Add0~49\ = CARRY((\U_MASTER|U_P2S|cont\(24) & !\U_MASTER|U_P2S|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(24),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~47\,
	combout => \U_MASTER|U_P2S|Add0~48_combout\,
	cout => \U_MASTER|U_P2S|Add0~49\);

-- Location: FF_X16_Y12_N17
\U_MASTER|U_P2S|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~48_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(24));

-- Location: LCCOMB_X16_Y12_N18
\U_MASTER|U_P2S|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~50_combout\ = (\U_MASTER|U_P2S|cont\(25) & (!\U_MASTER|U_P2S|Add0~49\)) # (!\U_MASTER|U_P2S|cont\(25) & ((\U_MASTER|U_P2S|Add0~49\) # (GND)))
-- \U_MASTER|U_P2S|Add0~51\ = CARRY((!\U_MASTER|U_P2S|Add0~49\) # (!\U_MASTER|U_P2S|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(25),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~49\,
	combout => \U_MASTER|U_P2S|Add0~50_combout\,
	cout => \U_MASTER|U_P2S|Add0~51\);

-- Location: FF_X16_Y12_N19
\U_MASTER|U_P2S|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~50_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(25));

-- Location: LCCOMB_X16_Y12_N20
\U_MASTER|U_P2S|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~52_combout\ = (\U_MASTER|U_P2S|cont\(26) & (\U_MASTER|U_P2S|Add0~51\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(26) & (!\U_MASTER|U_P2S|Add0~51\ & VCC))
-- \U_MASTER|U_P2S|Add0~53\ = CARRY((\U_MASTER|U_P2S|cont\(26) & !\U_MASTER|U_P2S|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(26),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~51\,
	combout => \U_MASTER|U_P2S|Add0~52_combout\,
	cout => \U_MASTER|U_P2S|Add0~53\);

-- Location: LCCOMB_X16_Y12_N22
\U_MASTER|U_P2S|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~54_combout\ = (\U_MASTER|U_P2S|cont\(27) & (!\U_MASTER|U_P2S|Add0~53\)) # (!\U_MASTER|U_P2S|cont\(27) & ((\U_MASTER|U_P2S|Add0~53\) # (GND)))
-- \U_MASTER|U_P2S|Add0~55\ = CARRY((!\U_MASTER|U_P2S|Add0~53\) # (!\U_MASTER|U_P2S|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(27),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~53\,
	combout => \U_MASTER|U_P2S|Add0~54_combout\,
	cout => \U_MASTER|U_P2S|Add0~55\);

-- Location: FF_X16_Y12_N23
\U_MASTER|U_P2S|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~54_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(27));

-- Location: LCCOMB_X16_Y12_N24
\U_MASTER|U_P2S|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~56_combout\ = (\U_MASTER|U_P2S|cont\(28) & (\U_MASTER|U_P2S|Add0~55\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(28) & (!\U_MASTER|U_P2S|Add0~55\ & VCC))
-- \U_MASTER|U_P2S|Add0~57\ = CARRY((\U_MASTER|U_P2S|cont\(28) & !\U_MASTER|U_P2S|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(28),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~55\,
	combout => \U_MASTER|U_P2S|Add0~56_combout\,
	cout => \U_MASTER|U_P2S|Add0~57\);

-- Location: FF_X16_Y12_N25
\U_MASTER|U_P2S|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~56_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(28));

-- Location: LCCOMB_X16_Y12_N26
\U_MASTER|U_P2S|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~58_combout\ = (\U_MASTER|U_P2S|cont\(29) & (!\U_MASTER|U_P2S|Add0~57\)) # (!\U_MASTER|U_P2S|cont\(29) & ((\U_MASTER|U_P2S|Add0~57\) # (GND)))
-- \U_MASTER|U_P2S|Add0~59\ = CARRY((!\U_MASTER|U_P2S|Add0~57\) # (!\U_MASTER|U_P2S|cont\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(29),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~57\,
	combout => \U_MASTER|U_P2S|Add0~58_combout\,
	cout => \U_MASTER|U_P2S|Add0~59\);

-- Location: FF_X16_Y12_N27
\U_MASTER|U_P2S|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~58_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(29));

-- Location: LCCOMB_X16_Y12_N28
\U_MASTER|U_P2S|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~60_combout\ = (\U_MASTER|U_P2S|cont\(30) & (\U_MASTER|U_P2S|Add0~59\ $ (GND))) # (!\U_MASTER|U_P2S|cont\(30) & (!\U_MASTER|U_P2S|Add0~59\ & VCC))
-- \U_MASTER|U_P2S|Add0~61\ = CARRY((\U_MASTER|U_P2S|cont\(30) & !\U_MASTER|U_P2S|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|cont\(30),
	datad => VCC,
	cin => \U_MASTER|U_P2S|Add0~59\,
	combout => \U_MASTER|U_P2S|Add0~60_combout\,
	cout => \U_MASTER|U_P2S|Add0~61\);

-- Location: FF_X16_Y12_N29
\U_MASTER|U_P2S|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~60_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(30));

-- Location: LCCOMB_X17_Y12_N14
\U_MASTER|U_P2S|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~1_combout\ = (!\U_MASTER|U_P2S|cont\(24) & (!\U_MASTER|U_P2S|cont\(27) & (!\U_MASTER|U_P2S|cont\(25) & !\U_MASTER|U_P2S|cont\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(24),
	datab => \U_MASTER|U_P2S|cont\(27),
	datac => \U_MASTER|U_P2S|cont\(25),
	datad => \U_MASTER|U_P2S|cont\(26),
	combout => \U_MASTER|U_P2S|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y12_N8
\U_MASTER|U_P2S|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~0_combout\ = (!\U_MASTER|U_P2S|cont\(29) & !\U_MASTER|U_P2S|cont\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|cont\(29),
	datad => \U_MASTER|U_P2S|cont\(28),
	combout => \U_MASTER|U_P2S|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y12_N30
\U_MASTER|U_P2S|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Add0~62_combout\ = \U_MASTER|U_P2S|cont\(31) $ (\U_MASTER|U_P2S|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(31),
	cin => \U_MASTER|U_P2S|Add0~61\,
	combout => \U_MASTER|U_P2S|Add0~62_combout\);

-- Location: FF_X16_Y12_N31
\U_MASTER|U_P2S|cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~62_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(31));

-- Location: LCCOMB_X17_Y12_N4
\U_MASTER|U_P2S|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~2_combout\ = (!\U_MASTER|U_P2S|cont\(30) & (\U_MASTER|U_P2S|Equal0~1_combout\ & (\U_MASTER|U_P2S|Equal0~0_combout\ & !\U_MASTER|U_P2S|cont\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|cont\(30),
	datab => \U_MASTER|U_P2S|Equal0~1_combout\,
	datac => \U_MASTER|U_P2S|Equal0~0_combout\,
	datad => \U_MASTER|U_P2S|cont\(31),
	combout => \U_MASTER|U_P2S|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y3_N30
\U_MASTER|U_P2S|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|Equal0~10_combout\ = (\U_MASTER|U_P2S|Equal0~9_combout\ & (\U_MASTER|U_P2S|Equal0~4_combout\ & (\U_MASTER|U_P2S|Equal0~3_combout\ & \U_MASTER|U_P2S|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~9_combout\,
	datab => \U_MASTER|U_P2S|Equal0~4_combout\,
	datac => \U_MASTER|U_P2S|Equal0~3_combout\,
	datad => \U_MASTER|U_P2S|Equal0~2_combout\,
	combout => \U_MASTER|U_P2S|Equal0~10_combout\);

-- Location: LCCOMB_X15_Y14_N2
\U_MASTER|U_P2S|cont[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|cont[0]~8_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & !\U_MASTER|U_P2S|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|Equal0~10_combout\,
	datad => \U_MASTER|U_P2S|process_0~0_combout\,
	combout => \U_MASTER|U_P2S|cont[0]~8_combout\);

-- Location: LCCOMB_X15_Y14_N28
\U_MASTER|U_P2S|cont[31]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|cont[31]~7_combout\ = (\U_MASTER|U_P2S|process_0~0_combout\) # (\U_MASTER|U_P2S|cont[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|process_0~0_combout\,
	datad => \U_MASTER|U_P2S|cont[0]~8_combout\,
	combout => \U_MASTER|U_P2S|cont[31]~7_combout\);

-- Location: FF_X16_Y12_N21
\U_MASTER|U_P2S|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|Add0~52_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_cont[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|cont\(26));

-- Location: LCCOMB_X15_Y12_N14
\U_MASTER|U_P2S|o_CTRL_P2S~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~7_combout\ = (!\U_MASTER|U_P2S|Add0~46_combout\ & (!\U_MASTER|U_P2S|Add0~44_combout\ & (!\U_MASTER|U_P2S|Add0~42_combout\ & !\U_MASTER|U_P2S|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~46_combout\,
	datab => \U_MASTER|U_P2S|Add0~44_combout\,
	datac => \U_MASTER|U_P2S|Add0~42_combout\,
	datad => \U_MASTER|U_P2S|Add0~48_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~7_combout\);

-- Location: LCCOMB_X15_Y12_N20
\U_MASTER|U_P2S|o_CTRL_P2S~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~8_combout\ = (\U_MASTER|U_P2S|Add0~60_combout\) # ((\U_MASTER|U_P2S|Add0~54_combout\) # ((\U_MASTER|U_P2S|Add0~50_combout\) # (\U_MASTER|U_P2S|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~60_combout\,
	datab => \U_MASTER|U_P2S|Add0~54_combout\,
	datac => \U_MASTER|U_P2S|Add0~50_combout\,
	datad => \U_MASTER|U_P2S|Add0~58_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~8_combout\);

-- Location: LCCOMB_X15_Y12_N10
\U_MASTER|U_P2S|o_CTRL_P2S~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~9_combout\ = (!\U_MASTER|U_P2S|Add0~52_combout\ & (!\U_MASTER|U_P2S|Add0~62_combout\ & (\U_MASTER|U_P2S|o_CTRL_P2S~7_combout\ & !\U_MASTER|U_P2S|o_CTRL_P2S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~52_combout\,
	datab => \U_MASTER|U_P2S|Add0~62_combout\,
	datac => \U_MASTER|U_P2S|o_CTRL_P2S~7_combout\,
	datad => \U_MASTER|U_P2S|o_CTRL_P2S~8_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~9_combout\);

-- Location: LCCOMB_X15_Y12_N22
\U_MASTER|U_P2S|o_CTRL_P2S~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~5_combout\ = (!\U_MASTER|U_P2S|Add0~36_combout\ & (!\U_MASTER|U_P2S|Add0~34_combout\ & (!\U_MASTER|U_P2S|Add0~40_combout\ & !\U_MASTER|U_P2S|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~36_combout\,
	datab => \U_MASTER|U_P2S|Add0~34_combout\,
	datac => \U_MASTER|U_P2S|Add0~40_combout\,
	datad => \U_MASTER|U_P2S|Add0~38_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~5_combout\);

-- Location: LCCOMB_X15_Y12_N26
\U_MASTER|U_P2S|o_CTRL_P2S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~2_combout\ = (!\U_MASTER|U_P2S|Add0~10_combout\ & (!\U_MASTER|U_P2S|Add0~12_combout\ & (!\U_MASTER|U_P2S|Add0~14_combout\ & !\U_MASTER|U_P2S|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~10_combout\,
	datab => \U_MASTER|U_P2S|Add0~12_combout\,
	datac => \U_MASTER|U_P2S|Add0~14_combout\,
	datad => \U_MASTER|U_P2S|Add0~16_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~2_combout\);

-- Location: LCCOMB_X15_Y13_N30
\U_MASTER|U_P2S|o_CTRL_P2S~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~3_combout\ = (!\U_MASTER|U_P2S|Add0~4_combout\ & (\U_MASTER|U_P2S|Add0~8_combout\ & (!\U_MASTER|U_P2S|Add0~2_combout\ & !\U_MASTER|U_P2S|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~4_combout\,
	datab => \U_MASTER|U_P2S|Add0~8_combout\,
	datac => \U_MASTER|U_P2S|Add0~2_combout\,
	datad => \U_MASTER|U_P2S|Add0~6_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~3_combout\);

-- Location: LCCOMB_X15_Y12_N4
\U_MASTER|U_P2S|o_CTRL_P2S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~1_combout\ = (!\U_MASTER|U_P2S|Add0~20_combout\ & (!\U_MASTER|U_P2S|Add0~18_combout\ & (!\U_MASTER|U_P2S|Add0~22_combout\ & !\U_MASTER|U_P2S|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~20_combout\,
	datab => \U_MASTER|U_P2S|Add0~18_combout\,
	datac => \U_MASTER|U_P2S|Add0~22_combout\,
	datad => \U_MASTER|U_P2S|Add0~24_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~1_combout\);

-- Location: LCCOMB_X15_Y12_N6
\U_MASTER|U_P2S|o_CTRL_P2S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~0_combout\ = (!\U_MASTER|U_P2S|Add0~26_combout\ & (!\U_MASTER|U_P2S|Add0~32_combout\ & (!\U_MASTER|U_P2S|Add0~30_combout\ & !\U_MASTER|U_P2S|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Add0~26_combout\,
	datab => \U_MASTER|U_P2S|Add0~32_combout\,
	datac => \U_MASTER|U_P2S|Add0~30_combout\,
	datad => \U_MASTER|U_P2S|Add0~28_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~0_combout\);

-- Location: LCCOMB_X15_Y12_N28
\U_MASTER|U_P2S|o_CTRL_P2S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~4_combout\ = (\U_MASTER|U_P2S|o_CTRL_P2S~2_combout\ & (\U_MASTER|U_P2S|o_CTRL_P2S~3_combout\ & (\U_MASTER|U_P2S|o_CTRL_P2S~1_combout\ & \U_MASTER|U_P2S|o_CTRL_P2S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|o_CTRL_P2S~2_combout\,
	datab => \U_MASTER|U_P2S|o_CTRL_P2S~3_combout\,
	datac => \U_MASTER|U_P2S|o_CTRL_P2S~1_combout\,
	datad => \U_MASTER|U_P2S|o_CTRL_P2S~0_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~4_combout\);

-- Location: LCCOMB_X15_Y12_N12
\U_MASTER|U_P2S|o_CTRL_P2S~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~6_combout\ = (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|Add0~0_combout\ & (\U_MASTER|U_P2S|o_CTRL_P2S~5_combout\ & \U_MASTER|U_P2S|o_CTRL_P2S~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|Add0~0_combout\,
	datac => \U_MASTER|U_P2S|o_CTRL_P2S~5_combout\,
	datad => \U_MASTER|U_P2S|o_CTRL_P2S~4_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~6_combout\);

-- Location: LCCOMB_X15_Y12_N8
\U_MASTER|U_P2S|o_CTRL_P2S~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_CTRL_P2S~10_combout\ = (\U_MASTER|U_P2S|o_CTRL_P2S~q\) # ((\U_MASTER|U_P2S|o_CTRL_P2S~9_combout\ & (!\U_MASTER|U_P2S|Add0~56_combout\ & \U_MASTER|U_P2S|o_CTRL_P2S~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|o_CTRL_P2S~9_combout\,
	datab => \U_MASTER|U_P2S|Add0~56_combout\,
	datac => \U_MASTER|U_P2S|o_CTRL_P2S~q\,
	datad => \U_MASTER|U_P2S|o_CTRL_P2S~6_combout\,
	combout => \U_MASTER|U_P2S|o_CTRL_P2S~10_combout\);

-- Location: FF_X15_Y12_N9
\U_MASTER|U_P2S|o_CTRL_P2S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|o_CTRL_P2S~10_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|o_CTRL_P2S~q\);

-- Location: LCCOMB_X15_Y22_N24
\U_MASTER|U_STM_MASTER|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~18_combout\ = (!\U_MASTER|U_STM_MASTER|Selector4~0_combout\ & (!\U_MASTER|U_STM_MASTER|state.st_READ_SW~q\ & ((!\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\) # (!\U_MASTER|U_P2S|o_CTRL_P2S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector4~0_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\,
	datac => \U_MASTER|U_P2S|o_CTRL_P2S~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	combout => \U_MASTER|U_STM_MASTER|state~18_combout\);

-- Location: LCCOMB_X16_Y22_N18
\U_MASTER|U_STOP_FRAME|o_CTRL_STOP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~feeder_combout\);

-- Location: LCCOMB_X15_Y22_N6
\U_MASTER|U_STM_MASTER|state.st_IDLE~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\ = (\U_MASTER|U_STM_MASTER|state.st_IDLE~q\ & !\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\);

-- Location: LCCOMB_X16_Y22_N28
\U_MASTER|U_STM_MASTER|o_ENABLE_STOP\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\ & (\U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\)) # (!\U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\ & 
-- ((\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~3_combout\,
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\);

-- Location: LCCOMB_X16_Y22_N24
\U_MASTER|U_STOP_FRAME|o_CTRL_STOP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~0_combout\ = (!\U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|o_ENABLE_STOP~combout\,
	combout => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~0_combout\);

-- Location: FF_X16_Y22_N19
\U_MASTER|U_STOP_FRAME|o_CTRL_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~feeder_combout\,
	clrn => \U_MASTER|U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\);

-- Location: LCCOMB_X15_Y22_N20
\U_MASTER|U_STM_MASTER|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|Selector1~2_combout\ = (\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & ((\U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\) # ((\U_MASTER|U_STM_MASTER|state~18_combout\ & !\U_MASTER|U_STM_MASTER|Selector4~2_combout\)))) # 
-- (!\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & (\U_MASTER|U_STM_MASTER|state~18_combout\ & (!\U_MASTER|U_STM_MASTER|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datab => \U_MASTER|U_STM_MASTER|state~18_combout\,
	datac => \U_MASTER|U_STM_MASTER|Selector4~2_combout\,
	datad => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_MASTER|U_STM_MASTER|Selector1~2_combout\);

-- Location: LCCOMB_X15_Y14_N18
\U_MASTER|U_STM_MASTER|state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~26_combout\ = (!\U_MASTER|U_STM_MASTER|Selector4~2_combout\ & (\U_MASTER|U_STM_MASTER|state~18_combout\ & (\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & !\U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector4~2_combout\,
	datab => \U_MASTER|U_STM_MASTER|state~18_combout\,
	datac => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_MASTER|U_STM_MASTER|state~26_combout\);

-- Location: LCCOMB_X15_Y22_N16
\U_MASTER|U_STM_MASTER|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|Selector4~3_combout\ = (\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\ & \U_MASTER|U_P2S|o_CTRL_P2S~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_MASTER|U_P2S|o_CTRL_P2S~q\,
	combout => \U_MASTER|U_STM_MASTER|Selector4~3_combout\);

-- Location: LCCOMB_X15_Y14_N4
\U_MASTER|U_STM_MASTER|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~21_combout\ = (\U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ & ((\U_MASTER|U_STM_MASTER|state~26_combout\) # ((!\U_MASTER|U_STM_MASTER|Selector1~2_combout\ & \U_MASTER|U_STM_MASTER|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector1~2_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\,
	datac => \U_MASTER|U_STM_MASTER|state~26_combout\,
	datad => \U_MASTER|U_STM_MASTER|Selector4~3_combout\,
	combout => \U_MASTER|U_STM_MASTER|state~21_combout\);

-- Location: FF_X15_Y14_N25
\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	asdata => \U_MASTER|U_STM_MASTER|state~21_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\);

-- Location: LCCOMB_X15_Y14_N8
\U_MASTER|U_STM_MASTER|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|Selector4~1_combout\ = (\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_MASTER|U_STM_MASTER|Selector4~1_combout\);

-- Location: LCCOMB_X15_Y22_N10
\U_MASTER|U_STM_MASTER|state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~24_combout\ = (!\U_MASTER|U_STM_MASTER|Selector4~1_combout\ & (\U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ & (\U_MASTER|U_STM_MASTER|state~18_combout\ & \U_MASTER|U_STM_MASTER|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|Selector4~1_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\,
	datac => \U_MASTER|U_STM_MASTER|state~18_combout\,
	datad => \U_MASTER|U_STM_MASTER|Selector4~2_combout\,
	combout => \U_MASTER|U_STM_MASTER|state~24_combout\);

-- Location: FF_X15_Y22_N17
\U_MASTER|U_STM_MASTER|state.st_READ_SW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \U_MASTER|U_STM_MASTER|state~24_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\);

-- Location: LCCOMB_X15_Y22_N12
\U_MASTER|U_STM_MASTER|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\ = (!\U_MASTER|U_STM_MASTER|state.st_READ_SW~q\ & ((\U_MASTER|U_STM_MASTER|state.st_IDLE~q\ & (\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ $ (\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\))) # 
-- (!\U_MASTER|U_STM_MASTER|state.st_IDLE~q\ & (!\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & !\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	datac => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	combout => \U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X15_Y22_N2
\U_MASTER|U_STM_MASTER|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\ = (!\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\ & (\U_MASTER|U_STM_MASTER|state.st_IDLE~q\ & (\U_MASTER|U_STM_MASTER|state.st_READ_SW~q\ $ (\U_MASTER|U_STM_MASTER|state.st_START_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datab => \U_MASTER|U_STM_MASTER|state.st_READ_SW~q\,
	datac => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X15_Y22_N14
\U_MASTER|U_STM_MASTER|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ = (\U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\ & (((\U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\ & !\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\)) # (!\U_MASTER|U_STM_MASTER|state.st_START_COM~q\))) # 
-- (!\U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\ & (\U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\ & (!\U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|state.st_IDLE~0_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~1_combout\,
	datac => \U_MASTER|U_STM_MASTER|state.st_SND_DATA~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X15_Y22_N8
\U_MASTER|U_STM_MASTER|state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|state~25_combout\ = (!\U_MASTER|U_STM_MASTER|process_0~0_combout\ & (\U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\ & ((!\U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\) # (!\U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|process_0~0_combout\,
	datab => \U_MASTER|U_STM_MASTER|state.st_IDLE~2_combout\,
	datac => \U_MASTER|U_STM_MASTER|state.st_CLOSE_COM~q\,
	datad => \U_MASTER|U_STOP_FRAME|o_CTRL_STOP~q\,
	combout => \U_MASTER|U_STM_MASTER|state~25_combout\);

-- Location: FF_X15_Y22_N1
\U_MASTER|U_STM_MASTER|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \U_MASTER|U_STM_MASTER|state~25_combout\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\);

-- Location: LCCOMB_X14_Y21_N14
\U_MASTER|U_STM_MASTER|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|WideOr1~0_combout\ = (\U_MASTER|U_STM_MASTER|state.st_START_COM~q\) # (!\U_MASTER|U_STM_MASTER|state.st_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_STM_MASTER|state.st_IDLE~q\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|WideOr1~0_combout\);

-- Location: LCCOMB_X14_Y21_N30
\U_MASTER|U_STM_MASTER|o_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_MASTER|U_STM_MASTER|WideOr1~0_combout\ & ((\U_MASTER|U_STM_MASTER|state.st_START_COM~q\))) # (!\U_MASTER|U_STM_MASTER|WideOr1~0_combout\ & (\U_MASTER|U_STM_MASTER|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_MASTER|U_STM_MASTER|o_ENABLE~combout\,
	datac => \U_MASTER|U_STM_MASTER|WideOr1~0_combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_START_COM~q\,
	combout => \U_MASTER|U_STM_MASTER|o_ENABLE~combout\);

-- Location: CLKCTRL_G9
\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y18_N28
\U_MASTER|U_REG_SCL|o_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_REG_SCL|o_Q~0_combout\ = ((GLOBAL(\U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\)) # (!\i_RST~input_o\)) # (!\U_MASTER|U_STM_MASTER|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_ENABLE~combout\,
	datac => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	datad => \i_RST~input_o\,
	combout => \U_MASTER|U_REG_SCL|o_Q~0_combout\);

-- Location: LCCOMB_X14_Y18_N20
\U_MASTER|U_REG_SCL|o_Q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_REG_SCL|o_Q~feeder_combout\ = \U_MASTER|U_REG_SCL|o_Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_REG_SCL|o_Q~0_combout\,
	combout => \U_MASTER|U_REG_SCL|o_Q~feeder_combout\);

-- Location: FF_X14_Y18_N21
\U_MASTER|U_REG_SCL|o_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_MASTER|U_REG_SCL|o_Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_REG_SCL|o_Q~q\);

-- Location: CLKCTRL_G11
\U_MASTER|U_REG_SCL|o_Q~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y22_N10
\U_MASTER|U_STOP_FRAME|o_SDA~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STOP_FRAME|o_SDA~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_MASTER|U_STOP_FRAME|o_SDA~enfeeder_combout\);

-- Location: FF_X16_Y22_N11
\U_MASTER|U_STOP_FRAME|o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_STOP_FRAME|o_SDA~enfeeder_combout\,
	clrn => \U_MASTER|U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STOP_FRAME|o_SDA~en_q\);

-- Location: LCCOMB_X14_Y16_N24
\U_MASTER|U_P2S|o_SDA~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|o_SDA~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_MASTER|U_P2S|o_SDA~enfeeder_combout\);

-- Location: FF_X14_Y16_N25
\U_MASTER|U_P2S|o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|o_SDA~enfeeder_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|o_SDA~en_q\);

-- Location: LCCOMB_X8_Y23_N24
\U_MASTER|U_STM_MASTER|o_DATA[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[10]~0_combout\ = (\i_BT_A~input_o\ & \i_BT_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BT_A~input_o\,
	datad => \i_BT_B~input_o\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[10]~0_combout\);

-- Location: CLKCTRL_G12
\U_MASTER|U_STM_MASTER|Selector4~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\);

-- Location: LCCOMB_X8_Y23_N6
\U_MASTER|U_STM_MASTER|o_DATA[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[10]~0_combout\))) # (!GLOBAL(\U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\) & 
-- (\U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\,
	datab => \U_MASTER|U_STM_MASTER|o_DATA[10]~0_combout\,
	datac => \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\,
	datad => \i_RST~input_o\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\);

-- Location: CLKCTRL_G17
\U_MASTER|U_P2S|Equal0~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_P2S|Equal0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\);

-- Location: LCCOMB_X8_Y23_N8
\U_MASTER|U_P2S|w_REG[11]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[11]~17_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\)) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_P2S|w_REG[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\,
	datac => \U_MASTER|U_P2S|w_REG[11]~17_combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[11]~17_combout\);

-- Location: LCCOMB_X8_Y23_N30
\U_MASTER|U_STM_MASTER|o_DATA[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[9]~1_combout\ = (\i_BT_B~input_o\) # (!\i_BT_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BT_A~input_o\,
	datad => \i_BT_B~input_o\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[9]~1_combout\);

-- Location: LCCOMB_X8_Y23_N2
\U_MASTER|U_STM_MASTER|o_DATA[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\) & (!\U_MASTER|U_STM_MASTER|o_DATA[9]~1_combout\)) # (!GLOBAL(\U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\) & 
-- ((\U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_DATA[9]~1_combout\,
	datab => \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\,
	datac => \U_MASTER|U_STM_MASTER|Selector4~2clkctrl_outclk\,
	datad => \i_RST~input_o\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\);

-- Location: LCCOMB_X8_Y23_N4
\U_MASTER|U_P2S|w_REG[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[10]~21_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\)) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_P2S|w_REG[10]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\,
	datac => \U_MASTER|U_P2S|w_REG[10]~21_combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[10]~21_combout\);

-- Location: IOIBUF_X0_Y26_N8
\i_DATA_SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(7),
	o => \i_DATA_SW[7]~input_o\);

-- Location: CLKCTRL_G14
\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y23_N4
\U_MASTER|U_STM_MASTER|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[7]~input_o\))) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- (\U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\,
	datab => \i_DATA_SW[7]~input_o\,
	datac => \i_RST~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X1_Y23_N10
\U_MASTER|U_P2S|w_REG[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[8]~25_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_P2S|w_REG[8]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\,
	datac => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	datad => \U_MASTER|U_P2S|w_REG[8]~25_combout\,
	combout => \U_MASTER|U_P2S|w_REG[8]~25_combout\);

-- Location: IOIBUF_X0_Y25_N15
\i_DATA_SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(6),
	o => \i_DATA_SW[6]~input_o\);

-- Location: LCCOMB_X1_Y23_N0
\U_MASTER|U_STM_MASTER|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[6]~input_o\))) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- (\U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\,
	datac => \i_DATA_SW[6]~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X1_Y23_N30
\U_MASTER|U_P2S|w_REG[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[7]~29_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\))) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_P2S|w_REG[7]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[7]~29_combout\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[7]~29_combout\);

-- Location: IOIBUF_X0_Y22_N15
\i_DATA_SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(5),
	o => \i_DATA_SW[5]~input_o\);

-- Location: LCCOMB_X1_Y23_N12
\U_MASTER|U_STM_MASTER|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[5]~input_o\)) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- ((\U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA_SW[5]~input_o\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X1_Y23_N22
\U_MASTER|U_P2S|w_REG[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[6]~33_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\)) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_P2S|w_REG[6]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\,
	datac => \U_MASTER|U_P2S|w_REG[6]~33_combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[6]~33_combout\);

-- Location: IOIBUF_X0_Y27_N22
\i_DATA_SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(4),
	o => \i_DATA_SW[4]~input_o\);

-- Location: LCCOMB_X1_Y23_N20
\U_MASTER|U_STM_MASTER|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[4]~input_o\)) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- ((\U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA_SW[4]~input_o\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X1_Y23_N26
\U_MASTER|U_P2S|w_REG[5]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[5]~37_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_P2S|w_REG[5]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\,
	datac => \U_MASTER|U_P2S|w_REG[5]~37_combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[5]~37_combout\);

-- Location: IOIBUF_X0_Y23_N8
\i_DATA_SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(3),
	o => \i_DATA_SW[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\U_MASTER|U_STM_MASTER|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[3]~input_o\)) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- ((\U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA_SW[3]~input_o\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X1_Y24_N6
\U_MASTER|U_P2S|w_REG[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[4]~41_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\))) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_P2S|w_REG[4]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[4]~41_combout\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[4]~41_combout\);

-- Location: IOIBUF_X0_Y25_N22
\i_DATA_SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(2),
	o => \i_DATA_SW[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\U_MASTER|U_STM_MASTER|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[2]~input_o\))) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- (\U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\,
	datac => \i_DATA_SW[2]~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X1_Y24_N22
\U_MASTER|U_P2S|w_REG[3]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[3]~45_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\))) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_P2S|w_REG[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[3]~45_combout\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[3]~45_combout\);

-- Location: IOIBUF_X0_Y27_N1
\i_DATA_SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(1),
	o => \i_DATA_SW[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\U_MASTER|U_STM_MASTER|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[1]~input_o\)) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- ((\U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA_SW[1]~input_o\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X1_Y24_N30
\U_MASTER|U_P2S|w_REG[2]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[2]~49_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\))) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_P2S|w_REG[2]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|w_REG[2]~49_combout\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[2]~49_combout\);

-- Location: IOIBUF_X0_Y24_N1
\i_DATA_SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(0),
	o => \i_DATA_SW[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\U_MASTER|U_STM_MASTER|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[0]~input_o\))) # (!GLOBAL(\U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\) & 
-- (\U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \i_DATA_SW[0]~input_o\,
	datad => \U_MASTER|U_STM_MASTER|state.st_READ_SW~clkctrl_outclk\,
	combout => \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X1_Y24_N18
\U_MASTER|U_P2S|w_REG[1]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[1]~53_combout\ = (GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & ((\U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\))) # (!GLOBAL(\U_MASTER|U_P2S|Equal0~10clkctrl_outclk\) & (\U_MASTER|U_P2S|w_REG[1]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MASTER|U_P2S|w_REG[1]~53_combout\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10clkctrl_outclk\,
	combout => \U_MASTER|U_P2S|w_REG[1]~53_combout\);

-- Location: FF_X1_Y24_N19
\U_MASTER|U_P2S|w_REG[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[1]~53_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[1]~_emulated_q\);

-- Location: LCCOMB_X1_Y24_N0
\U_MASTER|U_P2S|w_REG[1]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[1]~54_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[1]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[1]~_emulated_q\,
	datab => \U_MASTER|U_P2S|w_REG[1]~53_combout\,
	datac => \U_MASTER|U_P2S|Equal0~10_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[0]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[1]~54_combout\);

-- Location: LCCOMB_X1_Y24_N26
\U_MASTER|U_P2S|w_REG[2]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[2]~51_combout\ = \U_MASTER|U_P2S|w_REG[2]~49_combout\ $ (\U_MASTER|U_P2S|w_REG[1]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[2]~49_combout\,
	datad => \U_MASTER|U_P2S|w_REG[1]~54_combout\,
	combout => \U_MASTER|U_P2S|w_REG[2]~51_combout\);

-- Location: FF_X1_Y24_N27
\U_MASTER|U_P2S|w_REG[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[2]~51_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y24_N24
\U_MASTER|U_P2S|w_REG[2]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[2]~50_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[2]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|w_REG[2]~_emulated_q\,
	datac => \U_MASTER|U_P2S|w_REG[2]~49_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[1]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[2]~50_combout\);

-- Location: LCCOMB_X1_Y24_N14
\U_MASTER|U_P2S|w_REG[3]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[3]~47_combout\ = \U_MASTER|U_P2S|w_REG[3]~45_combout\ $ (\U_MASTER|U_P2S|w_REG[2]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[3]~45_combout\,
	datad => \U_MASTER|U_P2S|w_REG[2]~50_combout\,
	combout => \U_MASTER|U_P2S|w_REG[3]~47_combout\);

-- Location: FF_X1_Y24_N15
\U_MASTER|U_P2S|w_REG[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[3]~47_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[3]~_emulated_q\);

-- Location: LCCOMB_X1_Y24_N12
\U_MASTER|U_P2S|w_REG[3]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[3]~46_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[3]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|w_REG[3]~_emulated_q\,
	datac => \U_MASTER|U_P2S|w_REG[3]~45_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[2]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[3]~46_combout\);

-- Location: LCCOMB_X1_Y24_N2
\U_MASTER|U_P2S|w_REG[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[4]~43_combout\ = \U_MASTER|U_P2S|w_REG[4]~41_combout\ $ (\U_MASTER|U_P2S|w_REG[3]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[4]~41_combout\,
	datad => \U_MASTER|U_P2S|w_REG[3]~46_combout\,
	combout => \U_MASTER|U_P2S|w_REG[4]~43_combout\);

-- Location: FF_X1_Y24_N3
\U_MASTER|U_P2S|w_REG[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[4]~43_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[4]~_emulated_q\);

-- Location: LCCOMB_X1_Y24_N20
\U_MASTER|U_P2S|w_REG[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[4]~42_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[4]~41_combout\ $ 
-- ((\U_MASTER|U_P2S|w_REG[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[4]~41_combout\,
	datab => \U_MASTER|U_P2S|w_REG[4]~_emulated_q\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[3]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10_combout\,
	combout => \U_MASTER|U_P2S|w_REG[4]~42_combout\);

-- Location: LCCOMB_X1_Y24_N4
\U_MASTER|U_P2S|w_REG[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[5]~39_combout\ = \U_MASTER|U_P2S|w_REG[5]~37_combout\ $ (\U_MASTER|U_P2S|w_REG[4]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[5]~37_combout\,
	datad => \U_MASTER|U_P2S|w_REG[4]~42_combout\,
	combout => \U_MASTER|U_P2S|w_REG[5]~39_combout\);

-- Location: FF_X1_Y24_N5
\U_MASTER|U_P2S|w_REG[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[5]~39_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[5]~_emulated_q\);

-- Location: LCCOMB_X1_Y23_N16
\U_MASTER|U_P2S|w_REG[5]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[5]~38_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[5]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[5]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|w_REG[5]~_emulated_q\,
	datac => \U_MASTER|U_P2S|w_REG[5]~37_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[4]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[5]~38_combout\);

-- Location: LCCOMB_X1_Y23_N28
\U_MASTER|U_P2S|w_REG[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[6]~35_combout\ = \U_MASTER|U_P2S|w_REG[6]~33_combout\ $ (\U_MASTER|U_P2S|w_REG[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[6]~33_combout\,
	datad => \U_MASTER|U_P2S|w_REG[5]~38_combout\,
	combout => \U_MASTER|U_P2S|w_REG[6]~35_combout\);

-- Location: FF_X1_Y23_N29
\U_MASTER|U_P2S|w_REG[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[6]~35_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[6]~_emulated_q\);

-- Location: LCCOMB_X1_Y23_N6
\U_MASTER|U_P2S|w_REG[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[6]~34_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[6]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|w_REG[6]~_emulated_q\,
	datac => \U_MASTER|U_P2S|w_REG[6]~33_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[5]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[6]~34_combout\);

-- Location: LCCOMB_X1_Y23_N8
\U_MASTER|U_P2S|w_REG[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[7]~31_combout\ = \U_MASTER|U_P2S|w_REG[7]~29_combout\ $ (\U_MASTER|U_P2S|w_REG[6]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[7]~29_combout\,
	datad => \U_MASTER|U_P2S|w_REG[6]~34_combout\,
	combout => \U_MASTER|U_P2S|w_REG[7]~31_combout\);

-- Location: FF_X1_Y23_N9
\U_MASTER|U_P2S|w_REG[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[7]~31_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[7]~_emulated_q\);

-- Location: LCCOMB_X1_Y23_N2
\U_MASTER|U_P2S|w_REG[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[7]~30_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[7]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[7]~_emulated_q\,
	datab => \U_MASTER|U_P2S|Equal0~10_combout\,
	datac => \U_MASTER|U_P2S|w_REG[7]~29_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[6]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[7]~30_combout\);

-- Location: LCCOMB_X1_Y23_N18
\U_MASTER|U_P2S|w_REG[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[8]~27_combout\ = \U_MASTER|U_P2S|w_REG[8]~25_combout\ $ (\U_MASTER|U_P2S|w_REG[7]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[8]~25_combout\,
	datad => \U_MASTER|U_P2S|w_REG[7]~30_combout\,
	combout => \U_MASTER|U_P2S|w_REG[8]~27_combout\);

-- Location: FF_X1_Y23_N19
\U_MASTER|U_P2S|w_REG[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[8]~27_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[8]~_emulated_q\);

-- Location: LCCOMB_X1_Y23_N24
\U_MASTER|U_P2S|w_REG[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[8]~26_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[8]~25_combout\ $ 
-- ((\U_MASTER|U_P2S|w_REG[8]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[8]~25_combout\,
	datab => \U_MASTER|U_P2S|w_REG[8]~_emulated_q\,
	datac => \U_MASTER|U_STM_MASTER|o_DATA[7]$latch~combout\,
	datad => \U_MASTER|U_P2S|Equal0~10_combout\,
	combout => \U_MASTER|U_P2S|w_REG[8]~26_combout\);

-- Location: FF_X1_Y23_N25
\U_MASTER|U_P2S|w_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[8]~26_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG\(9));

-- Location: LCCOMB_X8_Y23_N14
\U_MASTER|U_P2S|w_REG[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[10]~23_combout\ = \U_MASTER|U_P2S|w_REG[10]~21_combout\ $ (\U_MASTER|U_P2S|w_REG\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[10]~21_combout\,
	datad => \U_MASTER|U_P2S|w_REG\(9),
	combout => \U_MASTER|U_P2S|w_REG[10]~23_combout\);

-- Location: FF_X8_Y23_N15
\U_MASTER|U_P2S|w_REG[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[10]~23_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[10]~_emulated_q\);

-- Location: LCCOMB_X8_Y23_N20
\U_MASTER|U_P2S|w_REG[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[10]~22_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[10]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|Equal0~10_combout\,
	datab => \U_MASTER|U_P2S|w_REG[10]~_emulated_q\,
	datac => \U_MASTER|U_P2S|w_REG[10]~21_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[9]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[10]~22_combout\);

-- Location: LCCOMB_X8_Y23_N22
\U_MASTER|U_P2S|w_REG[11]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[11]~19_combout\ = \U_MASTER|U_P2S|w_REG[11]~17_combout\ $ (\U_MASTER|U_P2S|w_REG[10]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_P2S|w_REG[11]~17_combout\,
	datad => \U_MASTER|U_P2S|w_REG[10]~22_combout\,
	combout => \U_MASTER|U_P2S|w_REG[11]~19_combout\);

-- Location: FF_X8_Y23_N23
\U_MASTER|U_P2S|w_REG[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[11]~19_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG[11]~_emulated_q\);

-- Location: LCCOMB_X8_Y23_N28
\U_MASTER|U_P2S|w_REG[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[11]~18_combout\ = (\U_MASTER|U_P2S|Equal0~10_combout\ & (((\U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\)))) # (!\U_MASTER|U_P2S|Equal0~10_combout\ & (\U_MASTER|U_P2S|w_REG[11]~_emulated_q\ $ 
-- ((\U_MASTER|U_P2S|w_REG[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_P2S|w_REG[11]~_emulated_q\,
	datab => \U_MASTER|U_P2S|w_REG[11]~17_combout\,
	datac => \U_MASTER|U_P2S|Equal0~10_combout\,
	datad => \U_MASTER|U_STM_MASTER|o_DATA[10]$latch~combout\,
	combout => \U_MASTER|U_P2S|w_REG[11]~18_combout\);

-- Location: FF_X8_Y23_N29
\U_MASTER|U_P2S|w_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[11]~18_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG\(12));

-- Location: LCCOMB_X8_Y23_N26
\U_MASTER|U_P2S|w_REG[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[13]~feeder_combout\ = \U_MASTER|U_P2S|w_REG\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_P2S|w_REG\(12),
	combout => \U_MASTER|U_P2S|w_REG[13]~feeder_combout\);

-- Location: FF_X8_Y23_N27
\U_MASTER|U_P2S|w_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[13]~feeder_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG\(13));

-- Location: LCCOMB_X8_Y23_N12
\U_MASTER|U_P2S|w_REG[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[14]~feeder_combout\ = \U_MASTER|U_P2S|w_REG\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_P2S|w_REG\(13),
	combout => \U_MASTER|U_P2S|w_REG[14]~feeder_combout\);

-- Location: FF_X8_Y23_N13
\U_MASTER|U_P2S|w_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[14]~feeder_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG\(14));

-- Location: LCCOMB_X9_Y23_N16
\U_MASTER|U_P2S|w_REG[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_P2S|w_REG[15]~feeder_combout\ = \U_MASTER|U_P2S|w_REG\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_P2S|w_REG\(14),
	combout => \U_MASTER|U_P2S|w_REG[15]~feeder_combout\);

-- Location: FF_X9_Y23_N17
\U_MASTER|U_P2S|w_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_P2S|w_REG[15]~feeder_combout\,
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|w_REG\(15));

-- Location: FF_X10_Y23_N9
\U_MASTER|U_P2S|o_SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \U_MASTER|U_P2S|w_REG\(15),
	clrn => \U_MASTER|U_P2S|ALT_INV_Equal0~10clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_P2S|o_SDA~reg0_q\);

-- Location: LCCOMB_X16_Y22_N20
\U_MASTER|U_STOP_FRAME|o_SDA~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_STOP_FRAME|o_SDA~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_MASTER|U_STOP_FRAME|o_SDA~reg0feeder_combout\);

-- Location: FF_X16_Y22_N21
\U_MASTER|U_STOP_FRAME|o_SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_PLL_100K|U_altpll0|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \U_MASTER|U_STOP_FRAME|o_SDA~reg0feeder_combout\,
	clrn => \U_MASTER|U_STOP_FRAME|ALT_INV_o_CTRL_STOP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_STOP_FRAME|o_SDA~reg0_q\);

-- Location: LCCOMB_X10_Y23_N8
\U_MASTER|U_REG_SDA|o_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_REG_SDA|o_Q~0_combout\ = (\U_MASTER|U_STOP_FRAME|o_SDA~en_q\ & ((\U_MASTER|U_STOP_FRAME|o_SDA~reg0_q\) # ((\U_MASTER|U_P2S|o_SDA~en_q\ & \U_MASTER|U_P2S|o_SDA~reg0_q\)))) # (!\U_MASTER|U_STOP_FRAME|o_SDA~en_q\ & (\U_MASTER|U_P2S|o_SDA~en_q\ & 
-- (\U_MASTER|U_P2S|o_SDA~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STOP_FRAME|o_SDA~en_q\,
	datab => \U_MASTER|U_P2S|o_SDA~en_q\,
	datac => \U_MASTER|U_P2S|o_SDA~reg0_q\,
	datad => \U_MASTER|U_STOP_FRAME|o_SDA~reg0_q\,
	combout => \U_MASTER|U_REG_SDA|o_Q~0_combout\);

-- Location: LCCOMB_X6_Y25_N0
\U_MASTER|U_REG_SDA|o_Q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MASTER|U_REG_SDA|o_Q~1_combout\ = ((\U_MASTER|U_REG_SDA|o_Q~0_combout\) # (!\i_RST~input_o\)) # (!\U_MASTER|U_STM_MASTER|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_STM_MASTER|o_ENABLE~combout\,
	datab => \i_RST~input_o\,
	datad => \U_MASTER|U_REG_SDA|o_Q~0_combout\,
	combout => \U_MASTER|U_REG_SDA|o_Q~1_combout\);

-- Location: FF_X6_Y25_N1
\U_MASTER|U_REG_SDA|o_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \U_MASTER|U_REG_SDA|o_Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MASTER|U_REG_SDA|o_Q~q\);

-- Location: LCCOMB_X8_Y25_N6
\U_SLAVE_A|U_S2P|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Add0~0_combout\ = \U_SLAVE_A|U_S2P|cont\(0) $ (VCC)
-- \U_SLAVE_A|U_S2P|Add0~1\ = CARRY(\U_SLAVE_A|U_S2P|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(0),
	datad => VCC,
	combout => \U_SLAVE_A|U_S2P|Add0~0_combout\,
	cout => \U_SLAVE_A|U_S2P|Add0~1\);

-- Location: LCCOMB_X1_Y25_N12
\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\ = \U_MASTER|U_REG_SCL|o_Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MASTER|U_REG_SCL|o_Q~q\,
	combout => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\);

-- Location: FF_X1_Y25_N13
\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~q\);

-- Location: LCCOMB_X6_Y25_N4
\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~feeder_combout\ = \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_R~q\,
	combout => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~feeder_combout\);

-- Location: FF_X6_Y25_N5
\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\);

-- Location: LCCOMB_X1_Y25_N10
\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\ = \U_MASTER|U_REG_SDA|o_Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_REG_SDA|o_Q~q\,
	combout => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\);

-- Location: FF_X1_Y25_N11
\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~q\);

-- Location: FF_X6_Y25_N31
\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_R~q\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S~q\);

-- Location: FF_X6_Y25_N25
\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X6_Y25_N18
\U_SLAVE_C|U_DET_FRAME|o_ENABLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_DET_FRAME|o_ENABLE~1_combout\ = (\U_MASTER|U_REG_SCL|o_Q~q\ & (\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S~q\ & ((\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\) # (!\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MASTER|U_REG_SCL|o_Q~q\,
	datab => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	datac => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S~q\,
	datad => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\,
	combout => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~1_combout\);

-- Location: FF_X6_Y25_N3
\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_S~q\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X6_Y25_N30
\U_SLAVE_C|U_DET_FRAME|o_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\ = ((\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\) # (\U_MASTER|U_REG_SDA|o_Q~q\)) # (!\U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_T~q\,
	datab => \U_SLAVE_A|U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	datad => \U_MASTER|U_REG_SDA|o_Q~q\,
	combout => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\);

-- Location: LCCOMB_X6_Y25_N2
\U_SLAVE_C|U_DET_FRAME|o_ENABLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\ = (((\U_SLAVE_C|U_DET_FRAME|o_ENABLE~1_combout\ & !\U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_T~q\)) # (!\U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\)) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~1_combout\,
	datac => \U_SLAVE_C|U_DET_FRAME|SDA_I2C|w_SINAL_T~q\,
	datad => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\,
	combout => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\);

-- Location: LCCOMB_X6_Y25_N16
\U_SLAVE_A|U_DET_FRAME|o_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\ = (\U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\ & ((!\U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\))) # (!\U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\ & (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~2_combout\,
	datac => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	datad => \U_SLAVE_C|U_DET_FRAME|o_ENABLE~0_combout\,
	combout => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\);

-- Location: LCCOMB_X8_Y25_N0
\U_SLAVE_B|U_S2P|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|process_0~0_combout\ = (!\i_RST~input_o\) # (!\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	datad => \i_RST~input_o\,
	combout => \U_SLAVE_B|U_S2P|process_0~0_combout\);

-- Location: FF_X8_Y25_N7
\U_SLAVE_A|U_S2P|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|Add0~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|cont\(0));

-- Location: LCCOMB_X8_Y25_N8
\U_SLAVE_A|U_S2P|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Add0~2_combout\ = (\U_SLAVE_A|U_S2P|cont\(1) & (!\U_SLAVE_A|U_S2P|Add0~1\)) # (!\U_SLAVE_A|U_S2P|cont\(1) & ((\U_SLAVE_A|U_S2P|Add0~1\) # (GND)))
-- \U_SLAVE_A|U_S2P|Add0~3\ = CARRY((!\U_SLAVE_A|U_S2P|Add0~1\) # (!\U_SLAVE_A|U_S2P|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_S2P|cont\(1),
	datad => VCC,
	cin => \U_SLAVE_A|U_S2P|Add0~1\,
	combout => \U_SLAVE_A|U_S2P|Add0~2_combout\,
	cout => \U_SLAVE_A|U_S2P|Add0~3\);

-- Location: FF_X8_Y25_N9
\U_SLAVE_A|U_S2P|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|Add0~2_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|cont\(1));

-- Location: LCCOMB_X8_Y25_N10
\U_SLAVE_A|U_S2P|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Add0~4_combout\ = (\U_SLAVE_A|U_S2P|cont\(2) & (\U_SLAVE_A|U_S2P|Add0~3\ $ (GND))) # (!\U_SLAVE_A|U_S2P|cont\(2) & (!\U_SLAVE_A|U_S2P|Add0~3\ & VCC))
-- \U_SLAVE_A|U_S2P|Add0~5\ = CARRY((\U_SLAVE_A|U_S2P|cont\(2) & !\U_SLAVE_A|U_S2P|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(2),
	datad => VCC,
	cin => \U_SLAVE_A|U_S2P|Add0~3\,
	combout => \U_SLAVE_A|U_S2P|Add0~4_combout\,
	cout => \U_SLAVE_A|U_S2P|Add0~5\);

-- Location: FF_X8_Y25_N11
\U_SLAVE_A|U_S2P|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|Add0~4_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|cont\(2));

-- Location: LCCOMB_X8_Y25_N12
\U_SLAVE_A|U_S2P|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Add0~6_combout\ = (\U_SLAVE_A|U_S2P|cont\(3) & (!\U_SLAVE_A|U_S2P|Add0~5\)) # (!\U_SLAVE_A|U_S2P|cont\(3) & ((\U_SLAVE_A|U_S2P|Add0~5\) # (GND)))
-- \U_SLAVE_A|U_S2P|Add0~7\ = CARRY((!\U_SLAVE_A|U_S2P|Add0~5\) # (!\U_SLAVE_A|U_S2P|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(3),
	datad => VCC,
	cin => \U_SLAVE_A|U_S2P|Add0~5\,
	combout => \U_SLAVE_A|U_S2P|Add0~6_combout\,
	cout => \U_SLAVE_A|U_S2P|Add0~7\);

-- Location: FF_X8_Y25_N13
\U_SLAVE_A|U_S2P|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|Add0~6_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|cont\(3));

-- Location: LCCOMB_X8_Y25_N30
\U_SLAVE_A|U_S2P|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Equal1~0_combout\ = (\U_SLAVE_A|U_S2P|cont\(3) & (\U_SLAVE_A|U_S2P|cont\(2) & (!\U_SLAVE_A|U_S2P|cont\(4) & \U_SLAVE_A|U_S2P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(3),
	datab => \U_SLAVE_A|U_S2P|cont\(2),
	datac => \U_SLAVE_A|U_S2P|cont\(4),
	datad => \U_SLAVE_A|U_S2P|cont\(0),
	combout => \U_SLAVE_A|U_S2P|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y25_N14
\U_SLAVE_A|U_S2P|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|Add0~8_combout\ = \U_SLAVE_A|U_S2P|cont\(4) $ (!\U_SLAVE_A|U_S2P|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_S2P|cont\(4),
	cin => \U_SLAVE_A|U_S2P|Add0~7\,
	combout => \U_SLAVE_A|U_S2P|Add0~8_combout\);

-- Location: LCCOMB_X8_Y25_N4
\U_SLAVE_A|U_S2P|cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|cont~0_combout\ = (\U_SLAVE_A|U_S2P|Add0~8_combout\ & ((!\U_SLAVE_A|U_S2P|cont\(1)) # (!\U_SLAVE_A|U_S2P|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|Equal1~0_combout\,
	datab => \U_SLAVE_A|U_S2P|cont\(1),
	datac => \U_SLAVE_A|U_S2P|Add0~8_combout\,
	combout => \U_SLAVE_A|U_S2P|cont~0_combout\);

-- Location: FF_X8_Y25_N5
\U_SLAVE_A|U_S2P|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|cont~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|cont\(4));

-- Location: LCCOMB_X8_Y25_N18
\U_SLAVE_A|U_S2P|o_DATA[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[15]~0_combout\ = (\U_SLAVE_A|U_S2P|cont\(3) & (\U_SLAVE_A|U_S2P|cont\(2) & \U_SLAVE_A|U_S2P|cont\(0))) # (!\U_SLAVE_A|U_S2P|cont\(3) & (!\U_SLAVE_A|U_S2P|cont\(2) & !\U_SLAVE_A|U_S2P|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(3),
	datab => \U_SLAVE_A|U_S2P|cont\(2),
	datad => \U_SLAVE_A|U_S2P|cont\(0),
	combout => \U_SLAVE_A|U_S2P|o_DATA[15]~0_combout\);

-- Location: LCCOMB_X8_Y25_N20
\U_SLAVE_A|U_S2P|o_DATA[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\ = (!\U_SLAVE_A|U_S2P|cont\(4) & (\U_SLAVE_A|U_S2P|o_DATA[15]~0_combout\ & (\U_SLAVE_A|U_S2P|cont\(2) $ (!\U_SLAVE_A|U_S2P|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|cont\(2),
	datab => \U_SLAVE_A|U_S2P|cont\(1),
	datac => \U_SLAVE_A|U_S2P|cont\(4),
	datad => \U_SLAVE_A|U_S2P|o_DATA[15]~0_combout\,
	combout => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\);

-- Location: FF_X7_Y25_N3
\U_SLAVE_A|U_S2P|o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_MASTER|U_REG_SDA|o_Q~q\,
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\);

-- Location: LCCOMB_X6_Y26_N26
\U_SLAVE_A|U_S2P|w_DATA[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[0]~feeder_combout\ = \U_MASTER|U_REG_SDA|o_Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_MASTER|U_REG_SDA|o_Q~q\,
	combout => \U_SLAVE_A|U_S2P|w_DATA[0]~feeder_combout\);

-- Location: FF_X6_Y26_N27
\U_SLAVE_A|U_S2P|w_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(0));

-- Location: LCCOMB_X6_Y26_N22
\U_SLAVE_A|U_S2P|w_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[1]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(0),
	combout => \U_SLAVE_A|U_S2P|w_DATA[1]~feeder_combout\);

-- Location: FF_X6_Y26_N23
\U_SLAVE_A|U_S2P|w_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(1));

-- Location: LCCOMB_X7_Y26_N2
\U_SLAVE_A|U_S2P|w_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[2]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(1),
	combout => \U_SLAVE_A|U_S2P|w_DATA[2]~feeder_combout\);

-- Location: FF_X7_Y26_N3
\U_SLAVE_A|U_S2P|w_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(2));

-- Location: LCCOMB_X6_Y26_N14
\U_SLAVE_A|U_S2P|w_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[3]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(2),
	combout => \U_SLAVE_A|U_S2P|w_DATA[3]~feeder_combout\);

-- Location: FF_X6_Y26_N15
\U_SLAVE_A|U_S2P|w_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(3));

-- Location: LCCOMB_X8_Y25_N26
\U_SLAVE_A|U_S2P|w_DATA[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[4]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(3),
	combout => \U_SLAVE_A|U_S2P|w_DATA[4]~feeder_combout\);

-- Location: FF_X8_Y25_N27
\U_SLAVE_A|U_S2P|w_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(4));

-- Location: FF_X8_Y25_N19
\U_SLAVE_A|U_S2P|w_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(5));

-- Location: LCCOMB_X8_Y25_N22
\U_SLAVE_A|U_S2P|w_DATA[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[6]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(5),
	combout => \U_SLAVE_A|U_S2P|w_DATA[6]~feeder_combout\);

-- Location: FF_X8_Y25_N23
\U_SLAVE_A|U_S2P|w_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(6));

-- Location: LCCOMB_X6_Y26_N4
\U_SLAVE_A|U_S2P|w_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[7]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(6),
	combout => \U_SLAVE_A|U_S2P|w_DATA[7]~feeder_combout\);

-- Location: FF_X6_Y26_N5
\U_SLAVE_A|U_S2P|w_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(7));

-- Location: FF_X8_Y25_N17
\U_SLAVE_A|U_S2P|o_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(7),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\);

-- Location: LCCOMB_X5_Y25_N28
\U_SLAVE_A|U_STM_SLAVE|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~18_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\ & (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~18_combout\);

-- Location: FF_X5_Y25_N29
\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_SLAVE_A|U_STM_SLAVE|state~18_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\);

-- Location: LCCOMB_X5_Y25_N18
\U_SLAVE_A|U_STM_SLAVE|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Selector9~1_combout\ = (!\U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ & \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Selector9~1_combout\);

-- Location: LCCOMB_X6_Y25_N14
\U_SLAVE_A|U_STM_SLAVE|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Selector9~2_combout\ = (\U_SLAVE_A|U_STM_SLAVE|Selector9~1_combout\) # ((\U_SLAVE_A|U_STM_SLAVE|stage~q\ & ((\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\) # (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	datab => \U_SLAVE_A|U_STM_SLAVE|Selector9~1_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|stage~q\,
	datad => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Selector9~2_combout\);

-- Location: LCCOMB_X3_Y25_N30
\U_SLAVE_A|U_STM_SLAVE|stage~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|stage~feeder_combout\ = \U_SLAVE_A|U_STM_SLAVE|Selector9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_STM_SLAVE|Selector9~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|stage~feeder_combout\);

-- Location: FF_X3_Y25_N31
\U_SLAVE_A|U_STM_SLAVE|stage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_STM_SLAVE|stage~feeder_combout\,
	ena => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|stage~q\);

-- Location: FF_X8_Y25_N25
\U_SLAVE_A|U_S2P|o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(5),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\);

-- Location: FF_X8_Y25_N3
\U_SLAVE_A|U_S2P|o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(4),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\);

-- Location: FF_X8_Y25_N29
\U_SLAVE_A|U_S2P|o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(6),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\);

-- Location: LCCOMB_X8_Y25_N16
\U_SLAVE_A|U_STM_SLAVE|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal0~0_combout\ = (!\U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\ & !\U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\,
	datab => \U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal0~0_combout\);

-- Location: FF_X6_Y26_N3
\U_SLAVE_A|U_S2P|w_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(8));

-- Location: LCCOMB_X7_Y26_N24
\U_SLAVE_A|U_S2P|w_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[9]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(8),
	combout => \U_SLAVE_A|U_S2P|w_DATA[9]~feeder_combout\);

-- Location: FF_X7_Y26_N25
\U_SLAVE_A|U_S2P|w_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(9));

-- Location: LCCOMB_X7_Y25_N30
\U_SLAVE_A|U_S2P|o_DATA[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[10]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(9),
	combout => \U_SLAVE_A|U_S2P|o_DATA[10]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N31
\U_SLAVE_A|U_S2P|o_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[10]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\);

-- Location: LCCOMB_X7_Y26_N26
\U_SLAVE_A|U_S2P|w_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[10]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(9),
	combout => \U_SLAVE_A|U_S2P|w_DATA[10]~feeder_combout\);

-- Location: FF_X7_Y26_N27
\U_SLAVE_A|U_S2P|w_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(10));

-- Location: FF_X7_Y25_N9
\U_SLAVE_A|U_S2P|o_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(10),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\);

-- Location: FF_X7_Y25_N29
\U_SLAVE_A|U_S2P|o_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(8),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N8
\U_SLAVE_A|U_STM_SLAVE|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal1~3_combout\ = (!\U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\ & !\U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal1~3_combout\);

-- Location: LCCOMB_X7_Y26_N4
\U_SLAVE_A|U_S2P|w_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[11]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(10),
	combout => \U_SLAVE_A|U_S2P|w_DATA[11]~feeder_combout\);

-- Location: FF_X7_Y26_N5
\U_SLAVE_A|U_S2P|w_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(11));

-- Location: LCCOMB_X7_Y26_N20
\U_SLAVE_A|U_S2P|w_DATA[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[12]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(11),
	combout => \U_SLAVE_A|U_S2P|w_DATA[12]~feeder_combout\);

-- Location: FF_X7_Y26_N21
\U_SLAVE_A|U_S2P|w_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(12));

-- Location: LCCOMB_X7_Y26_N22
\U_SLAVE_A|U_S2P|w_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|w_DATA[13]~feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(12),
	combout => \U_SLAVE_A|U_S2P|w_DATA[13]~feeder_combout\);

-- Location: FF_X7_Y26_N23
\U_SLAVE_A|U_S2P|w_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|w_DATA[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(13));

-- Location: LCCOMB_X7_Y25_N6
\U_SLAVE_A|U_S2P|o_DATA[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[14]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(13),
	combout => \U_SLAVE_A|U_S2P|o_DATA[14]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N7
\U_SLAVE_A|U_S2P|o_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[14]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[14]~reg0_q\);

-- Location: FF_X7_Y26_N31
\U_SLAVE_A|U_S2P|w_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|w_DATA\(14));

-- Location: LCCOMB_X7_Y25_N4
\U_SLAVE_A|U_S2P|o_DATA[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[15]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(14),
	combout => \U_SLAVE_A|U_S2P|o_DATA[15]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N5
\U_SLAVE_A|U_S2P|o_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[15]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[15]~reg0_q\);

-- Location: FF_X7_Y25_N11
\U_SLAVE_A|U_S2P|o_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(11),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[12]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N12
\U_SLAVE_A|U_S2P|o_DATA[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[13]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(12),
	combout => \U_SLAVE_A|U_S2P|o_DATA[13]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N13
\U_SLAVE_A|U_S2P|o_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[13]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[13]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N10
\U_SLAVE_A|U_STM_SLAVE|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\ = (!\U_SLAVE_A|U_S2P|o_DATA[14]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[15]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[12]~reg0_q\ & !\U_SLAVE_A|U_S2P|o_DATA[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|o_DATA[14]~reg0_q\,
	datab => \U_SLAVE_A|U_S2P|o_DATA[15]~reg0_q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[12]~reg0_q\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[13]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y25_N24
\U_SLAVE_A|U_S2P|o_DATA[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[4]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(3),
	combout => \U_SLAVE_A|U_S2P|o_DATA[4]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N25
\U_SLAVE_A|U_S2P|o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[4]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\);

-- Location: FF_X7_Y25_N17
\U_SLAVE_A|U_S2P|o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(0),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\);

-- Location: FF_X7_Y25_N23
\U_SLAVE_A|U_S2P|o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(2),
	sload => VCC,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N20
\U_SLAVE_A|U_S2P|o_DATA[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_S2P|o_DATA[2]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(1),
	combout => \U_SLAVE_A|U_S2P|o_DATA[2]~reg0feeder_combout\);

-- Location: FF_X7_Y25_N21
\U_SLAVE_A|U_S2P|o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_A|U_S2P|o_DATA[2]~reg0feeder_combout\,
	ena => \U_SLAVE_A|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\);

-- Location: LCCOMB_X7_Y25_N18
\U_SLAVE_A|U_STM_SLAVE|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal0~1_combout\ = (!\U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\ & !\U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\,
	datab => \U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y25_N10
\U_SLAVE_A|U_STM_SLAVE|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal0~2_combout\ = (\U_SLAVE_A|U_STM_SLAVE|Equal0~0_combout\ & (\U_SLAVE_A|U_STM_SLAVE|Equal1~3_combout\ & (\U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\ & \U_SLAVE_A|U_STM_SLAVE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|Equal0~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|Equal1~3_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Equal0~1_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y25_N8
\U_SLAVE_A|U_STM_SLAVE|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~19_combout\ = (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\ & (!\U_SLAVE_A|U_STM_SLAVE|stage~q\ & ((\U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\) # (!\U_SLAVE_A|U_STM_SLAVE|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	datab => \U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|stage~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Equal0~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~19_combout\);

-- Location: LCCOMB_X7_Y25_N28
\U_SLAVE_A|U_STM_SLAVE|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\ = (!\U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\ & (!\U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\ & \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_S2P|o_DATA[10]~reg0_q\,
	datab => \U_SLAVE_A|U_S2P|o_DATA[11]~reg0_q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[9]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Equal1~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\);

-- Location: LCCOMB_X5_Y25_N14
\U_SLAVE_A|U_STM_SLAVE|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~16_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\) # ((!\U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\ & \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~16_combout\);

-- Location: FF_X5_Y25_N15
\U_SLAVE_A|U_STM_SLAVE|state.st_NULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_SLAVE_A|U_STM_SLAVE|state~16_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\);

-- Location: LCCOMB_X5_Y25_N22
\U_SLAVE_A|U_STM_SLAVE|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\ = (!\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\);

-- Location: LCCOMB_X6_Y25_N26
\U_SLAVE_A|U_STM_SLAVE|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~20_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ & (\U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|state~19_combout\) # (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state~19_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~20_combout\);

-- Location: FF_X6_Y25_N27
\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_STM_SLAVE|state~20_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\);

-- Location: LCCOMB_X5_Y25_N26
\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\ & !\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X5_Y25_N12
\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ & \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\))) # 
-- (!\U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\ & ((\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ & (!\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ & \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\)) # (!\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\ & 
-- (\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ $ (!\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X5_Y25_N8
\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\ & ((!\U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\)))) # (!\U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\ & 
-- ((\U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\ & (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\)) # (!\U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\ & ((\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~1_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X6_Y25_N20
\U_SLAVE_A|U_STM_SLAVE|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~21_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\ & (\U_SLAVE_A|U_STM_SLAVE|state~19_combout\ & !\U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state~19_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~21_combout\);

-- Location: FF_X6_Y25_N21
\U_SLAVE_A|U_STM_SLAVE|state.st_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_STM_SLAVE|state~21_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\);

-- Location: LCCOMB_X7_Y25_N14
\U_SLAVE_A|U_STM_SLAVE|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~22_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\ & \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_ID~q\,
	datac => \U_SLAVE_A|U_STM_SLAVE|Equal1~4_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~22_combout\);

-- Location: FF_X7_Y25_N15
\U_SLAVE_A|U_STM_SLAVE|state.st_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_STM_SLAVE|state~22_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\);

-- Location: LCCOMB_X5_Y25_N16
\U_SLAVE_A|U_STM_SLAVE|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state~17_combout\ = (\U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\ & (!\U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\ & \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|state.st_RW~q\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[8]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state~17_combout\);

-- Location: LCCOMB_X5_Y25_N24
\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ = \U_SLAVE_A|U_STM_SLAVE|state~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_STM_SLAVE|state~17_combout\,
	combout => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\);

-- Location: FF_X5_Y25_N25
\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\);

-- Location: LCCOMB_X5_Y25_N30
\U_SLAVE_A|U_STM_SLAVE|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|Selector9~0_combout\ = (!\U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_A|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|Selector9~0_combout\);

-- Location: CLKCTRL_G3
\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X7_Y25_N2
\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[0]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X5_Y25_N20
\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((!\U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	datad => \U_SLAVE_A|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\);

-- Location: LCCOMB_X7_Y25_N16
\U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[1]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X7_Y25_N26
\U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[2]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X7_Y25_N22
\U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X7_Y25_N0
\U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	datad => \U_SLAVE_A|U_S2P|o_DATA[4]~reg0_q\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X8_Y25_N2
\U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[5]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X8_Y25_N24
\U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[6]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X8_Y25_N28
\U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_A|U_S2P|o_DATA[7]~reg0_q\,
	datad => \U_SLAVE_A|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X8_Y26_N2
\U_SLAVE_C|U_S2P|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Add0~0_combout\ = \U_SLAVE_C|U_S2P|cont\(0) $ (VCC)
-- \U_SLAVE_C|U_S2P|Add0~1\ = CARRY(\U_SLAVE_C|U_S2P|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_S2P|cont\(0),
	datad => VCC,
	combout => \U_SLAVE_C|U_S2P|Add0~0_combout\,
	cout => \U_SLAVE_C|U_S2P|Add0~1\);

-- Location: FF_X8_Y26_N3
\U_SLAVE_C|U_S2P|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|Add0~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|cont\(0));

-- Location: LCCOMB_X8_Y26_N4
\U_SLAVE_C|U_S2P|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Add0~2_combout\ = (\U_SLAVE_C|U_S2P|cont\(1) & (!\U_SLAVE_C|U_S2P|Add0~1\)) # (!\U_SLAVE_C|U_S2P|cont\(1) & ((\U_SLAVE_C|U_S2P|Add0~1\) # (GND)))
-- \U_SLAVE_C|U_S2P|Add0~3\ = CARRY((!\U_SLAVE_C|U_S2P|Add0~1\) # (!\U_SLAVE_C|U_S2P|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_S2P|cont\(1),
	datad => VCC,
	cin => \U_SLAVE_C|U_S2P|Add0~1\,
	combout => \U_SLAVE_C|U_S2P|Add0~2_combout\,
	cout => \U_SLAVE_C|U_S2P|Add0~3\);

-- Location: FF_X8_Y26_N5
\U_SLAVE_C|U_S2P|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|Add0~2_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|cont\(1));

-- Location: LCCOMB_X8_Y26_N6
\U_SLAVE_C|U_S2P|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Add0~4_combout\ = (\U_SLAVE_C|U_S2P|cont\(2) & (\U_SLAVE_C|U_S2P|Add0~3\ $ (GND))) # (!\U_SLAVE_C|U_S2P|cont\(2) & (!\U_SLAVE_C|U_S2P|Add0~3\ & VCC))
-- \U_SLAVE_C|U_S2P|Add0~5\ = CARRY((\U_SLAVE_C|U_S2P|cont\(2) & !\U_SLAVE_C|U_S2P|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|cont\(2),
	datad => VCC,
	cin => \U_SLAVE_C|U_S2P|Add0~3\,
	combout => \U_SLAVE_C|U_S2P|Add0~4_combout\,
	cout => \U_SLAVE_C|U_S2P|Add0~5\);

-- Location: FF_X8_Y26_N7
\U_SLAVE_C|U_S2P|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|Add0~4_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|cont\(2));

-- Location: LCCOMB_X8_Y26_N8
\U_SLAVE_C|U_S2P|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Add0~6_combout\ = (\U_SLAVE_C|U_S2P|cont\(3) & (!\U_SLAVE_C|U_S2P|Add0~5\)) # (!\U_SLAVE_C|U_S2P|cont\(3) & ((\U_SLAVE_C|U_S2P|Add0~5\) # (GND)))
-- \U_SLAVE_C|U_S2P|Add0~7\ = CARRY((!\U_SLAVE_C|U_S2P|Add0~5\) # (!\U_SLAVE_C|U_S2P|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_S2P|cont\(3),
	datad => VCC,
	cin => \U_SLAVE_C|U_S2P|Add0~5\,
	combout => \U_SLAVE_C|U_S2P|Add0~6_combout\,
	cout => \U_SLAVE_C|U_S2P|Add0~7\);

-- Location: FF_X8_Y26_N9
\U_SLAVE_C|U_S2P|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|Add0~6_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|cont\(3));

-- Location: LCCOMB_X8_Y26_N12
\U_SLAVE_C|U_S2P|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Equal1~0_combout\ = (\U_SLAVE_C|U_S2P|cont\(2) & (\U_SLAVE_C|U_S2P|cont\(0) & (\U_SLAVE_C|U_S2P|cont\(3) & !\U_SLAVE_C|U_S2P|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|cont\(2),
	datab => \U_SLAVE_C|U_S2P|cont\(0),
	datac => \U_SLAVE_C|U_S2P|cont\(3),
	datad => \U_SLAVE_C|U_S2P|cont\(4),
	combout => \U_SLAVE_C|U_S2P|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y26_N10
\U_SLAVE_C|U_S2P|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|Add0~8_combout\ = \U_SLAVE_C|U_S2P|Add0~7\ $ (!\U_SLAVE_C|U_S2P|cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_C|U_S2P|cont\(4),
	cin => \U_SLAVE_C|U_S2P|Add0~7\,
	combout => \U_SLAVE_C|U_S2P|Add0~8_combout\);

-- Location: LCCOMB_X8_Y26_N0
\U_SLAVE_C|U_S2P|cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|cont~0_combout\ = (\U_SLAVE_C|U_S2P|Add0~8_combout\ & ((!\U_SLAVE_C|U_S2P|cont\(1)) # (!\U_SLAVE_C|U_S2P|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|Equal1~0_combout\,
	datac => \U_SLAVE_C|U_S2P|cont\(1),
	datad => \U_SLAVE_C|U_S2P|Add0~8_combout\,
	combout => \U_SLAVE_C|U_S2P|cont~0_combout\);

-- Location: FF_X8_Y26_N1
\U_SLAVE_C|U_S2P|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|cont~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|cont\(4));

-- Location: LCCOMB_X8_Y26_N18
\U_SLAVE_C|U_S2P|o_DATA[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[15]~0_combout\ = (\U_SLAVE_C|U_S2P|cont\(0) & (\U_SLAVE_C|U_S2P|cont\(3) & \U_SLAVE_C|U_S2P|cont\(2))) # (!\U_SLAVE_C|U_S2P|cont\(0) & (!\U_SLAVE_C|U_S2P|cont\(3) & !\U_SLAVE_C|U_S2P|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_S2P|cont\(0),
	datac => \U_SLAVE_C|U_S2P|cont\(3),
	datad => \U_SLAVE_C|U_S2P|cont\(2),
	combout => \U_SLAVE_C|U_S2P|o_DATA[15]~0_combout\);

-- Location: LCCOMB_X8_Y26_N16
\U_SLAVE_C|U_S2P|o_DATA[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\ = (!\U_SLAVE_C|U_S2P|cont\(4) & (\U_SLAVE_C|U_S2P|o_DATA[15]~0_combout\ & (\U_SLAVE_C|U_S2P|cont\(2) $ (!\U_SLAVE_C|U_S2P|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|cont\(2),
	datab => \U_SLAVE_C|U_S2P|cont\(4),
	datac => \U_SLAVE_C|U_S2P|cont\(1),
	datad => \U_SLAVE_C|U_S2P|o_DATA[15]~0_combout\,
	combout => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\);

-- Location: FF_X5_Y26_N7
\U_SLAVE_C|U_S2P|o_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(7),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\);

-- Location: LCCOMB_X4_Y26_N0
\U_SLAVE_C|U_STM_SLAVE|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~18_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~18_combout\);

-- Location: FF_X4_Y26_N1
\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_SLAVE_C|U_STM_SLAVE|state~18_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\);

-- Location: LCCOMB_X5_Y26_N2
\U_SLAVE_C|U_S2P|o_DATA[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[11]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(10),
	combout => \U_SLAVE_C|U_S2P|o_DATA[11]~reg0feeder_combout\);

-- Location: FF_X5_Y26_N3
\U_SLAVE_C|U_S2P|o_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|o_DATA[11]~reg0feeder_combout\,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\);

-- Location: FF_X5_Y26_N5
\U_SLAVE_C|U_S2P|o_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(8),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\);

-- Location: LCCOMB_X5_Y26_N0
\U_SLAVE_C|U_S2P|o_DATA[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[10]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(9),
	combout => \U_SLAVE_C|U_S2P|o_DATA[10]~reg0feeder_combout\);

-- Location: FF_X5_Y26_N1
\U_SLAVE_C|U_S2P|o_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|o_DATA[10]~reg0feeder_combout\,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\);

-- Location: LCCOMB_X3_Y26_N6
\U_SLAVE_C|U_S2P|o_DATA[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[14]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(13),
	combout => \U_SLAVE_C|U_S2P|o_DATA[14]~reg0feeder_combout\);

-- Location: FF_X3_Y26_N7
\U_SLAVE_C|U_S2P|o_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|o_DATA[14]~reg0feeder_combout\,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[14]~reg0_q\);

-- Location: LCCOMB_X3_Y26_N12
\U_SLAVE_C|U_S2P|o_DATA[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[15]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(14),
	combout => \U_SLAVE_C|U_S2P|o_DATA[15]~reg0feeder_combout\);

-- Location: FF_X3_Y26_N13
\U_SLAVE_C|U_S2P|o_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|o_DATA[15]~reg0feeder_combout\,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[15]~reg0_q\);

-- Location: FF_X3_Y26_N15
\U_SLAVE_C|U_S2P|o_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(11),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[12]~reg0_q\);

-- Location: LCCOMB_X3_Y26_N28
\U_SLAVE_C|U_S2P|o_DATA[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_S2P|o_DATA[13]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_A|U_S2P|w_DATA\(12),
	combout => \U_SLAVE_C|U_S2P|o_DATA[13]~reg0feeder_combout\);

-- Location: FF_X3_Y26_N29
\U_SLAVE_C|U_S2P|o_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_C|U_S2P|o_DATA[13]~reg0feeder_combout\,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[13]~reg0_q\);

-- Location: LCCOMB_X3_Y26_N14
\U_SLAVE_C|U_STM_SLAVE|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[14]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[15]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[12]~reg0_q\ & !\U_SLAVE_C|U_S2P|o_DATA[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|o_DATA[14]~reg0_q\,
	datab => \U_SLAVE_C|U_S2P|o_DATA[15]~reg0_q\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[12]~reg0_q\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[13]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\);

-- Location: LCCOMB_X4_Y26_N22
\U_SLAVE_C|U_STM_SLAVE|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\ & (\U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\ & \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\,
	datab => \U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\);

-- Location: LCCOMB_X4_Y26_N18
\U_SLAVE_C|U_STM_SLAVE|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~16_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ & ((\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\) # ((\U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\ & !\U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~16_combout\);

-- Location: FF_X4_Y26_N19
\U_SLAVE_C|U_STM_SLAVE|state.st_NULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|state~16_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\);

-- Location: LCCOMB_X4_Y26_N24
\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\ & (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X4_Y26_N16
\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\))) # 
-- (!\U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\ & ((\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ $ (\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\))) # (!\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & 
-- (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X4_Y26_N8
\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\ & ((!\U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\)))) # (!\U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\ & 
-- ((\U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\)) # (!\U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\ & ((\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~0_combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~1_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X4_Y26_N28
\U_SLAVE_C|U_STM_SLAVE|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Selector9~1_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Selector9~1_combout\);

-- Location: LCCOMB_X1_Y25_N26
\U_SLAVE_C|U_STM_SLAVE|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Selector9~2_combout\ = (\U_SLAVE_C|U_STM_SLAVE|Selector9~1_combout\) # ((\U_SLAVE_C|U_STM_SLAVE|stage~q\ & ((\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\) # (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|Selector9~1_combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|stage~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Selector9~2_combout\);

-- Location: LCCOMB_X1_Y25_N0
\U_SLAVE_C|U_STM_SLAVE|stage~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|stage~feeder_combout\ = \U_SLAVE_C|U_STM_SLAVE|Selector9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_C|U_STM_SLAVE|Selector9~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|stage~feeder_combout\);

-- Location: FF_X1_Y25_N1
\U_SLAVE_C|U_STM_SLAVE|stage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|stage~feeder_combout\,
	ena => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|stage~q\);

-- Location: FF_X5_Y26_N13
\U_SLAVE_C|U_S2P|o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(0),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\);

-- Location: FF_X9_Y26_N27
\U_SLAVE_C|U_S2P|o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_MASTER|U_REG_SDA|o_Q~q\,
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\);

-- Location: LCCOMB_X5_Y26_N24
\U_SLAVE_C|U_STM_SLAVE|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal0~0_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\ & !\U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal0~0_combout\);

-- Location: FF_X5_Y26_N11
\U_SLAVE_C|U_S2P|o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(5),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\);

-- Location: FF_X5_Y26_N17
\U_SLAVE_C|U_S2P|o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(6),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\);

-- Location: LCCOMB_X5_Y26_N6
\U_SLAVE_C|U_STM_SLAVE|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal0~1_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\ & !\U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\,
	datab => \U_SLAVE_C|U_S2P|o_DATA[10]~reg0_q\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y26_N4
\U_SLAVE_C|U_STM_SLAVE|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal1~3_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\ & !\U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_C|U_S2P|o_DATA[9]~reg0_q\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[11]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal1~3_combout\);

-- Location: FF_X5_Y26_N23
\U_SLAVE_C|U_S2P|o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(1),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\);

-- Location: FF_X5_Y26_N29
\U_SLAVE_C|U_S2P|o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(4),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\);

-- Location: FF_X5_Y26_N15
\U_SLAVE_C|U_S2P|o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(3),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\);

-- Location: FF_X5_Y26_N21
\U_SLAVE_C|U_S2P|o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(2),
	sload => VCC,
	ena => \U_SLAVE_C|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\);

-- Location: LCCOMB_X5_Y26_N26
\U_SLAVE_C|U_STM_SLAVE|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal0~2_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\ & (!\U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\ & !\U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\,
	datab => \U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\,
	datad => \U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y26_N8
\U_SLAVE_C|U_STM_SLAVE|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Equal0~3_combout\ = (\U_SLAVE_C|U_STM_SLAVE|Equal0~1_combout\ & (\U_SLAVE_C|U_STM_SLAVE|Equal1~3_combout\ & (\U_SLAVE_C|U_STM_SLAVE|Equal0~2_combout\ & \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|Equal0~1_combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|Equal1~3_combout\,
	datac => \U_SLAVE_C|U_STM_SLAVE|Equal0~2_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Equal1~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y26_N18
\U_SLAVE_C|U_STM_SLAVE|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~19_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|stage~q\ & (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\ & ((!\U_SLAVE_C|U_STM_SLAVE|Equal0~3_combout\) # (!\U_SLAVE_C|U_STM_SLAVE|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|stage~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|Equal0~0_combout\,
	datac => \U_SLAVE_C|U_STM_SLAVE|Equal0~3_combout\,
	datad => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~19_combout\);

-- Location: LCCOMB_X5_Y26_N30
\U_SLAVE_C|U_STM_SLAVE|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~20_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ & (\U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\ & ((\U_SLAVE_C|U_STM_SLAVE|state~19_combout\) # (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state~19_combout\,
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~20_combout\);

-- Location: FF_X5_Y26_N31
\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|state~20_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\);

-- Location: LCCOMB_X4_Y26_N20
\U_SLAVE_C|U_STM_SLAVE|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~21_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_SLAVE_C|U_STM_SLAVE|state~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state~19_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~21_combout\);

-- Location: FF_X4_Y26_N21
\U_SLAVE_C|U_STM_SLAVE|state.st_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|state~21_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\);

-- Location: LCCOMB_X4_Y26_N12
\U_SLAVE_C|U_STM_SLAVE|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~22_combout\ = (\U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\ & \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_ID~q\,
	datac => \U_SLAVE_C|U_STM_SLAVE|Equal1~4_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~22_combout\);

-- Location: FF_X4_Y26_N13
\U_SLAVE_C|U_STM_SLAVE|state.st_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|state~22_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\);

-- Location: LCCOMB_X4_Y26_N4
\U_SLAVE_C|U_STM_SLAVE|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state~17_combout\ = (!\U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\ & (\U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\ & \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_S2P|o_DATA[8]~reg0_q\,
	datab => \U_SLAVE_C|U_STM_SLAVE|state.st_RW~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state~17_combout\);

-- Location: LCCOMB_X4_Y26_N14
\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ = \U_SLAVE_C|U_STM_SLAVE|state~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_C|U_STM_SLAVE|state~17_combout\,
	combout => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\);

-- Location: FF_X4_Y26_N15
\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\);

-- Location: LCCOMB_X4_Y26_N26
\U_SLAVE_C|U_STM_SLAVE|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y26_N30
\U_SLAVE_C|U_STM_SLAVE|w_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\ & (\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\)) # (!\U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\ & ((!\U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_C|U_STM_SLAVE|WideOr5~0_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_NULL~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\);

-- Location: LCCOMB_X8_Y26_N22
\U_SLAVE_B|U_S2P|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Add0~0_combout\ = \U_SLAVE_B|U_S2P|cont\(0) $ (VCC)
-- \U_SLAVE_B|U_S2P|Add0~1\ = CARRY(\U_SLAVE_B|U_S2P|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|cont\(0),
	datad => VCC,
	combout => \U_SLAVE_B|U_S2P|Add0~0_combout\,
	cout => \U_SLAVE_B|U_S2P|Add0~1\);

-- Location: FF_X8_Y26_N23
\U_SLAVE_B|U_S2P|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|Add0~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|cont\(0));

-- Location: LCCOMB_X8_Y26_N24
\U_SLAVE_B|U_S2P|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Add0~2_combout\ = (\U_SLAVE_B|U_S2P|cont\(1) & (!\U_SLAVE_B|U_S2P|Add0~1\)) # (!\U_SLAVE_B|U_S2P|cont\(1) & ((\U_SLAVE_B|U_S2P|Add0~1\) # (GND)))
-- \U_SLAVE_B|U_S2P|Add0~3\ = CARRY((!\U_SLAVE_B|U_S2P|Add0~1\) # (!\U_SLAVE_B|U_S2P|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|cont\(1),
	datad => VCC,
	cin => \U_SLAVE_B|U_S2P|Add0~1\,
	combout => \U_SLAVE_B|U_S2P|Add0~2_combout\,
	cout => \U_SLAVE_B|U_S2P|Add0~3\);

-- Location: FF_X8_Y26_N25
\U_SLAVE_B|U_S2P|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|Add0~2_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|cont\(1));

-- Location: LCCOMB_X8_Y26_N26
\U_SLAVE_B|U_S2P|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Add0~4_combout\ = (\U_SLAVE_B|U_S2P|cont\(2) & (\U_SLAVE_B|U_S2P|Add0~3\ $ (GND))) # (!\U_SLAVE_B|U_S2P|cont\(2) & (!\U_SLAVE_B|U_S2P|Add0~3\ & VCC))
-- \U_SLAVE_B|U_S2P|Add0~5\ = CARRY((\U_SLAVE_B|U_S2P|cont\(2) & !\U_SLAVE_B|U_S2P|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|cont\(2),
	datad => VCC,
	cin => \U_SLAVE_B|U_S2P|Add0~3\,
	combout => \U_SLAVE_B|U_S2P|Add0~4_combout\,
	cout => \U_SLAVE_B|U_S2P|Add0~5\);

-- Location: FF_X8_Y26_N27
\U_SLAVE_B|U_S2P|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|Add0~4_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|cont\(2));

-- Location: LCCOMB_X8_Y26_N28
\U_SLAVE_B|U_S2P|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Add0~6_combout\ = (\U_SLAVE_B|U_S2P|cont\(3) & (!\U_SLAVE_B|U_S2P|Add0~5\)) # (!\U_SLAVE_B|U_S2P|cont\(3) & ((\U_SLAVE_B|U_S2P|Add0~5\) # (GND)))
-- \U_SLAVE_B|U_S2P|Add0~7\ = CARRY((!\U_SLAVE_B|U_S2P|Add0~5\) # (!\U_SLAVE_B|U_S2P|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|cont\(3),
	datad => VCC,
	cin => \U_SLAVE_B|U_S2P|Add0~5\,
	combout => \U_SLAVE_B|U_S2P|Add0~6_combout\,
	cout => \U_SLAVE_B|U_S2P|Add0~7\);

-- Location: FF_X8_Y26_N29
\U_SLAVE_B|U_S2P|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|Add0~6_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|cont\(3));

-- Location: LCCOMB_X8_Y26_N14
\U_SLAVE_B|U_S2P|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Equal1~0_combout\ = (\U_SLAVE_B|U_S2P|cont\(0) & (\U_SLAVE_B|U_S2P|cont\(2) & (\U_SLAVE_B|U_S2P|cont\(3) & !\U_SLAVE_B|U_S2P|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|cont\(0),
	datab => \U_SLAVE_B|U_S2P|cont\(2),
	datac => \U_SLAVE_B|U_S2P|cont\(3),
	datad => \U_SLAVE_B|U_S2P|cont\(4),
	combout => \U_SLAVE_B|U_S2P|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y26_N30
\U_SLAVE_B|U_S2P|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|Add0~8_combout\ = \U_SLAVE_B|U_S2P|Add0~7\ $ (!\U_SLAVE_B|U_S2P|cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_B|U_S2P|cont\(4),
	cin => \U_SLAVE_B|U_S2P|Add0~7\,
	combout => \U_SLAVE_B|U_S2P|Add0~8_combout\);

-- Location: LCCOMB_X7_Y26_N28
\U_SLAVE_B|U_S2P|cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|cont~0_combout\ = (\U_SLAVE_B|U_S2P|Add0~8_combout\ & ((!\U_SLAVE_B|U_S2P|cont\(1)) # (!\U_SLAVE_B|U_S2P|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|Equal1~0_combout\,
	datac => \U_SLAVE_B|U_S2P|Add0~8_combout\,
	datad => \U_SLAVE_B|U_S2P|cont\(1),
	combout => \U_SLAVE_B|U_S2P|cont~0_combout\);

-- Location: FF_X7_Y26_N29
\U_SLAVE_B|U_S2P|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|cont~0_combout\,
	clrn => \U_SLAVE_B|U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|cont\(4));

-- Location: LCCOMB_X8_Y26_N20
\U_SLAVE_B|U_S2P|o_DATA[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|o_DATA[15]~0_combout\ = (\U_SLAVE_B|U_S2P|cont\(3) & (\U_SLAVE_B|U_S2P|cont\(0) & \U_SLAVE_B|U_S2P|cont\(1))) # (!\U_SLAVE_B|U_S2P|cont\(3) & (!\U_SLAVE_B|U_S2P|cont\(0) & !\U_SLAVE_B|U_S2P|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|cont\(3),
	datac => \U_SLAVE_B|U_S2P|cont\(0),
	datad => \U_SLAVE_B|U_S2P|cont\(1),
	combout => \U_SLAVE_B|U_S2P|o_DATA[15]~0_combout\);

-- Location: LCCOMB_X7_Y26_N0
\U_SLAVE_B|U_S2P|o_DATA[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\ = (!\U_SLAVE_B|U_S2P|cont\(4) & (\U_SLAVE_B|U_S2P|o_DATA[15]~0_combout\ & (\U_SLAVE_B|U_S2P|cont\(2) $ (!\U_SLAVE_B|U_S2P|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|cont\(2),
	datab => \U_SLAVE_B|U_S2P|cont\(4),
	datac => \U_SLAVE_B|U_S2P|o_DATA[15]~0_combout\,
	datad => \U_SLAVE_B|U_S2P|cont\(3),
	combout => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\);

-- Location: FF_X6_Y26_N9
\U_SLAVE_B|U_S2P|o_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(7),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\);

-- Location: LCCOMB_X7_Y26_N6
\U_SLAVE_B|U_S2P|o_DATA[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|o_DATA[9]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(8),
	combout => \U_SLAVE_B|U_S2P|o_DATA[9]~reg0feeder_combout\);

-- Location: FF_X7_Y26_N7
\U_SLAVE_B|U_S2P|o_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|o_DATA[9]~reg0feeder_combout\,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\);

-- Location: FF_X7_Y26_N19
\U_SLAVE_B|U_S2P|o_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(10),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\);

-- Location: FF_X7_Y26_N15
\U_SLAVE_B|U_S2P|o_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(9),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\);

-- Location: FF_X7_Y26_N13
\U_SLAVE_B|U_S2P|o_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(13),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[14]~reg0_q\);

-- Location: FF_X7_Y26_N9
\U_SLAVE_B|U_S2P|o_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(14),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[15]~reg0_q\);

-- Location: FF_X7_Y26_N17
\U_SLAVE_B|U_S2P|o_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(11),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[12]~reg0_q\);

-- Location: LCCOMB_X7_Y26_N10
\U_SLAVE_B|U_S2P|o_DATA[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_S2P|o_DATA[13]~reg0feeder_combout\ = \U_SLAVE_A|U_S2P|w_DATA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SLAVE_A|U_S2P|w_DATA\(12),
	combout => \U_SLAVE_B|U_S2P|o_DATA[13]~reg0feeder_combout\);

-- Location: FF_X7_Y26_N11
\U_SLAVE_B|U_S2P|o_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	d => \U_SLAVE_B|U_S2P|o_DATA[13]~reg0feeder_combout\,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[13]~reg0_q\);

-- Location: LCCOMB_X7_Y26_N16
\U_SLAVE_B|U_STM_SLAVE|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\ = (!\U_SLAVE_B|U_S2P|o_DATA[14]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[15]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[12]~reg0_q\ & !\U_SLAVE_B|U_S2P|o_DATA[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|o_DATA[14]~reg0_q\,
	datab => \U_SLAVE_B|U_S2P|o_DATA[15]~reg0_q\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[12]~reg0_q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[13]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y26_N14
\U_SLAVE_B|U_STM_SLAVE|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\ = (\U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\ & \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\,
	datab => \U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\);

-- Location: LCCOMB_X4_Y25_N26
\U_SLAVE_B|U_STM_SLAVE|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~22_combout\ = (\U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~22_combout\);

-- Location: FF_X4_Y25_N27
\U_SLAVE_B|U_STM_SLAVE|state.st_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|state~22_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\);

-- Location: LCCOMB_X4_Y25_N18
\U_SLAVE_B|U_STM_SLAVE|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~18_combout\ = (\U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\ & \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~18_combout\);

-- Location: FF_X4_Y25_N19
\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_SLAVE_B|U_STM_SLAVE|state~18_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\);

-- Location: LCCOMB_X4_Y25_N20
\U_SLAVE_B|U_STM_SLAVE|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Selector9~1_combout\ = (!\U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Selector9~1_combout\);

-- Location: LCCOMB_X3_Y25_N4
\U_SLAVE_B|U_STM_SLAVE|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Selector9~2_combout\ = (\U_SLAVE_B|U_STM_SLAVE|Selector9~1_combout\) # ((\U_SLAVE_B|U_STM_SLAVE|stage~q\ & ((\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\) # (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|stage~q\,
	datac => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~1_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Selector9~2_combout\);

-- Location: LCCOMB_X3_Y25_N24
\U_SLAVE_B|U_STM_SLAVE|stage~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|stage~feeder_combout\ = \U_SLAVE_B|U_STM_SLAVE|Selector9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_B|U_STM_SLAVE|Selector9~2_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|stage~feeder_combout\);

-- Location: FF_X3_Y25_N25
\U_SLAVE_B|U_STM_SLAVE|stage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|stage~feeder_combout\,
	ena => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|stage~q\);

-- Location: FF_X6_Y26_N29
\U_SLAVE_B|U_S2P|o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_MASTER|U_REG_SDA|o_Q~q\,
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\);

-- Location: FF_X6_Y26_N19
\U_SLAVE_B|U_S2P|o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(0),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\);

-- Location: LCCOMB_X6_Y26_N2
\U_SLAVE_B|U_STM_SLAVE|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal0~0_combout\ = (!\U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\ & !\U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y26_N30
\U_SLAVE_B|U_STM_SLAVE|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal1~3_combout\ = (!\U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\ & !\U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_S2P|o_DATA[10]~reg0_q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[11]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal1~3_combout\);

-- Location: FF_X6_Y26_N11
\U_SLAVE_B|U_S2P|o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(6),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\);

-- Location: FF_X6_Y26_N25
\U_SLAVE_B|U_S2P|o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(5),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\);

-- Location: LCCOMB_X6_Y26_N30
\U_SLAVE_B|U_STM_SLAVE|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal0~1_combout\ = (!\U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\ & !\U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\,
	datab => \U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[9]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal0~1_combout\);

-- Location: FF_X6_Y26_N13
\U_SLAVE_B|U_S2P|o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(1),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\);

-- Location: FF_X6_Y26_N17
\U_SLAVE_B|U_S2P|o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(3),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\);

-- Location: FF_X6_Y26_N21
\U_SLAVE_B|U_S2P|o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(2),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\);

-- Location: FF_X6_Y26_N1
\U_SLAVE_B|U_S2P|o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_MASTER|U_REG_SCL|o_Q~clkctrl_outclk\,
	asdata => \U_SLAVE_A|U_S2P|w_DATA\(4),
	sload => VCC,
	ena => \U_SLAVE_B|U_S2P|o_DATA[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\);

-- Location: LCCOMB_X6_Y26_N6
\U_SLAVE_B|U_STM_SLAVE|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal0~2_combout\ = (!\U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\ & (!\U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\ & !\U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\,
	datab => \U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y25_N6
\U_SLAVE_B|U_STM_SLAVE|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Equal0~3_combout\ = (\U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\ & (\U_SLAVE_B|U_STM_SLAVE|Equal1~3_combout\ & (\U_SLAVE_B|U_STM_SLAVE|Equal0~1_combout\ & \U_SLAVE_B|U_STM_SLAVE|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|Equal1~2_combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|Equal1~3_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|Equal0~1_combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Equal0~2_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y25_N28
\U_SLAVE_B|U_STM_SLAVE|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~19_combout\ = (\U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\ & (!\U_SLAVE_B|U_STM_SLAVE|stage~q\ & ((!\U_SLAVE_B|U_STM_SLAVE|Equal0~3_combout\) # (!\U_SLAVE_B|U_STM_SLAVE|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_DET_FRAME|o_ENABLE~combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|stage~q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|Equal0~0_combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Equal0~3_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~19_combout\);

-- Location: LCCOMB_X6_Y25_N12
\U_SLAVE_B|U_STM_SLAVE|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~20_combout\ = (\U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ & ((\U_SLAVE_B|U_STM_SLAVE|state~19_combout\) # (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state~19_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~20_combout\);

-- Location: FF_X6_Y25_N13
\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|state~20_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\);

-- Location: LCCOMB_X6_Y25_N22
\U_SLAVE_B|U_STM_SLAVE|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~21_combout\ = (!\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_SLAVE_B|U_STM_SLAVE|state~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state~19_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~21_combout\);

-- Location: FF_X6_Y25_N23
\U_SLAVE_B|U_STM_SLAVE|state.st_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|state~21_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\);

-- Location: LCCOMB_X4_Y25_N24
\U_SLAVE_B|U_STM_SLAVE|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~16_combout\ = (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ & ((\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\) # ((\U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ & !\U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Equal1~4_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~16_combout\);

-- Location: FF_X4_Y25_N25
\U_SLAVE_B|U_STM_SLAVE|state.st_NULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|state~16_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\);

-- Location: LCCOMB_X4_Y25_N10
\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\ = (!\U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\ & (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X4_Y25_N6
\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1_combout\ = (\U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\ & ((\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ $ (\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\))) # (!\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\ & 
-- (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X4_Y25_N28
\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ = (\U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\ & ((!\U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\)))) # (!\U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\ & 
-- ((\U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\)) # (!\U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\ & ((\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_ID~q\,
	datab => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~0_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~1_combout\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X4_Y25_N16
\U_SLAVE_B|U_STM_SLAVE|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state~17_combout\ = (\U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\ & (\U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\ & !\U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|state.st_IDLE~2_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RW~q\,
	datad => \U_SLAVE_B|U_S2P|o_DATA[8]~reg0_q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state~17_combout\);

-- Location: LCCOMB_X4_Y25_N14
\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\ = \U_SLAVE_B|U_STM_SLAVE|state~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SLAVE_B|U_STM_SLAVE|state~17_combout\,
	combout => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\);

-- Location: FF_X4_Y25_N15
\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\);

-- Location: LCCOMB_X4_Y25_N22
\U_SLAVE_B|U_STM_SLAVE|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\ = (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y25_N30
\U_SLAVE_B|U_STM_SLAVE|w_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\ & (\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\)) # (!\U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\ & ((!\U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|WideOr5~0_combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \i_RST~input_o\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_NULL~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\);

-- Location: LCCOMB_X5_Y25_N4
\U_SLAVE_A|U_STM_SLAVE|w_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\ & (\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\)) # (!\U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\ & ((!\U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|WideOr5~0_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|state.st_NULL~q\,
	datad => \i_RST~input_o\,
	combout => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\);

-- Location: LCCOMB_X32_Y25_N0
\U_MUX_3x1_3SEL|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|Equal3~0_combout\ = (!\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\ & ((!\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\) # (!\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	combout => \U_MUX_3x1_3SEL|Equal3~0_combout\);

-- Location: LCCOMB_X4_Y25_N8
\U_SLAVE_B|U_STM_SLAVE|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|Selector9~0_combout\ = (!\U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_B|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_B|U_STM_SLAVE|Selector9~0_combout\);

-- Location: CLKCTRL_G4
\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X6_Y26_N10
\U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[7]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X32_Y25_N4
\U_MUX_3x1_3SEL|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|Equal2~0_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\ & (\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\ & !\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	combout => \U_MUX_3x1_3SEL|Equal2~0_combout\);

-- Location: LCCOMB_X4_Y26_N6
\U_SLAVE_C|U_STM_SLAVE|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|Selector9~0_combout\ = (!\U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SLAVE_C|U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_SLAVE_C|U_STM_SLAVE|Selector9~0_combout\);

-- Location: CLKCTRL_G1
\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X5_Y26_N16
\U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[7]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X32_Y25_N2
\U_MUX_3x1_3SEL|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|Equal1~0_combout\ = ((\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\) # (\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\)) # (!\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	combout => \U_MUX_3x1_3SEL|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y26_N4
\U_MUX_3x1_3SEL|o_S[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[7]~0_combout\ = (\U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\ & ((\U_MUX_3x1_3SEL|Equal2~0_combout\) # ((\U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\ & !\U_MUX_3x1_3SEL|Equal1~0_combout\)))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\ & (((\U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\ & !\U_MUX_3x1_3SEL|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datab => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datac => \U_SLAVE_C|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[7]~0_combout\);

-- Location: LCCOMB_X9_Y26_N18
\U_MUX_3x1_3SEL|o_S[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[7]~1_combout\ = (\U_MUX_3x1_3SEL|o_S[7]~0_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datac => \U_MUX_3x1_3SEL|o_S[7]~0_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[7]~1_combout\);

-- Location: LCCOMB_X6_Y26_N24
\U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[6]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X5_Y26_N10
\U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[6]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N20
\U_MUX_3x1_3SEL|o_S[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[6]~2_combout\ = (\U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\ & ((\U_MUX_3x1_3SEL|Equal2~0_combout\) # ((\U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\ & !\U_MUX_3x1_3SEL|Equal1~0_combout\)))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\ & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\ & ((!\U_MUX_3x1_3SEL|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[6]~2_combout\);

-- Location: LCCOMB_X2_Y26_N0
\U_MUX_3x1_3SEL|o_S[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[6]~3_combout\ = (\U_MUX_3x1_3SEL|o_S[6]~2_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datab => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datad => \U_MUX_3x1_3SEL|o_S[6]~2_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[6]~3_combout\);

-- Location: LCCOMB_X5_Y26_N28
\U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[5]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X6_Y26_N0
\U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[5]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N2
\U_MUX_3x1_3SEL|o_S[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[5]~4_combout\ = (\U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\ & (((\U_MUX_3x1_3SEL|Equal2~0_combout\ & \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\)) # (!\U_MUX_3x1_3SEL|Equal1~0_combout\))) # 
-- (!\U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\ & (\U_MUX_3x1_3SEL|Equal2~0_combout\ & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datab => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[5]~4_combout\);

-- Location: LCCOMB_X9_Y26_N8
\U_MUX_3x1_3SEL|o_S[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[5]~5_combout\ = (\U_MUX_3x1_3SEL|o_S[5]~4_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datad => \U_MUX_3x1_3SEL|o_S[5]~4_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[5]~5_combout\);

-- Location: LCCOMB_X6_Y26_N16
\U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[4]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X5_Y26_N14
\U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[4]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N14
\U_MUX_3x1_3SEL|o_S[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[4]~6_combout\ = (\U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\ & ((\U_MUX_3x1_3SEL|Equal2~0_combout\) # ((\U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\ & !\U_MUX_3x1_3SEL|Equal1~0_combout\)))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\ & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\ & ((!\U_MUX_3x1_3SEL|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datab => \U_SLAVE_C|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[4]~6_combout\);

-- Location: LCCOMB_X9_Y26_N12
\U_MUX_3x1_3SEL|o_S[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[4]~7_combout\ = (\U_MUX_3x1_3SEL|o_S[4]~6_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_MUX_3x1_3SEL|o_S[4]~6_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|o_DATA[4]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[4]~7_combout\);

-- Location: LCCOMB_X5_Y26_N20
\U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X6_Y26_N20
\U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N30
\U_MUX_3x1_3SEL|o_S[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[3]~8_combout\ = (\U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\ & (((\U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\ & \U_MUX_3x1_3SEL|Equal2~0_combout\)) # (!\U_MUX_3x1_3SEL|Equal1~0_combout\))) # 
-- (!\U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\ & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\ & (\U_MUX_3x1_3SEL|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[3]~8_combout\);

-- Location: LCCOMB_X9_Y26_N28
\U_MUX_3x1_3SEL|o_S[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[3]~9_combout\ = (\U_MUX_3x1_3SEL|o_S[3]~8_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_MUX_3x1_3SEL|o_S[3]~8_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|o_DATA[3]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[3]~9_combout\);

-- Location: LCCOMB_X26_Y27_N8
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \U_MUX_3x1_3SEL|o_S[3]~9_combout\ $ (VCC)
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\U_MUX_3x1_3SEL|o_S[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[3]~9_combout\,
	datad => VCC,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X26_Y27_N10
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[4]~7_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X26_Y27_N12
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & ((GND) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & 
-- (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\U_MUX_3x1_3SEL|o_S[5]~5_combout\) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MUX_3x1_3SEL|o_S[5]~5_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X26_Y27_N14
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\U_MUX_3x1_3SEL|o_S[6]~3_combout\ & (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\U_MUX_3x1_3SEL|o_S[6]~3_combout\ & 
-- ((\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\U_MUX_3x1_3SEL|o_S[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[6]~3_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X26_Y27_N16
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MUX_3x1_3SEL|o_S[7]~1_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X26_Y27_N18
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X26_Y27_N0
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MUX_3x1_3SEL|o_S[7]~1_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X27_Y27_N8
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X26_Y27_N26
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\U_MUX_3x1_3SEL|o_S[6]~3_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MUX_3x1_3SEL|o_S[6]~3_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X26_Y27_N4
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X27_Y27_N30
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X28_Y27_N0
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MUX_3x1_3SEL|o_S[5]~5_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X26_Y27_N2
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[4]~7_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X27_Y27_N28
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X27_Y27_N6
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X26_Y27_N28
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MUX_3x1_3SEL|o_S[3]~9_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X6_Y26_N12
\U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[2]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X5_Y26_N22
\U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[2]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N22
\U_MUX_3x1_3SEL|o_S[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[2]~10_combout\ = (\U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\ & ((\U_MUX_3x1_3SEL|Equal2~0_combout\) # ((!\U_MUX_3x1_3SEL|Equal1~0_combout\ & \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\)))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\ & (!\U_MUX_3x1_3SEL|Equal1~0_combout\ & ((\U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	datab => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[2]~10_combout\);

-- Location: LCCOMB_X9_Y26_N0
\U_MUX_3x1_3SEL|o_S[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[2]~11_combout\ = (\U_MUX_3x1_3SEL|o_S[2]~10_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_MUX_3x1_3SEL|o_S[2]~10_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|o_DATA[2]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[2]~11_combout\);

-- Location: LCCOMB_X27_Y27_N12
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\U_MUX_3x1_3SEL|o_S[2]~11_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MUX_3x1_3SEL|o_S[2]~11_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X27_Y27_N2
\U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\U_MUX_3x1_3SEL|o_S[2]~11_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MUX_3x1_3SEL|o_S[2]~11_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X27_Y27_N14
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X27_Y27_N16
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & (!\U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & 
-- !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X27_Y27_N18
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X27_Y27_N20
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X27_Y27_N22
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X27_Y27_N24
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \U_BCD7|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X27_Y27_N26
\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X27_Y27_N0
\U_BCD7|Mult0|mult_core|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Mult0|mult_core|_~0_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\U_BCD7|Mult0|mult_core|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Mult0|mult_core|_~1_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X28_Y27_N30
\U_BCD7|Mult0|mult_core|romout[0][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\ = \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\U_BCD7|aux[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[2]~0_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_MUX_3x1_3SEL|o_S[2]~11_combout\) # (GND))) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\U_MUX_3x1_3SEL|o_S[2]~11_combout\ $ (VCC)))
-- \U_BCD7|aux[2]~1\ = CARRY((\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (\U_MUX_3x1_3SEL|o_S[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[2]~11_combout\,
	datad => VCC,
	combout => \U_BCD7|aux[2]~0_combout\,
	cout => \U_BCD7|aux[2]~1\);

-- Location: LCCOMB_X28_Y27_N4
\U_BCD7|aux[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[3]~2_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & (\U_BCD7|aux[2]~1\ & VCC)) # (!\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & (!\U_BCD7|aux[2]~1\)))) # 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & (!\U_BCD7|aux[2]~1\)) # (!\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & ((\U_BCD7|aux[2]~1\) # (GND)))))
-- \U_BCD7|aux[3]~3\ = CARRY((\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\U_MUX_3x1_3SEL|o_S[3]~9_combout\ & !\U_BCD7|aux[2]~1\)) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((!\U_BCD7|aux[2]~1\) # (!\U_MUX_3x1_3SEL|o_S[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[3]~9_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[2]~1\,
	combout => \U_BCD7|aux[3]~2_combout\,
	cout => \U_BCD7|aux[3]~3\);

-- Location: LCCOMB_X28_Y27_N6
\U_BCD7|aux[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[4]~4_combout\ = (\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & ((GND) # (!\U_BCD7|aux[3]~3\))) # (!\U_MUX_3x1_3SEL|o_S[4]~7_combout\ & (\U_BCD7|aux[3]~3\ $ (GND)))
-- \U_BCD7|aux[4]~5\ = CARRY((\U_MUX_3x1_3SEL|o_S[4]~7_combout\) # (!\U_BCD7|aux[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[4]~7_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[3]~3\,
	combout => \U_BCD7|aux[4]~4_combout\,
	cout => \U_BCD7|aux[4]~5\);

-- Location: LCCOMB_X28_Y27_N8
\U_BCD7|aux[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[5]~6_combout\ = (\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & (\U_BCD7|aux[4]~5\ & VCC)) # (!\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & (!\U_BCD7|aux[4]~5\)))) # 
-- (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & (!\U_BCD7|aux[4]~5\)) # (!\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & ((\U_BCD7|aux[4]~5\) # (GND)))))
-- \U_BCD7|aux[5]~7\ = CARRY((\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\U_MUX_3x1_3SEL|o_S[5]~5_combout\ & !\U_BCD7|aux[4]~5\)) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((!\U_BCD7|aux[4]~5\) # (!\U_MUX_3x1_3SEL|o_S[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[5]~5_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[4]~5\,
	combout => \U_BCD7|aux[5]~6_combout\,
	cout => \U_BCD7|aux[5]~7\);

-- Location: LCCOMB_X28_Y27_N10
\U_BCD7|aux[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[6]~8_combout\ = ((\U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\ $ (\U_MUX_3x1_3SEL|o_S[6]~3_combout\ $ (\U_BCD7|aux[5]~7\)))) # (GND)
-- \U_BCD7|aux[6]~9\ = CARRY((\U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\ & (\U_MUX_3x1_3SEL|o_S[6]~3_combout\ & !\U_BCD7|aux[5]~7\)) # (!\U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\ & ((\U_MUX_3x1_3SEL|o_S[6]~3_combout\) # (!\U_BCD7|aux[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Mult0|mult_core|romout[0][6]~0_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[6]~3_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[5]~7\,
	combout => \U_BCD7|aux[6]~8_combout\,
	cout => \U_BCD7|aux[6]~9\);

-- Location: LCCOMB_X28_Y27_N12
\U_BCD7|aux[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[7]~10_combout\ = (\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & ((\U_BCD7|Mult0|mult_core|_~1_combout\ & (!\U_BCD7|aux[6]~9\)) # (!\U_BCD7|Mult0|mult_core|_~1_combout\ & (\U_BCD7|aux[6]~9\ & VCC)))) # (!\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & 
-- ((\U_BCD7|Mult0|mult_core|_~1_combout\ & ((\U_BCD7|aux[6]~9\) # (GND))) # (!\U_BCD7|Mult0|mult_core|_~1_combout\ & (!\U_BCD7|aux[6]~9\))))
-- \U_BCD7|aux[7]~11\ = CARRY((\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & (\U_BCD7|Mult0|mult_core|_~1_combout\ & !\U_BCD7|aux[6]~9\)) # (!\U_MUX_3x1_3SEL|o_S[7]~1_combout\ & ((\U_BCD7|Mult0|mult_core|_~1_combout\) # (!\U_BCD7|aux[6]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[7]~1_combout\,
	datab => \U_BCD7|Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[6]~9\,
	combout => \U_BCD7|aux[7]~10_combout\,
	cout => \U_BCD7|aux[7]~11\);

-- Location: LCCOMB_X28_Y27_N14
\U_BCD7|aux[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[8]~12_combout\ = (\U_BCD7|Mult0|mult_core|_~0_combout\ & (\U_BCD7|aux[7]~11\ $ (GND))) # (!\U_BCD7|Mult0|mult_core|_~0_combout\ & (!\U_BCD7|aux[7]~11\ & VCC))
-- \U_BCD7|aux[8]~13\ = CARRY((\U_BCD7|Mult0|mult_core|_~0_combout\ & !\U_BCD7|aux[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|aux[7]~11\,
	combout => \U_BCD7|aux[8]~12_combout\,
	cout => \U_BCD7|aux[8]~13\);

-- Location: LCCOMB_X28_Y27_N16
\U_BCD7|aux[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[9]~14_combout\ = !\U_BCD7|aux[8]~13\
-- \U_BCD7|aux[9]~15\ = CARRY(!\U_BCD7|aux[8]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[8]~13\,
	combout => \U_BCD7|aux[9]~14_combout\,
	cout => \U_BCD7|aux[9]~15\);

-- Location: LCCOMB_X28_Y27_N18
\U_BCD7|aux[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[10]~16_combout\ = \U_BCD7|aux[9]~15\ $ (GND)
-- \U_BCD7|aux[10]~17\ = CARRY(!\U_BCD7|aux[9]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[9]~15\,
	combout => \U_BCD7|aux[10]~16_combout\,
	cout => \U_BCD7|aux[10]~17\);

-- Location: LCCOMB_X28_Y27_N20
\U_BCD7|aux[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[11]~18_combout\ = !\U_BCD7|aux[10]~17\
-- \U_BCD7|aux[11]~19\ = CARRY(!\U_BCD7|aux[10]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[10]~17\,
	combout => \U_BCD7|aux[11]~18_combout\,
	cout => \U_BCD7|aux[11]~19\);

-- Location: LCCOMB_X28_Y27_N22
\U_BCD7|aux[12]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[12]~20_combout\ = \U_BCD7|aux[11]~19\ $ (GND)
-- \U_BCD7|aux[12]~21\ = CARRY(!\U_BCD7|aux[11]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[11]~19\,
	combout => \U_BCD7|aux[12]~20_combout\,
	cout => \U_BCD7|aux[12]~21\);

-- Location: LCCOMB_X28_Y27_N24
\U_BCD7|aux[13]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[13]~22_combout\ = !\U_BCD7|aux[12]~21\
-- \U_BCD7|aux[13]~23\ = CARRY(!\U_BCD7|aux[12]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[12]~21\,
	combout => \U_BCD7|aux[13]~22_combout\,
	cout => \U_BCD7|aux[13]~23\);

-- Location: LCCOMB_X28_Y27_N26
\U_BCD7|aux[14]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|aux[14]~24_combout\ = \U_BCD7|aux[13]~23\ $ (GND)
-- \U_BCD7|aux[14]~25\ = CARRY(!\U_BCD7|aux[13]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|aux[13]~23\,
	combout => \U_BCD7|aux[14]~24_combout\,
	cout => \U_BCD7|aux[14]~25\);

-- Location: LCCOMB_X28_Y27_N28
\U_BCD7|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add0~0_combout\ = \U_BCD7|aux[14]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|aux[14]~25\,
	combout => \U_BCD7|Add0~0_combout\);

-- Location: LCCOMB_X28_Y25_N28
\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\ = \U_BCD7|Add0~0_combout\ $ (\U_BCD7|aux[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|aux[7]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\);

-- Location: LCCOMB_X28_Y25_N14
\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\ = \U_BCD7|Add0~0_combout\ $ (\U_BCD7|aux[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|aux[6]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\ = \U_BCD7|aux[8]~12_combout\ $ (\U_BCD7|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[8]~12_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\);

-- Location: LCCOMB_X9_Y26_N26
\U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[0]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X6_Y26_N28
\U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[0]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N6
\U_MUX_3x1_3SEL|o_S[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[0]~12_combout\ = (\U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\ & (((\U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\ & \U_MUX_3x1_3SEL|Equal2~0_combout\)) # (!\U_MUX_3x1_3SEL|Equal1~0_combout\))) # 
-- (!\U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\ & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\ & (\U_MUX_3x1_3SEL|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datab => \U_SLAVE_B|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[0]~12_combout\);

-- Location: LCCOMB_X9_Y26_N16
\U_MUX_3x1_3SEL|o_S[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[0]~13_combout\ = (\U_MUX_3x1_3SEL|o_S[0]~12_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datad => \U_MUX_3x1_3SEL|o_S[0]~12_combout\,
	combout => \U_MUX_3x1_3SEL|o_S[0]~13_combout\);

-- Location: LCCOMB_X6_Y26_N18
\U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\)) # (!GLOBAL(\U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_B|U_S2P|o_DATA[1]~reg0_q\,
	datad => \U_SLAVE_B|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X5_Y26_N12
\U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & (\U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\)) # (!GLOBAL(\U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\) & 
-- ((\U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_SLAVE_C|U_S2P|o_DATA[1]~reg0_q\,
	datad => \U_SLAVE_C|U_STM_SLAVE|Selector9~0clkctrl_outclk\,
	combout => \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X9_Y26_N10
\U_MUX_3x1_3SEL|o_S[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[1]~14_combout\ = (\U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\ & ((\U_MUX_3x1_3SEL|Equal2~0_combout\) # ((!\U_MUX_3x1_3SEL|Equal1~0_combout\ & \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\)))) # 
-- (!\U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\ & (!\U_MUX_3x1_3SEL|Equal1~0_combout\ & ((\U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_B|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	datab => \U_MUX_3x1_3SEL|Equal1~0_combout\,
	datac => \U_MUX_3x1_3SEL|Equal2~0_combout\,
	datad => \U_SLAVE_C|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[1]~14_combout\);

-- Location: LCCOMB_X9_Y26_N24
\U_MUX_3x1_3SEL|o_S[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_S[1]~15_combout\ = (\U_MUX_3x1_3SEL|o_S[1]~14_combout\) # ((!\U_MUX_3x1_3SEL|Equal3~0_combout\ & ((\U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\) # (!\U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[1]~14_combout\,
	datab => \U_SLAVE_A|U_STM_SLAVE|o_DATA[0]_177~combout\,
	datac => \U_MUX_3x1_3SEL|Equal3~0_combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|o_DATA[1]$latch~combout\,
	combout => \U_MUX_3x1_3SEL|o_S[1]~15_combout\);

-- Location: LCCOMB_X27_Y26_N24
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (!\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & (!\U_MUX_3x1_3SEL|o_S[1]~15_combout\ & (!\U_BCD7|aux[2]~0_combout\ & !\U_BCD7|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[1]~15_combout\,
	datac => \U_BCD7|aux[2]~0_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X29_Y25_N16
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ = (\U_BCD7|aux[4]~4_combout\ & ((\U_BCD7|aux[5]~6_combout\) # (!\U_BCD7|aux[3]~2_combout\))) # (!\U_BCD7|aux[4]~4_combout\ & (\U_BCD7|aux[5]~6_combout\ & !\U_BCD7|aux[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[4]~4_combout\,
	datab => \U_BCD7|aux[5]~6_combout\,
	datad => \U_BCD7|aux[3]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\);

-- Location: LCCOMB_X28_Y25_N16
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\U_BCD7|aux[3]~2_combout\ & (\U_BCD7|Add0~0_combout\ & 
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\)) # (!\U_BCD7|aux[3]~2_combout\ & (!\U_BCD7|Add0~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datab => \U_BCD7|aux[3]~2_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\);

-- Location: LCCOMB_X28_Y25_N20
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\ & (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\ & \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X31_Y27_N12
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((\U_BCD7|Add0~0_combout\ & (\U_BCD7|aux[10]~16_combout\ & \U_BCD7|aux[9]~14_combout\)) # (!\U_BCD7|Add0~0_combout\ & 
-- (!\U_BCD7|aux[10]~16_combout\ & !\U_BCD7|aux[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|aux[10]~16_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datad => \U_BCD7|aux[9]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\);

-- Location: LCCOMB_X33_Y25_N0
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & ((\U_BCD7|aux[12]~20_combout\ & (\U_BCD7|aux[11]~18_combout\ & \U_BCD7|Add0~0_combout\)) # 
-- (!\U_BCD7|aux[12]~20_combout\ & (!\U_BCD7|aux[11]~18_combout\ & !\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[12]~20_combout\,
	datab => \U_BCD7|aux[11]~18_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\);

-- Location: LCCOMB_X32_Y26_N24
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ & ((\U_BCD7|aux[14]~24_combout\ & (\U_BCD7|aux[13]~22_combout\ & \U_BCD7|Add0~0_combout\)) # 
-- (!\U_BCD7|aux[14]~24_combout\ & (!\U_BCD7|aux[13]~22_combout\ & !\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[14]~24_combout\,
	datab => \U_BCD7|aux[13]~22_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\);

-- Location: LCCOMB_X32_Y26_N12
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\ = \U_BCD7|aux[14]~24_combout\ $ (((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ & (!\U_BCD7|aux[13]~22_combout\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ & ((\U_BCD7|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[14]~24_combout\,
	datab => \U_BCD7|aux[13]~22_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\);

-- Location: LCCOMB_X32_Y26_N30
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\ = \U_BCD7|aux[13]~22_combout\ $ (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|aux[13]~22_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\);

-- Location: LCCOMB_X32_Y26_N2
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\ $ (GND)
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[13]~8_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y26_N4
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\ & (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y26_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\ & (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y26_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X32_Y26_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y26_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110_combout\);

-- Location: LCCOMB_X33_Y26_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\);

-- Location: LCCOMB_X33_Y26_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\);

-- Location: LCCOMB_X32_Y26_N14
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\);

-- Location: LCCOMB_X33_Y26_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\);

-- Location: LCCOMB_X33_Y26_N6
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\);

-- Location: LCCOMB_X32_Y26_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U_BCD7|aux[13]~22_combout\ $ (\U_BCD7|Add0~0_combout\ $ 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_BCD7|aux[13]~22_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\);

-- Location: LCCOMB_X33_Y27_N20
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\ = \U_BCD7|aux[12]~20_combout\ $ (((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & ((!\U_BCD7|aux[11]~18_combout\))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & (\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[12]~20_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|aux[11]~18_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\);

-- Location: LCCOMB_X33_Y26_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\);

-- Location: LCCOMB_X33_Y26_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\);

-- Location: LCCOMB_X33_Y26_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~117_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[24]~116_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X33_Y26_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~115_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X33_Y26_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~114_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[26]~113_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X33_Y26_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~112_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[27]~111_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X33_Y26_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110_combout\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[28]~110_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X33_Y26_N18
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X33_Y26_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\)) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~6_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222_combout\);

-- Location: LCCOMB_X35_Y26_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118_combout\);

-- Location: LCCOMB_X32_Y26_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\)) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[14]~7_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\);

-- Location: LCCOMB_X33_Y26_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\);

-- Location: LCCOMB_X32_Y26_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[25]~195_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\);

-- Location: LCCOMB_X33_Y27_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\);

-- Location: LCCOMB_X33_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\);

-- Location: LCCOMB_X33_Y27_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\);

-- Location: LCCOMB_X33_Y27_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\U_BCD7|aux[11]~18_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ $ 
-- (!\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[11]~18_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\);

-- Location: LCCOMB_X33_Y27_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\U_BCD7|aux[11]~18_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ 
-- $ (!\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[11]~18_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\);

-- Location: LCCOMB_X33_Y27_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~123_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[30]~124_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X33_Y27_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~122_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[31]~121_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X33_Y27_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~120_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X33_Y27_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~119_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X33_Y27_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~222_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[34]~118_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X33_Y27_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X33_Y27_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125_combout\);

-- Location: LCCOMB_X33_Y27_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[33]~223_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197_combout\);

-- Location: LCCOMB_X33_Y27_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[32]~196_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\);

-- Location: LCCOMB_X32_Y27_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\);

-- Location: LCCOMB_X33_Y26_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\)) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[12]~9_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\);

-- Location: LCCOMB_X32_Y27_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\);

-- Location: LCCOMB_X32_Y27_N12
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\);

-- Location: LCCOMB_X33_Y27_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\U_BCD7|aux[11]~18_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ $ 
-- (!\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[11]~18_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\);

-- Location: LCCOMB_X31_Y27_N14
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\ = \U_BCD7|aux[10]~16_combout\ $ (((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((!\U_BCD7|aux[9]~14_combout\))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & (\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|aux[10]~16_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datad => \U_BCD7|aux[9]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\);

-- Location: LCCOMB_X32_Y27_N10
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\);

-- Location: LCCOMB_X32_Y27_N8
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\);

-- Location: LCCOMB_X32_Y27_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~130_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[36]~131_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X32_Y27_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~129_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X32_Y27_N18
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~127_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X32_Y27_N20
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~126_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X32_Y27_N22
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~125_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[40]~197_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y27_N24
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y27_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132_combout\);

-- Location: LCCOMB_X33_Y27_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[39]~198_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199_combout\);

-- Location: LCCOMB_X32_Y27_N6
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[38]~224_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\);

-- Location: LCCOMB_X31_Y27_N8
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\);

-- Location: LCCOMB_X32_Y27_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[37]~128_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\);

-- Location: LCCOMB_X32_Y27_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\);

-- Location: LCCOMB_X31_Y27_N6
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\);

-- Location: LCCOMB_X31_Y27_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\);

-- Location: LCCOMB_X31_Y27_N10
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ 
-- (!\U_BCD7|aux[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datad => \U_BCD7|aux[9]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\);

-- Location: LCCOMB_X31_Y27_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ 
-- (!\U_BCD7|aux[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datad => \U_BCD7|aux[9]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\);

-- Location: LCCOMB_X31_Y27_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~137_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[42]~138_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X31_Y27_N18
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~135_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[43]~136_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X31_Y27_N20
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~134_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X31_Y27_N22
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~133_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X31_Y27_N24
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~132_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[46]~199_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y27_N26
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y26_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139_combout\);

-- Location: LCCOMB_X31_Y27_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[45]~200_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202_combout\);

-- Location: LCCOMB_X31_Y27_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[44]~201_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\);

-- Location: LCCOMB_X31_Y26_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\);

-- Location: LCCOMB_X31_Y26_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\);

-- Location: LCCOMB_X32_Y27_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[10]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\);

-- Location: LCCOMB_X31_Y27_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ 
-- (!\U_BCD7|aux[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \U_BCD7|aux[9]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\);

-- Location: LCCOMB_X31_Y26_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\);

-- Location: LCCOMB_X28_Y25_N6
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\ = \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\ $ (((!\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\ & \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~1_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|_~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\);

-- Location: LCCOMB_X31_Y26_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\);

-- Location: LCCOMB_X31_Y26_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\);

-- Location: LCCOMB_X31_Y26_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~145_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[48]~144_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X31_Y26_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~143_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X31_Y26_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~141_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X31_Y26_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~140_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X31_Y26_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~139_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[52]~202_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y26_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y26_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[51]~203_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204_combout\);

-- Location: LCCOMB_X31_Y26_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146_combout\);

-- Location: LCCOMB_X31_Y26_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[50]~225_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\);

-- Location: LCCOMB_X31_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\);

-- Location: LCCOMB_X31_Y26_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[49]~142_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\);

-- Location: LCCOMB_X31_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\);

-- Location: LCCOMB_X31_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\);

-- Location: LCCOMB_X31_Y25_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\);

-- Location: LCCOMB_X28_Y25_N12
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\U_BCD7|Add0~0_combout\ & (\U_BCD7|aux[4]~4_combout\ & \U_BCD7|aux[3]~2_combout\)) # (!\U_BCD7|Add0~0_combout\ & 
-- (!\U_BCD7|aux[4]~4_combout\ & !\U_BCD7|aux[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|aux[4]~4_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datad => \U_BCD7|aux[3]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\);

-- Location: LCCOMB_X28_Y25_N10
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\ = (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & ((\U_BCD7|aux[6]~8_combout\ & (\U_BCD7|Add0~0_combout\ & \U_BCD7|aux[5]~6_combout\)) # (!\U_BCD7|aux[6]~8_combout\ & 
-- (!\U_BCD7|Add0~0_combout\ & !\U_BCD7|aux[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \U_BCD7|aux[6]~8_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|aux[5]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\);

-- Location: LCCOMB_X27_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\ $ (\U_BCD7|aux[7]~10_combout\ $ 
-- (!\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\,
	datac => \U_BCD7|aux[7]~10_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\);

-- Location: LCCOMB_X28_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|aux[7]~10_combout\ $ 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|aux[7]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\);

-- Location: LCCOMB_X31_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~152_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[54]~151_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X31_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~150_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[55]~149_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X31_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~148_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X31_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~147_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X31_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~204_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[58]~146_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y25_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y25_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153_combout\);

-- Location: LCCOMB_X31_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[57]~205_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207_combout\);

-- Location: LCCOMB_X28_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\);

-- Location: LCCOMB_X31_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[56]~206_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\);

-- Location: LCCOMB_X31_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- ((!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[8]~11_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\);

-- Location: LCCOMB_X27_Y25_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\);

-- Location: LCCOMB_X27_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\);

-- Location: LCCOMB_X27_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\ $ (\U_BCD7|aux[7]~10_combout\ $ 
-- (!\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~13_combout\,
	datac => \U_BCD7|aux[7]~10_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\);

-- Location: LCCOMB_X24_Y26_N8
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\ = \U_BCD7|aux[6]~8_combout\ $ (((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & ((!\U_BCD7|aux[5]~6_combout\))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ & (\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|aux[5]~6_combout\,
	datad => \U_BCD7|aux[6]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\);

-- Location: LCCOMB_X30_Y25_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\);

-- Location: LCCOMB_X29_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\);

-- Location: LCCOMB_X27_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~158_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[60]~159_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X27_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~157_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X27_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~155_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X27_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~154_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X27_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~153_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[64]~207_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[63]~208_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209_combout\);

-- Location: LCCOMB_X24_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\);

-- Location: LCCOMB_X27_Y25_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\);

-- Location: LCCOMB_X27_Y25_N14
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[62]~226_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\);

-- Location: LCCOMB_X27_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[61]~156_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\);

-- Location: LCCOMB_X27_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\);

-- Location: LCCOMB_X24_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\);

-- Location: LCCOMB_X24_Y25_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\);

-- Location: LCCOMB_X24_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ $ (\U_BCD7|Add0~0_combout\ $ 
-- (!\U_BCD7|aux[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \U_BCD7|aux[5]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\);

-- Location: LCCOMB_X29_Y26_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ $ (\U_BCD7|Add0~0_combout\ $ 
-- (!\U_BCD7|aux[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \U_BCD7|aux[5]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\);

-- Location: LCCOMB_X24_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~165_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[66]~166_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X24_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~164_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[67]~163_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X24_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~162_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X24_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~161_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X24_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~209_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[70]~160_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X26_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167_combout\);

-- Location: LCCOMB_X27_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[69]~210_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212_combout\);

-- Location: LCCOMB_X26_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\);

-- Location: LCCOMB_X26_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[68]~211_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\);

-- Location: LCCOMB_X24_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\);

-- Location: LCCOMB_X24_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\)) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[6]~14_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\);

-- Location: LCCOMB_X26_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\);

-- Location: LCCOMB_X26_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\U_BCD7|aux[5]~6_combout\ $ (\U_BCD7|Add0~0_combout\ $ 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \U_BCD7|aux[5]~6_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\);

-- Location: LCCOMB_X28_Y25_N8
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\ = \U_BCD7|aux[4]~4_combout\ $ (((\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((!\U_BCD7|aux[3]~2_combout\))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (\U_BCD7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|aux[4]~4_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datad => \U_BCD7|aux[3]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\);

-- Location: LCCOMB_X26_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\);

-- Location: LCCOMB_X26_Y25_N0
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\);

-- Location: LCCOMB_X26_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~173_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[72]~172_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X26_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~171_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X26_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~169_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X26_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~168_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X26_Y25_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~167_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[76]~212_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\);

-- Location: LCCOMB_X26_Y25_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\);

-- Location: LCCOMB_X26_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[75]~213_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214_combout\);

-- Location: LCCOMB_X26_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174_combout\);

-- Location: LCCOMB_X24_Y25_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[74]~227_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\);

-- Location: LCCOMB_X29_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\);

-- Location: LCCOMB_X26_Y25_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\);

-- Location: LCCOMB_X29_Y25_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\);

-- Location: LCCOMB_X29_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\);

-- Location: LCCOMB_X29_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\);

-- Location: LCCOMB_X28_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ 
-- (!\U_BCD7|aux[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datad => \U_BCD7|aux[3]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\);

-- Location: LCCOMB_X28_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ 
-- (!\U_BCD7|aux[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datad => \U_BCD7|aux[3]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\);

-- Location: LCCOMB_X29_Y25_N0
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~179_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[78]~180_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X29_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~178_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[79]~177_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X29_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~176_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X29_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~175_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X29_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~214_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[82]~174_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[81]~215_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217_combout\);

-- Location: LCCOMB_X30_Y25_N18
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181_combout\);

-- Location: LCCOMB_X29_Y25_N14
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[80]~216_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\);

-- Location: LCCOMB_X30_Y25_N20
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\);

-- Location: LCCOMB_X30_Y25_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\);

-- Location: LCCOMB_X29_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\)) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[4]~15_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\);

-- Location: LCCOMB_X30_Y25_N12
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\);

-- Location: LCCOMB_X27_Y26_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ 
-- (!\U_BCD7|aux[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \U_BCD7|aux[3]~2_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\);

-- Location: LCCOMB_X27_Y26_N28
\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\ = \U_BCD7|aux[2]~0_combout\ $ (((\U_BCD7|Add0~0_combout\) # ((!\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & !\U_MUX_3x1_3SEL|o_S[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[1]~15_combout\,
	datac => \U_BCD7|aux[2]~0_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\);

-- Location: LCCOMB_X30_Y25_N30
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\);

-- Location: LCCOMB_X30_Y25_N24
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\);

-- Location: LCCOMB_X30_Y25_N0
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~186_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X30_Y25_N2
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X30_Y25_N4
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\)))))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~183_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X30_Y25_N6
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\)))) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ & 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\)))
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~182_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X30_Y25_N8
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~217_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[88]~181_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\);

-- Location: LCCOMB_X30_Y25_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y26_N22
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188_combout\);

-- Location: LCCOMB_X30_Y25_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[87]~218_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219_combout\);

-- Location: LCCOMB_X29_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\) # 
-- ((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[86]~228_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220_combout\);

-- Location: LCCOMB_X24_Y26_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189_combout\);

-- Location: LCCOMB_X30_Y25_N28
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\) # 
-- ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[85]~184_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221_combout\);

-- Location: LCCOMB_X27_Y26_N26
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190_combout\);

-- Location: LCCOMB_X27_Y26_N14
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192_combout\);

-- Location: LCCOMB_X27_Y26_N16
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ = (!\U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\ & \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|my_abs_num|cs2a[2]~16_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191_combout\);

-- Location: LCCOMB_X27_Y26_N12
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\U_MUX_3x1_3SEL|o_S[1]~15_combout\ $ (((\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & 
-- !\U_BCD7|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[1]~15_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193_combout\);

-- Location: LCCOMB_X27_Y26_N6
\U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194_combout\ = (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\U_MUX_3x1_3SEL|o_S[1]~15_combout\ $ (((\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & 
-- !\U_BCD7|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[1]~15_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194_combout\);

-- Location: LCCOMB_X24_Y26_N10
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193_combout\) # (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~193_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[90]~194_combout\,
	datad => VCC,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y26_N12
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~192_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[91]~191_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\);

-- Location: LCCOMB_X24_Y26_N14
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ & ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221_combout\) # 
-- (\U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~221_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[92]~190_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\);

-- Location: LCCOMB_X24_Y26_N16
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ & 
-- !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~220_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[93]~189_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y26_N18
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188_combout\) # ((\U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219_combout\) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~188_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|divider|StageOut[94]~219_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\,
	cout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y26_N20
\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = !\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\,
	combout => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y26_N0
\U_BCD7|Div1|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~0_combout\ = \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ $ (VCC)
-- \U_BCD7|Div1|auto_generated|divider|op_1~1\ = CARRY(\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => VCC,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~0_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X28_Y26_N2
\U_BCD7|Div1|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~1\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~3\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~1\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~1\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~2_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X28_Y26_N4
\U_BCD7|Div1|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~4_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~3\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~5\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~3\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~4_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X28_Y26_N6
\U_BCD7|Div1|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~6_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~5\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~5\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~7\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~5\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~5\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~6_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X28_Y26_N8
\U_BCD7|Div1|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~8_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~7\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~7\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~9\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~7\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~8_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X28_Y26_N10
\U_BCD7|Div1|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~10_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~9\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~9\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~11\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~9\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~9\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~10_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X28_Y26_N12
\U_BCD7|Div1|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~12_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~11\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~11\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~13\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~11\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~12_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X28_Y26_N14
\U_BCD7|Div1|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~14_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~13\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~13\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~15\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~13\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~13\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~14_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~15\);

-- Location: LCCOMB_X28_Y26_N16
\U_BCD7|Div1|auto_generated|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~16_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~15\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~15\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~17\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~15\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~16_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~17\);

-- Location: LCCOMB_X28_Y26_N18
\U_BCD7|Div1|auto_generated|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~18_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~17\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~17\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~19\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~17\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~17\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~18_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~19\);

-- Location: LCCOMB_X28_Y26_N20
\U_BCD7|Div1|auto_generated|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~20_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~19\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~19\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~21\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~19\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~20_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~21\);

-- Location: LCCOMB_X28_Y26_N22
\U_BCD7|Div1|auto_generated|divider|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~22_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~21\)) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~21\) # (GND)))
-- \U_BCD7|Div1|auto_generated|divider|op_1~23\ = CARRY((!\U_BCD7|Div1|auto_generated|divider|op_1~21\) # (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~21\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~22_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~23\);

-- Location: LCCOMB_X28_Y26_N24
\U_BCD7|Div1|auto_generated|divider|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~24_combout\ = (\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\U_BCD7|Div1|auto_generated|divider|op_1~23\ $ (GND))) # 
-- (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\U_BCD7|Div1|auto_generated|divider|op_1~23\ & VCC))
-- \U_BCD7|Div1|auto_generated|divider|op_1~25\ = CARRY((\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\U_BCD7|Div1|auto_generated|divider|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~23\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~24_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~25\);

-- Location: LCCOMB_X28_Y26_N26
\U_BCD7|Div1|auto_generated|divider|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~26_combout\ = !\U_BCD7|Div1|auto_generated|divider|op_1~25\
-- \U_BCD7|Div1|auto_generated|divider|op_1~27\ = CARRY(!\U_BCD7|Div1|auto_generated|divider|op_1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~25\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~26_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~27\);

-- Location: LCCOMB_X28_Y26_N28
\U_BCD7|Div1|auto_generated|divider|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~28_combout\ = \U_BCD7|Div1|auto_generated|divider|op_1~27\ $ (GND)
-- \U_BCD7|Div1|auto_generated|divider|op_1~29\ = CARRY(!\U_BCD7|Div1|auto_generated|divider|op_1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~27\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~28_combout\,
	cout => \U_BCD7|Div1|auto_generated|divider|op_1~29\);

-- Location: LCCOMB_X28_Y26_N30
\U_BCD7|Div1|auto_generated|divider|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|op_1~30_combout\ = !\U_BCD7|Div1|auto_generated|divider|op_1~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Div1|auto_generated|divider|op_1~29\,
	combout => \U_BCD7|Div1|auto_generated|divider|op_1~30_combout\);

-- Location: LCCOMB_X27_Y26_N8
\U_BCD7|Div1|auto_generated|divider|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|_~0_combout\ = (\U_BCD7|Div1|auto_generated|divider|op_1~30_combout\ & !\U_BCD7|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~30_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\U_BCD7|Div1|auto_generated|divider|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|_~1_combout\ = (\U_BCD7|Div1|auto_generated|divider|op_1~28_combout\ & !\U_BCD7|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|op_1~28_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X27_Y26_N0
\U_BCD7|Div1|auto_generated|divider|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|_~2_combout\ = (\U_BCD7|Div1|auto_generated|divider|op_1~26_combout\ & !\U_BCD7|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div1|auto_generated|divider|op_1~26_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|_~2_combout\);

-- Location: LCCOMB_X32_Y26_N20
\U_BCD7|Div1|auto_generated|divider|quotient[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~24_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\);

-- Location: LCCOMB_X32_Y26_N18
\U_BCD7|Div1|auto_generated|divider|quotient[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~22_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\);

-- Location: LCCOMB_X27_Y26_N2
\U_BCD7|Div1|auto_generated|divider|quotient[10]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~20_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\);

-- Location: LCCOMB_X27_Y26_N4
\U_BCD7|Div1|auto_generated|divider|quotient[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|op_1~18_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\);

-- Location: LCCOMB_X27_Y26_N22
\U_BCD7|Div1|auto_generated|divider|quotient[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|op_1~16_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\);

-- Location: LCCOMB_X31_Y25_N18
\U_BCD7|Div1|auto_generated|divider|quotient[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)) # (!\U_BCD7|Add0~0_combout\ & 
-- ((\U_BCD7|Div1|auto_generated|divider|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|op_1~14_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\);

-- Location: LCCOMB_X27_Y26_N20
\U_BCD7|Div1|auto_generated|divider|quotient[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~12_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\);

-- Location: LCCOMB_X24_Y26_N30
\U_BCD7|Div1|auto_generated|divider|quotient[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|op_1~10_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\);

-- Location: LCCOMB_X24_Y25_N14
\U_BCD7|Div1|auto_generated|divider|quotient[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)) # (!\U_BCD7|Add0~0_combout\ & 
-- ((\U_BCD7|Div1|auto_generated|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~8_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\);

-- Location: LCCOMB_X28_Y25_N18
\U_BCD7|Div1|auto_generated|divider|quotient[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)) # (!\U_BCD7|Add0~0_combout\ & 
-- ((\U_BCD7|Div1|auto_generated|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|op_1~6_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\);

-- Location: LCCOMB_X27_Y25_N0
\U_BCD7|Div1|auto_generated|divider|quotient[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|op_1~4_combout\,
	datab => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\);

-- Location: LCCOMB_X24_Y26_N24
\U_BCD7|Div1|auto_generated|divider|quotient[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\ = (\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))) # (!\U_BCD7|Add0~0_combout\ & 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|op_1~2_combout\,
	datac => \U_BCD7|Add0~0_combout\,
	datad => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\);

-- Location: LCCOMB_X27_Y26_N18
\U_BCD7|dezena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|dezena~0_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)) # (!\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Div1|auto_generated|divider|op_1~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|op_1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|op_1~0_combout\,
	datac => \U_BCD7|Div1|auto_generated|divider|op_1~30_combout\,
	datad => \U_BCD7|Add0~0_combout\,
	combout => \U_BCD7|dezena~0_combout\);

-- Location: LCCOMB_X26_Y26_N0
\U_BCD7|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~0_combout\ = (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ & (\U_BCD7|dezena~0_combout\ $ (VCC))) # (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\ & (\U_BCD7|dezena~0_combout\ & VCC))
-- \U_BCD7|Add1~1\ = CARRY((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ & \U_BCD7|dezena~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|dezena~0_combout\,
	datad => VCC,
	combout => \U_BCD7|Add1~0_combout\,
	cout => \U_BCD7|Add1~1\);

-- Location: LCCOMB_X26_Y26_N2
\U_BCD7|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~2_combout\ = (\U_BCD7|Add1~1\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\)))) # (!\U_BCD7|Add1~1\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\)) # (GND)))
-- \U_BCD7|Add1~3\ = CARRY((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\)) # (!\U_BCD7|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|quotient[1]~11_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~1\,
	combout => \U_BCD7|Add1~2_combout\,
	cout => \U_BCD7|Add1~3\);

-- Location: LCCOMB_X26_Y26_N4
\U_BCD7|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~4_combout\ = (\U_BCD7|Add1~3\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\)))) # (!\U_BCD7|Add1~3\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\ $ (VCC))))
-- \U_BCD7|Add1~5\ = CARRY((!\U_BCD7|Add1~3\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|quotient[2]~10_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~3\,
	combout => \U_BCD7|Add1~4_combout\,
	cout => \U_BCD7|Add1~5\);

-- Location: LCCOMB_X26_Y26_N6
\U_BCD7|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~6_combout\ = (\U_BCD7|Add1~5\ & (\U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~5\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (GND)))
-- \U_BCD7|Add1~7\ = CARRY((\U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (!\U_BCD7|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[3]~9_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~5\,
	combout => \U_BCD7|Add1~6_combout\,
	cout => \U_BCD7|Add1~7\);

-- Location: LCCOMB_X26_Y26_N8
\U_BCD7|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~8_combout\ = (\U_BCD7|Add1~7\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\)))) # (!\U_BCD7|Add1~7\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\ $ (VCC))))
-- \U_BCD7|Add1~9\ = CARRY((!\U_BCD7|Add1~7\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|quotient[4]~8_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~7\,
	combout => \U_BCD7|Add1~8_combout\,
	cout => \U_BCD7|Add1~9\);

-- Location: LCCOMB_X26_Y26_N10
\U_BCD7|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~10_combout\ = (\U_BCD7|Add1~9\ & (\U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~9\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (GND)))
-- \U_BCD7|Add1~11\ = CARRY((\U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (!\U_BCD7|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[5]~7_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~9\,
	combout => \U_BCD7|Add1~10_combout\,
	cout => \U_BCD7|Add1~11\);

-- Location: LCCOMB_X26_Y26_N12
\U_BCD7|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~12_combout\ = (\U_BCD7|Add1~11\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~11\ & (\U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (VCC))))
-- \U_BCD7|Add1~13\ = CARRY((!\U_BCD7|Add1~11\ & (\U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[6]~6_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~11\,
	combout => \U_BCD7|Add1~12_combout\,
	cout => \U_BCD7|Add1~13\);

-- Location: LCCOMB_X26_Y26_N14
\U_BCD7|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~14_combout\ = (\U_BCD7|Add1~13\ & (\U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~13\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (GND)))
-- \U_BCD7|Add1~15\ = CARRY((\U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (!\U_BCD7|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[7]~5_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~13\,
	combout => \U_BCD7|Add1~14_combout\,
	cout => \U_BCD7|Add1~15\);

-- Location: LCCOMB_X26_Y26_N16
\U_BCD7|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~16_combout\ = (\U_BCD7|Add1~15\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\)))) # (!\U_BCD7|Add1~15\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\ $ (VCC))))
-- \U_BCD7|Add1~17\ = CARRY((!\U_BCD7|Add1~15\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|quotient[8]~4_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~15\,
	combout => \U_BCD7|Add1~16_combout\,
	cout => \U_BCD7|Add1~17\);

-- Location: LCCOMB_X26_Y26_N18
\U_BCD7|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~18_combout\ = (\U_BCD7|Add1~17\ & (\U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~17\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (GND)))
-- \U_BCD7|Add1~19\ = CARRY((\U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (!\U_BCD7|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[9]~3_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~17\,
	combout => \U_BCD7|Add1~18_combout\,
	cout => \U_BCD7|Add1~19\);

-- Location: LCCOMB_X26_Y26_N20
\U_BCD7|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~20_combout\ = (\U_BCD7|Add1~19\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~19\ & (\U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (VCC))))
-- \U_BCD7|Add1~21\ = CARRY((!\U_BCD7|Add1~19\ & (\U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[10]~2_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~19\,
	combout => \U_BCD7|Add1~20_combout\,
	cout => \U_BCD7|Add1~21\);

-- Location: LCCOMB_X26_Y26_N22
\U_BCD7|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~22_combout\ = (\U_BCD7|Add1~21\ & (\U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~21\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (GND)))
-- \U_BCD7|Add1~23\ = CARRY((\U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~0_combout\)) # (!\U_BCD7|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[11]~1_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~21\,
	combout => \U_BCD7|Add1~22_combout\,
	cout => \U_BCD7|Add1~23\);

-- Location: LCCOMB_X26_Y26_N24
\U_BCD7|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~24_combout\ = (\U_BCD7|Add1~23\ & ((\U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\)))) # (!\U_BCD7|Add1~23\ & (\U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (VCC))))
-- \U_BCD7|Add1~25\ = CARRY((!\U_BCD7|Add1~23\ & (\U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|quotient[12]~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~23\,
	combout => \U_BCD7|Add1~24_combout\,
	cout => \U_BCD7|Add1~25\);

-- Location: LCCOMB_X26_Y26_N26
\U_BCD7|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~26_combout\ = (\U_BCD7|Add1~25\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ ((!\U_BCD7|Div1|auto_generated|divider|_~2_combout\)))) # (!\U_BCD7|Add1~25\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~2_combout\)) # (GND)))
-- \U_BCD7|Add1~27\ = CARRY((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (!\U_BCD7|Div1|auto_generated|divider|_~2_combout\)) # (!\U_BCD7|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~2_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~25\,
	combout => \U_BCD7|Add1~26_combout\,
	cout => \U_BCD7|Add1~27\);

-- Location: LCCOMB_X26_Y26_N28
\U_BCD7|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~28_combout\ = (\U_BCD7|Add1~27\ & ((\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~1_combout\)))) # (!\U_BCD7|Add1~27\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ 
-- (\U_BCD7|Div1|auto_generated|divider|_~1_combout\ $ (VCC))))
-- \U_BCD7|Add1~29\ = CARRY((!\U_BCD7|Add1~27\ & (\U_BCD7|Div1|auto_generated|divider|_~0_combout\ $ (\U_BCD7|Div1|auto_generated|divider|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div1|auto_generated|divider|_~0_combout\,
	datab => \U_BCD7|Div1|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \U_BCD7|Add1~27\,
	combout => \U_BCD7|Add1~28_combout\,
	cout => \U_BCD7|Add1~29\);

-- Location: LCCOMB_X26_Y26_N30
\U_BCD7|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add1~30_combout\ = \U_BCD7|Add1~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Add1~29\,
	combout => \U_BCD7|Add1~30_combout\);

-- Location: LCCOMB_X30_Y27_N16
\U_BCD7|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~0_combout\ = (\U_BCD7|Add1~4_combout\ & (\U_BCD7|Add1~0_combout\ $ (VCC))) # (!\U_BCD7|Add1~4_combout\ & (\U_BCD7|Add1~0_combout\ & VCC))
-- \U_BCD7|Add2~1\ = CARRY((\U_BCD7|Add1~4_combout\ & \U_BCD7|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~4_combout\,
	datab => \U_BCD7|Add1~0_combout\,
	datad => VCC,
	combout => \U_BCD7|Add2~0_combout\,
	cout => \U_BCD7|Add2~1\);

-- Location: LCCOMB_X30_Y27_N18
\U_BCD7|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~2_combout\ = (\U_BCD7|Add1~2_combout\ & ((\U_BCD7|Add1~6_combout\ & (\U_BCD7|Add2~1\ & VCC)) # (!\U_BCD7|Add1~6_combout\ & (!\U_BCD7|Add2~1\)))) # (!\U_BCD7|Add1~2_combout\ & ((\U_BCD7|Add1~6_combout\ & (!\U_BCD7|Add2~1\)) # 
-- (!\U_BCD7|Add1~6_combout\ & ((\U_BCD7|Add2~1\) # (GND)))))
-- \U_BCD7|Add2~3\ = CARRY((\U_BCD7|Add1~2_combout\ & (!\U_BCD7|Add1~6_combout\ & !\U_BCD7|Add2~1\)) # (!\U_BCD7|Add1~2_combout\ & ((!\U_BCD7|Add2~1\) # (!\U_BCD7|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~6_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~1\,
	combout => \U_BCD7|Add2~2_combout\,
	cout => \U_BCD7|Add2~3\);

-- Location: LCCOMB_X30_Y27_N20
\U_BCD7|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~4_combout\ = ((\U_BCD7|Add1~4_combout\ $ (\U_BCD7|Add1~8_combout\ $ (!\U_BCD7|Add2~3\)))) # (GND)
-- \U_BCD7|Add2~5\ = CARRY((\U_BCD7|Add1~4_combout\ & ((\U_BCD7|Add1~8_combout\) # (!\U_BCD7|Add2~3\))) # (!\U_BCD7|Add1~4_combout\ & (\U_BCD7|Add1~8_combout\ & !\U_BCD7|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~4_combout\,
	datab => \U_BCD7|Add1~8_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~3\,
	combout => \U_BCD7|Add2~4_combout\,
	cout => \U_BCD7|Add2~5\);

-- Location: LCCOMB_X30_Y27_N22
\U_BCD7|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~6_combout\ = (\U_BCD7|Add1~10_combout\ & ((\U_BCD7|Add1~6_combout\ & (\U_BCD7|Add2~5\ & VCC)) # (!\U_BCD7|Add1~6_combout\ & (!\U_BCD7|Add2~5\)))) # (!\U_BCD7|Add1~10_combout\ & ((\U_BCD7|Add1~6_combout\ & (!\U_BCD7|Add2~5\)) # 
-- (!\U_BCD7|Add1~6_combout\ & ((\U_BCD7|Add2~5\) # (GND)))))
-- \U_BCD7|Add2~7\ = CARRY((\U_BCD7|Add1~10_combout\ & (!\U_BCD7|Add1~6_combout\ & !\U_BCD7|Add2~5\)) # (!\U_BCD7|Add1~10_combout\ & ((!\U_BCD7|Add2~5\) # (!\U_BCD7|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~10_combout\,
	datab => \U_BCD7|Add1~6_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~5\,
	combout => \U_BCD7|Add2~6_combout\,
	cout => \U_BCD7|Add2~7\);

-- Location: LCCOMB_X30_Y27_N24
\U_BCD7|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~8_combout\ = ((\U_BCD7|Add1~12_combout\ $ (\U_BCD7|Add1~8_combout\ $ (!\U_BCD7|Add2~7\)))) # (GND)
-- \U_BCD7|Add2~9\ = CARRY((\U_BCD7|Add1~12_combout\ & ((\U_BCD7|Add1~8_combout\) # (!\U_BCD7|Add2~7\))) # (!\U_BCD7|Add1~12_combout\ & (\U_BCD7|Add1~8_combout\ & !\U_BCD7|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~12_combout\,
	datab => \U_BCD7|Add1~8_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~7\,
	combout => \U_BCD7|Add2~8_combout\,
	cout => \U_BCD7|Add2~9\);

-- Location: LCCOMB_X30_Y27_N26
\U_BCD7|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~10_combout\ = (\U_BCD7|Add1~10_combout\ & ((\U_BCD7|Add1~14_combout\ & (\U_BCD7|Add2~9\ & VCC)) # (!\U_BCD7|Add1~14_combout\ & (!\U_BCD7|Add2~9\)))) # (!\U_BCD7|Add1~10_combout\ & ((\U_BCD7|Add1~14_combout\ & (!\U_BCD7|Add2~9\)) # 
-- (!\U_BCD7|Add1~14_combout\ & ((\U_BCD7|Add2~9\) # (GND)))))
-- \U_BCD7|Add2~11\ = CARRY((\U_BCD7|Add1~10_combout\ & (!\U_BCD7|Add1~14_combout\ & !\U_BCD7|Add2~9\)) # (!\U_BCD7|Add1~10_combout\ & ((!\U_BCD7|Add2~9\) # (!\U_BCD7|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~10_combout\,
	datab => \U_BCD7|Add1~14_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~9\,
	combout => \U_BCD7|Add2~10_combout\,
	cout => \U_BCD7|Add2~11\);

-- Location: LCCOMB_X30_Y27_N28
\U_BCD7|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~12_combout\ = ((\U_BCD7|Add1~12_combout\ $ (\U_BCD7|Add1~16_combout\ $ (!\U_BCD7|Add2~11\)))) # (GND)
-- \U_BCD7|Add2~13\ = CARRY((\U_BCD7|Add1~12_combout\ & ((\U_BCD7|Add1~16_combout\) # (!\U_BCD7|Add2~11\))) # (!\U_BCD7|Add1~12_combout\ & (\U_BCD7|Add1~16_combout\ & !\U_BCD7|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~12_combout\,
	datab => \U_BCD7|Add1~16_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~11\,
	combout => \U_BCD7|Add2~12_combout\,
	cout => \U_BCD7|Add2~13\);

-- Location: LCCOMB_X30_Y27_N30
\U_BCD7|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~14_combout\ = (\U_BCD7|Add1~18_combout\ & ((\U_BCD7|Add1~14_combout\ & (\U_BCD7|Add2~13\ & VCC)) # (!\U_BCD7|Add1~14_combout\ & (!\U_BCD7|Add2~13\)))) # (!\U_BCD7|Add1~18_combout\ & ((\U_BCD7|Add1~14_combout\ & (!\U_BCD7|Add2~13\)) # 
-- (!\U_BCD7|Add1~14_combout\ & ((\U_BCD7|Add2~13\) # (GND)))))
-- \U_BCD7|Add2~15\ = CARRY((\U_BCD7|Add1~18_combout\ & (!\U_BCD7|Add1~14_combout\ & !\U_BCD7|Add2~13\)) # (!\U_BCD7|Add1~18_combout\ & ((!\U_BCD7|Add2~13\) # (!\U_BCD7|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~18_combout\,
	datab => \U_BCD7|Add1~14_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~13\,
	combout => \U_BCD7|Add2~14_combout\,
	cout => \U_BCD7|Add2~15\);

-- Location: LCCOMB_X30_Y26_N0
\U_BCD7|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~16_combout\ = ((\U_BCD7|Add1~20_combout\ $ (\U_BCD7|Add1~16_combout\ $ (!\U_BCD7|Add2~15\)))) # (GND)
-- \U_BCD7|Add2~17\ = CARRY((\U_BCD7|Add1~20_combout\ & ((\U_BCD7|Add1~16_combout\) # (!\U_BCD7|Add2~15\))) # (!\U_BCD7|Add1~20_combout\ & (\U_BCD7|Add1~16_combout\ & !\U_BCD7|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~20_combout\,
	datab => \U_BCD7|Add1~16_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~15\,
	combout => \U_BCD7|Add2~16_combout\,
	cout => \U_BCD7|Add2~17\);

-- Location: LCCOMB_X30_Y26_N2
\U_BCD7|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~18_combout\ = (\U_BCD7|Add1~22_combout\ & ((\U_BCD7|Add1~18_combout\ & (\U_BCD7|Add2~17\ & VCC)) # (!\U_BCD7|Add1~18_combout\ & (!\U_BCD7|Add2~17\)))) # (!\U_BCD7|Add1~22_combout\ & ((\U_BCD7|Add1~18_combout\ & (!\U_BCD7|Add2~17\)) # 
-- (!\U_BCD7|Add1~18_combout\ & ((\U_BCD7|Add2~17\) # (GND)))))
-- \U_BCD7|Add2~19\ = CARRY((\U_BCD7|Add1~22_combout\ & (!\U_BCD7|Add1~18_combout\ & !\U_BCD7|Add2~17\)) # (!\U_BCD7|Add1~22_combout\ & ((!\U_BCD7|Add2~17\) # (!\U_BCD7|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~22_combout\,
	datab => \U_BCD7|Add1~18_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~17\,
	combout => \U_BCD7|Add2~18_combout\,
	cout => \U_BCD7|Add2~19\);

-- Location: LCCOMB_X30_Y26_N4
\U_BCD7|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~20_combout\ = ((\U_BCD7|Add1~24_combout\ $ (\U_BCD7|Add1~20_combout\ $ (!\U_BCD7|Add2~19\)))) # (GND)
-- \U_BCD7|Add2~21\ = CARRY((\U_BCD7|Add1~24_combout\ & ((\U_BCD7|Add1~20_combout\) # (!\U_BCD7|Add2~19\))) # (!\U_BCD7|Add1~24_combout\ & (\U_BCD7|Add1~20_combout\ & !\U_BCD7|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~24_combout\,
	datab => \U_BCD7|Add1~20_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~19\,
	combout => \U_BCD7|Add2~20_combout\,
	cout => \U_BCD7|Add2~21\);

-- Location: LCCOMB_X30_Y26_N6
\U_BCD7|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~22_combout\ = (\U_BCD7|Add1~22_combout\ & ((\U_BCD7|Add1~26_combout\ & (\U_BCD7|Add2~21\ & VCC)) # (!\U_BCD7|Add1~26_combout\ & (!\U_BCD7|Add2~21\)))) # (!\U_BCD7|Add1~22_combout\ & ((\U_BCD7|Add1~26_combout\ & (!\U_BCD7|Add2~21\)) # 
-- (!\U_BCD7|Add1~26_combout\ & ((\U_BCD7|Add2~21\) # (GND)))))
-- \U_BCD7|Add2~23\ = CARRY((\U_BCD7|Add1~22_combout\ & (!\U_BCD7|Add1~26_combout\ & !\U_BCD7|Add2~21\)) # (!\U_BCD7|Add1~22_combout\ & ((!\U_BCD7|Add2~21\) # (!\U_BCD7|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~22_combout\,
	datab => \U_BCD7|Add1~26_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~21\,
	combout => \U_BCD7|Add2~22_combout\,
	cout => \U_BCD7|Add2~23\);

-- Location: LCCOMB_X30_Y26_N8
\U_BCD7|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~24_combout\ = ((\U_BCD7|Add1~24_combout\ $ (\U_BCD7|Add1~28_combout\ $ (!\U_BCD7|Add2~23\)))) # (GND)
-- \U_BCD7|Add2~25\ = CARRY((\U_BCD7|Add1~24_combout\ & ((\U_BCD7|Add1~28_combout\) # (!\U_BCD7|Add2~23\))) # (!\U_BCD7|Add1~24_combout\ & (\U_BCD7|Add1~28_combout\ & !\U_BCD7|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~24_combout\,
	datab => \U_BCD7|Add1~28_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~23\,
	combout => \U_BCD7|Add2~24_combout\,
	cout => \U_BCD7|Add2~25\);

-- Location: LCCOMB_X30_Y26_N10
\U_BCD7|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~26_combout\ = (\U_BCD7|Add1~26_combout\ & ((\U_BCD7|Add1~30_combout\ & (\U_BCD7|Add2~25\ & VCC)) # (!\U_BCD7|Add1~30_combout\ & (!\U_BCD7|Add2~25\)))) # (!\U_BCD7|Add1~26_combout\ & ((\U_BCD7|Add1~30_combout\ & (!\U_BCD7|Add2~25\)) # 
-- (!\U_BCD7|Add1~30_combout\ & ((\U_BCD7|Add2~25\) # (GND)))))
-- \U_BCD7|Add2~27\ = CARRY((\U_BCD7|Add1~26_combout\ & (!\U_BCD7|Add1~30_combout\ & !\U_BCD7|Add2~25\)) # (!\U_BCD7|Add1~26_combout\ & ((!\U_BCD7|Add2~25\) # (!\U_BCD7|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~26_combout\,
	datab => \U_BCD7|Add1~30_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~25\,
	combout => \U_BCD7|Add2~26_combout\,
	cout => \U_BCD7|Add2~27\);

-- Location: LCCOMB_X30_Y26_N12
\U_BCD7|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~28_combout\ = (\U_BCD7|Add1~28_combout\ & (\U_BCD7|Add2~27\ $ (GND))) # (!\U_BCD7|Add1~28_combout\ & (!\U_BCD7|Add2~27\ & VCC))
-- \U_BCD7|Add2~29\ = CARRY((\U_BCD7|Add1~28_combout\ & !\U_BCD7|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add1~28_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~27\,
	combout => \U_BCD7|Add2~28_combout\,
	cout => \U_BCD7|Add2~29\);

-- Location: LCCOMB_X30_Y26_N14
\U_BCD7|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~30_combout\ = (\U_BCD7|Add1~30_combout\ & (!\U_BCD7|Add2~29\)) # (!\U_BCD7|Add1~30_combout\ & ((\U_BCD7|Add2~29\) # (GND)))
-- \U_BCD7|Add2~31\ = CARRY((!\U_BCD7|Add2~29\) # (!\U_BCD7|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add1~30_combout\,
	datad => VCC,
	cin => \U_BCD7|Add2~29\,
	combout => \U_BCD7|Add2~30_combout\,
	cout => \U_BCD7|Add2~31\);

-- Location: LCCOMB_X30_Y26_N16
\U_BCD7|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add2~32_combout\ = !\U_BCD7|Add2~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCD7|Add2~31\,
	combout => \U_BCD7|Add2~32_combout\);

-- Location: LCCOMB_X29_Y27_N10
\U_BCD7|unidade[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[1]~0_combout\ = (\U_BCD7|Add1~0_combout\ & (\U_MUX_3x1_3SEL|o_S[1]~15_combout\ $ (VCC))) # (!\U_BCD7|Add1~0_combout\ & ((\U_MUX_3x1_3SEL|o_S[1]~15_combout\) # (GND)))
-- \U_BCD7|unidade[1]~1\ = CARRY((\U_MUX_3x1_3SEL|o_S[1]~15_combout\) # (!\U_BCD7|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~0_combout\,
	datab => \U_MUX_3x1_3SEL|o_S[1]~15_combout\,
	datad => VCC,
	combout => \U_BCD7|unidade[1]~0_combout\,
	cout => \U_BCD7|unidade[1]~1\);

-- Location: LCCOMB_X29_Y27_N12
\U_BCD7|unidade[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[2]~2_combout\ = (\U_BCD7|aux[2]~0_combout\ & ((\U_BCD7|Add1~2_combout\ & (!\U_BCD7|unidade[1]~1\)) # (!\U_BCD7|Add1~2_combout\ & (\U_BCD7|unidade[1]~1\ & VCC)))) # (!\U_BCD7|aux[2]~0_combout\ & ((\U_BCD7|Add1~2_combout\ & 
-- ((\U_BCD7|unidade[1]~1\) # (GND))) # (!\U_BCD7|Add1~2_combout\ & (!\U_BCD7|unidade[1]~1\))))
-- \U_BCD7|unidade[2]~3\ = CARRY((\U_BCD7|aux[2]~0_combout\ & (\U_BCD7|Add1~2_combout\ & !\U_BCD7|unidade[1]~1\)) # (!\U_BCD7|aux[2]~0_combout\ & ((\U_BCD7|Add1~2_combout\) # (!\U_BCD7|unidade[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[2]~0_combout\,
	datab => \U_BCD7|Add1~2_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[1]~1\,
	combout => \U_BCD7|unidade[2]~2_combout\,
	cout => \U_BCD7|unidade[2]~3\);

-- Location: LCCOMB_X29_Y27_N14
\U_BCD7|unidade[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[3]~4_combout\ = ((\U_BCD7|Add2~0_combout\ $ (\U_BCD7|aux[3]~2_combout\ $ (\U_BCD7|unidade[2]~3\)))) # (GND)
-- \U_BCD7|unidade[3]~5\ = CARRY((\U_BCD7|Add2~0_combout\ & (\U_BCD7|aux[3]~2_combout\ & !\U_BCD7|unidade[2]~3\)) # (!\U_BCD7|Add2~0_combout\ & ((\U_BCD7|aux[3]~2_combout\) # (!\U_BCD7|unidade[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~0_combout\,
	datab => \U_BCD7|aux[3]~2_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[2]~3\,
	combout => \U_BCD7|unidade[3]~4_combout\,
	cout => \U_BCD7|unidade[3]~5\);

-- Location: LCCOMB_X29_Y27_N16
\U_BCD7|unidade[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[4]~6_combout\ = (\U_BCD7|aux[4]~4_combout\ & ((\U_BCD7|Add2~2_combout\ & (!\U_BCD7|unidade[3]~5\)) # (!\U_BCD7|Add2~2_combout\ & (\U_BCD7|unidade[3]~5\ & VCC)))) # (!\U_BCD7|aux[4]~4_combout\ & ((\U_BCD7|Add2~2_combout\ & 
-- ((\U_BCD7|unidade[3]~5\) # (GND))) # (!\U_BCD7|Add2~2_combout\ & (!\U_BCD7|unidade[3]~5\))))
-- \U_BCD7|unidade[4]~7\ = CARRY((\U_BCD7|aux[4]~4_combout\ & (\U_BCD7|Add2~2_combout\ & !\U_BCD7|unidade[3]~5\)) # (!\U_BCD7|aux[4]~4_combout\ & ((\U_BCD7|Add2~2_combout\) # (!\U_BCD7|unidade[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[4]~4_combout\,
	datab => \U_BCD7|Add2~2_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[3]~5\,
	combout => \U_BCD7|unidade[4]~6_combout\,
	cout => \U_BCD7|unidade[4]~7\);

-- Location: LCCOMB_X29_Y27_N18
\U_BCD7|unidade[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[5]~8_combout\ = ((\U_BCD7|Add2~4_combout\ $ (\U_BCD7|aux[5]~6_combout\ $ (\U_BCD7|unidade[4]~7\)))) # (GND)
-- \U_BCD7|unidade[5]~9\ = CARRY((\U_BCD7|Add2~4_combout\ & (\U_BCD7|aux[5]~6_combout\ & !\U_BCD7|unidade[4]~7\)) # (!\U_BCD7|Add2~4_combout\ & ((\U_BCD7|aux[5]~6_combout\) # (!\U_BCD7|unidade[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~4_combout\,
	datab => \U_BCD7|aux[5]~6_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[4]~7\,
	combout => \U_BCD7|unidade[5]~8_combout\,
	cout => \U_BCD7|unidade[5]~9\);

-- Location: LCCOMB_X29_Y27_N20
\U_BCD7|unidade[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[6]~10_combout\ = (\U_BCD7|aux[6]~8_combout\ & ((\U_BCD7|Add2~6_combout\ & (!\U_BCD7|unidade[5]~9\)) # (!\U_BCD7|Add2~6_combout\ & (\U_BCD7|unidade[5]~9\ & VCC)))) # (!\U_BCD7|aux[6]~8_combout\ & ((\U_BCD7|Add2~6_combout\ & 
-- ((\U_BCD7|unidade[5]~9\) # (GND))) # (!\U_BCD7|Add2~6_combout\ & (!\U_BCD7|unidade[5]~9\))))
-- \U_BCD7|unidade[6]~11\ = CARRY((\U_BCD7|aux[6]~8_combout\ & (\U_BCD7|Add2~6_combout\ & !\U_BCD7|unidade[5]~9\)) # (!\U_BCD7|aux[6]~8_combout\ & ((\U_BCD7|Add2~6_combout\) # (!\U_BCD7|unidade[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[6]~8_combout\,
	datab => \U_BCD7|Add2~6_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[5]~9\,
	combout => \U_BCD7|unidade[6]~10_combout\,
	cout => \U_BCD7|unidade[6]~11\);

-- Location: LCCOMB_X29_Y27_N22
\U_BCD7|unidade[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[7]~12_combout\ = ((\U_BCD7|aux[7]~10_combout\ $ (\U_BCD7|Add2~8_combout\ $ (\U_BCD7|unidade[6]~11\)))) # (GND)
-- \U_BCD7|unidade[7]~13\ = CARRY((\U_BCD7|aux[7]~10_combout\ & ((!\U_BCD7|unidade[6]~11\) # (!\U_BCD7|Add2~8_combout\))) # (!\U_BCD7|aux[7]~10_combout\ & (!\U_BCD7|Add2~8_combout\ & !\U_BCD7|unidade[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[7]~10_combout\,
	datab => \U_BCD7|Add2~8_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[6]~11\,
	combout => \U_BCD7|unidade[7]~12_combout\,
	cout => \U_BCD7|unidade[7]~13\);

-- Location: LCCOMB_X29_Y27_N24
\U_BCD7|unidade[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[8]~14_combout\ = (\U_BCD7|aux[8]~12_combout\ & ((\U_BCD7|Add2~10_combout\ & (!\U_BCD7|unidade[7]~13\)) # (!\U_BCD7|Add2~10_combout\ & (\U_BCD7|unidade[7]~13\ & VCC)))) # (!\U_BCD7|aux[8]~12_combout\ & ((\U_BCD7|Add2~10_combout\ & 
-- ((\U_BCD7|unidade[7]~13\) # (GND))) # (!\U_BCD7|Add2~10_combout\ & (!\U_BCD7|unidade[7]~13\))))
-- \U_BCD7|unidade[8]~15\ = CARRY((\U_BCD7|aux[8]~12_combout\ & (\U_BCD7|Add2~10_combout\ & !\U_BCD7|unidade[7]~13\)) # (!\U_BCD7|aux[8]~12_combout\ & ((\U_BCD7|Add2~10_combout\) # (!\U_BCD7|unidade[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[8]~12_combout\,
	datab => \U_BCD7|Add2~10_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[7]~13\,
	combout => \U_BCD7|unidade[8]~14_combout\,
	cout => \U_BCD7|unidade[8]~15\);

-- Location: LCCOMB_X29_Y27_N26
\U_BCD7|unidade[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[9]~16_combout\ = ((\U_BCD7|aux[9]~14_combout\ $ (\U_BCD7|Add2~12_combout\ $ (\U_BCD7|unidade[8]~15\)))) # (GND)
-- \U_BCD7|unidade[9]~17\ = CARRY((\U_BCD7|aux[9]~14_combout\ & ((!\U_BCD7|unidade[8]~15\) # (!\U_BCD7|Add2~12_combout\))) # (!\U_BCD7|aux[9]~14_combout\ & (!\U_BCD7|Add2~12_combout\ & !\U_BCD7|unidade[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[9]~14_combout\,
	datab => \U_BCD7|Add2~12_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[8]~15\,
	combout => \U_BCD7|unidade[9]~16_combout\,
	cout => \U_BCD7|unidade[9]~17\);

-- Location: LCCOMB_X29_Y27_N28
\U_BCD7|unidade[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[10]~18_combout\ = (\U_BCD7|Add2~14_combout\ & ((\U_BCD7|aux[10]~16_combout\ & (!\U_BCD7|unidade[9]~17\)) # (!\U_BCD7|aux[10]~16_combout\ & ((\U_BCD7|unidade[9]~17\) # (GND))))) # (!\U_BCD7|Add2~14_combout\ & ((\U_BCD7|aux[10]~16_combout\ & 
-- (\U_BCD7|unidade[9]~17\ & VCC)) # (!\U_BCD7|aux[10]~16_combout\ & (!\U_BCD7|unidade[9]~17\))))
-- \U_BCD7|unidade[10]~19\ = CARRY((\U_BCD7|Add2~14_combout\ & ((!\U_BCD7|unidade[9]~17\) # (!\U_BCD7|aux[10]~16_combout\))) # (!\U_BCD7|Add2~14_combout\ & (!\U_BCD7|aux[10]~16_combout\ & !\U_BCD7|unidade[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~14_combout\,
	datab => \U_BCD7|aux[10]~16_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[9]~17\,
	combout => \U_BCD7|unidade[10]~18_combout\,
	cout => \U_BCD7|unidade[10]~19\);

-- Location: LCCOMB_X29_Y27_N30
\U_BCD7|unidade[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[11]~20_combout\ = ((\U_BCD7|Add2~16_combout\ $ (\U_BCD7|aux[11]~18_combout\ $ (\U_BCD7|unidade[10]~19\)))) # (GND)
-- \U_BCD7|unidade[11]~21\ = CARRY((\U_BCD7|Add2~16_combout\ & (\U_BCD7|aux[11]~18_combout\ & !\U_BCD7|unidade[10]~19\)) # (!\U_BCD7|Add2~16_combout\ & ((\U_BCD7|aux[11]~18_combout\) # (!\U_BCD7|unidade[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~16_combout\,
	datab => \U_BCD7|aux[11]~18_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[10]~19\,
	combout => \U_BCD7|unidade[11]~20_combout\,
	cout => \U_BCD7|unidade[11]~21\);

-- Location: LCCOMB_X29_Y26_N0
\U_BCD7|unidade[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[12]~22_combout\ = (\U_BCD7|Add2~18_combout\ & ((\U_BCD7|aux[12]~20_combout\ & (!\U_BCD7|unidade[11]~21\)) # (!\U_BCD7|aux[12]~20_combout\ & ((\U_BCD7|unidade[11]~21\) # (GND))))) # (!\U_BCD7|Add2~18_combout\ & ((\U_BCD7|aux[12]~20_combout\ 
-- & (\U_BCD7|unidade[11]~21\ & VCC)) # (!\U_BCD7|aux[12]~20_combout\ & (!\U_BCD7|unidade[11]~21\))))
-- \U_BCD7|unidade[12]~23\ = CARRY((\U_BCD7|Add2~18_combout\ & ((!\U_BCD7|unidade[11]~21\) # (!\U_BCD7|aux[12]~20_combout\))) # (!\U_BCD7|Add2~18_combout\ & (!\U_BCD7|aux[12]~20_combout\ & !\U_BCD7|unidade[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~18_combout\,
	datab => \U_BCD7|aux[12]~20_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[11]~21\,
	combout => \U_BCD7|unidade[12]~22_combout\,
	cout => \U_BCD7|unidade[12]~23\);

-- Location: LCCOMB_X29_Y26_N2
\U_BCD7|unidade[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[13]~24_combout\ = ((\U_BCD7|Add2~20_combout\ $ (\U_BCD7|aux[13]~22_combout\ $ (\U_BCD7|unidade[12]~23\)))) # (GND)
-- \U_BCD7|unidade[13]~25\ = CARRY((\U_BCD7|Add2~20_combout\ & (\U_BCD7|aux[13]~22_combout\ & !\U_BCD7|unidade[12]~23\)) # (!\U_BCD7|Add2~20_combout\ & ((\U_BCD7|aux[13]~22_combout\) # (!\U_BCD7|unidade[12]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add2~20_combout\,
	datab => \U_BCD7|aux[13]~22_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[12]~23\,
	combout => \U_BCD7|unidade[13]~24_combout\,
	cout => \U_BCD7|unidade[13]~25\);

-- Location: LCCOMB_X29_Y26_N4
\U_BCD7|unidade[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[14]~26_combout\ = (\U_BCD7|aux[14]~24_combout\ & ((\U_BCD7|Add2~22_combout\ & (!\U_BCD7|unidade[13]~25\)) # (!\U_BCD7|Add2~22_combout\ & (\U_BCD7|unidade[13]~25\ & VCC)))) # (!\U_BCD7|aux[14]~24_combout\ & ((\U_BCD7|Add2~22_combout\ & 
-- ((\U_BCD7|unidade[13]~25\) # (GND))) # (!\U_BCD7|Add2~22_combout\ & (!\U_BCD7|unidade[13]~25\))))
-- \U_BCD7|unidade[14]~27\ = CARRY((\U_BCD7|aux[14]~24_combout\ & (\U_BCD7|Add2~22_combout\ & !\U_BCD7|unidade[13]~25\)) # (!\U_BCD7|aux[14]~24_combout\ & ((\U_BCD7|Add2~22_combout\) # (!\U_BCD7|unidade[13]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|aux[14]~24_combout\,
	datab => \U_BCD7|Add2~22_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[13]~25\,
	combout => \U_BCD7|unidade[14]~26_combout\,
	cout => \U_BCD7|unidade[14]~27\);

-- Location: LCCOMB_X29_Y26_N6
\U_BCD7|unidade[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[15]~28_combout\ = ((\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Add2~24_combout\ $ (!\U_BCD7|unidade[14]~27\)))) # (GND)
-- \U_BCD7|unidade[15]~29\ = CARRY((\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Add2~24_combout\ & !\U_BCD7|unidade[14]~27\)) # (!\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|unidade[14]~27\) # (!\U_BCD7|Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Add2~24_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[14]~27\,
	combout => \U_BCD7|unidade[15]~28_combout\,
	cout => \U_BCD7|unidade[15]~29\);

-- Location: LCCOMB_X29_Y26_N8
\U_BCD7|unidade[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[16]~30_combout\ = (\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~26_combout\ & ((\U_BCD7|unidade[15]~29\) # (GND))) # (!\U_BCD7|Add2~26_combout\ & (!\U_BCD7|unidade[15]~29\)))) # (!\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~26_combout\ & 
-- (!\U_BCD7|unidade[15]~29\)) # (!\U_BCD7|Add2~26_combout\ & (\U_BCD7|unidade[15]~29\ & VCC))))
-- \U_BCD7|unidade[16]~31\ = CARRY((\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~26_combout\) # (!\U_BCD7|unidade[15]~29\))) # (!\U_BCD7|Add0~0_combout\ & (\U_BCD7|Add2~26_combout\ & !\U_BCD7|unidade[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Add2~26_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[15]~29\,
	combout => \U_BCD7|unidade[16]~30_combout\,
	cout => \U_BCD7|unidade[16]~31\);

-- Location: LCCOMB_X29_Y26_N10
\U_BCD7|unidade[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[17]~32_combout\ = ((\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Add2~28_combout\ $ (!\U_BCD7|unidade[16]~31\)))) # (GND)
-- \U_BCD7|unidade[17]~33\ = CARRY((\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Add2~28_combout\ & !\U_BCD7|unidade[16]~31\)) # (!\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|unidade[16]~31\) # (!\U_BCD7|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Add2~28_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[16]~31\,
	combout => \U_BCD7|unidade[17]~32_combout\,
	cout => \U_BCD7|unidade[17]~33\);

-- Location: LCCOMB_X29_Y26_N12
\U_BCD7|unidade[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[18]~34_combout\ = (\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~30_combout\ & ((\U_BCD7|unidade[17]~33\) # (GND))) # (!\U_BCD7|Add2~30_combout\ & (!\U_BCD7|unidade[17]~33\)))) # (!\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~30_combout\ & 
-- (!\U_BCD7|unidade[17]~33\)) # (!\U_BCD7|Add2~30_combout\ & (\U_BCD7|unidade[17]~33\ & VCC))))
-- \U_BCD7|unidade[18]~35\ = CARRY((\U_BCD7|Add0~0_combout\ & ((\U_BCD7|Add2~30_combout\) # (!\U_BCD7|unidade[17]~33\))) # (!\U_BCD7|Add0~0_combout\ & (\U_BCD7|Add2~30_combout\ & !\U_BCD7|unidade[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Add2~30_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[17]~33\,
	combout => \U_BCD7|unidade[18]~34_combout\,
	cout => \U_BCD7|unidade[18]~35\);

-- Location: LCCOMB_X29_Y26_N14
\U_BCD7|unidade[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[19]~36_combout\ = ((\U_BCD7|Add0~0_combout\ $ (\U_BCD7|Add2~32_combout\ $ (!\U_BCD7|unidade[18]~35\)))) # (GND)
-- \U_BCD7|unidade[19]~37\ = CARRY((\U_BCD7|Add0~0_combout\ & (!\U_BCD7|Add2~32_combout\ & !\U_BCD7|unidade[18]~35\)) # (!\U_BCD7|Add0~0_combout\ & ((!\U_BCD7|unidade[18]~35\) # (!\U_BCD7|Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add0~0_combout\,
	datab => \U_BCD7|Add2~32_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[18]~35\,
	combout => \U_BCD7|unidade[19]~36_combout\,
	cout => \U_BCD7|unidade[19]~37\);

-- Location: LCCOMB_X29_Y26_N16
\U_BCD7|unidade[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[20]~38_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|unidade[19]~37\)) # (!\U_BCD7|Add0~0_combout\ & (\U_BCD7|unidade[19]~37\ & VCC))
-- \U_BCD7|unidade[20]~39\ = CARRY((\U_BCD7|Add0~0_combout\ & !\U_BCD7|unidade[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[19]~37\,
	combout => \U_BCD7|unidade[20]~38_combout\,
	cout => \U_BCD7|unidade[20]~39\);

-- Location: LCCOMB_X29_Y26_N18
\U_BCD7|unidade[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[21]~40_combout\ = (\U_BCD7|Add0~0_combout\ & (\U_BCD7|unidade[20]~39\ $ (GND))) # (!\U_BCD7|Add0~0_combout\ & ((GND) # (!\U_BCD7|unidade[20]~39\)))
-- \U_BCD7|unidade[21]~41\ = CARRY((!\U_BCD7|unidade[20]~39\) # (!\U_BCD7|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[20]~39\,
	combout => \U_BCD7|unidade[21]~40_combout\,
	cout => \U_BCD7|unidade[21]~41\);

-- Location: LCCOMB_X29_Y26_N20
\U_BCD7|unidade[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|unidade[22]~42_combout\ = (\U_BCD7|Add0~0_combout\ & (!\U_BCD7|unidade[21]~41\)) # (!\U_BCD7|Add0~0_combout\ & (\U_BCD7|unidade[21]~41\ & VCC))
-- \U_BCD7|unidade[22]~43\ = CARRY((\U_BCD7|Add0~0_combout\ & !\U_BCD7|unidade[21]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	datad => VCC,
	cin => \U_BCD7|unidade[21]~41\,
	combout => \U_BCD7|unidade[22]~42_combout\,
	cout => \U_BCD7|unidade[22]~43\);

-- Location: LCCOMB_X29_Y26_N22
\U_BCD7|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Add3~0_combout\ = \U_BCD7|Add0~0_combout\ $ (!\U_BCD7|unidade[22]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Add0~0_combout\,
	cin => \U_BCD7|unidade[22]~43\,
	combout => \U_BCD7|Add3~0_combout\);

-- Location: LCCOMB_X29_Y26_N30
\U_BCD7|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~0_combout\ = (!\U_BCD7|unidade[22]~42_combout\ & (!\U_BCD7|unidade[21]~40_combout\ & (!\U_BCD7|Add3~0_combout\ & !\U_BCD7|unidade[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[22]~42_combout\,
	datab => \U_BCD7|unidade[21]~40_combout\,
	datac => \U_BCD7|Add3~0_combout\,
	datad => \U_BCD7|unidade[20]~38_combout\,
	combout => \U_BCD7|Equal10~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\U_BCD7|Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~1_combout\ = (!\U_BCD7|unidade[6]~10_combout\ & (!\U_BCD7|unidade[5]~8_combout\ & (!\U_BCD7|unidade[7]~12_combout\ & !\U_BCD7|unidade[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[6]~10_combout\,
	datab => \U_BCD7|unidade[5]~8_combout\,
	datac => \U_BCD7|unidade[7]~12_combout\,
	datad => \U_BCD7|unidade[4]~6_combout\,
	combout => \U_BCD7|Equal10~1_combout\);

-- Location: LCCOMB_X29_Y27_N2
\U_BCD7|Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~2_combout\ = (!\U_BCD7|unidade[11]~20_combout\ & (!\U_BCD7|unidade[10]~18_combout\ & (!\U_BCD7|unidade[9]~16_combout\ & !\U_BCD7|unidade[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[11]~20_combout\,
	datab => \U_BCD7|unidade[10]~18_combout\,
	datac => \U_BCD7|unidade[9]~16_combout\,
	datad => \U_BCD7|unidade[8]~14_combout\,
	combout => \U_BCD7|Equal10~2_combout\);

-- Location: LCCOMB_X29_Y26_N26
\U_BCD7|Equal10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~4_combout\ = (!\U_BCD7|unidade[18]~34_combout\ & (!\U_BCD7|unidade[19]~36_combout\ & (!\U_BCD7|unidade[16]~30_combout\ & !\U_BCD7|unidade[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[18]~34_combout\,
	datab => \U_BCD7|unidade[19]~36_combout\,
	datac => \U_BCD7|unidade[16]~30_combout\,
	datad => \U_BCD7|unidade[17]~32_combout\,
	combout => \U_BCD7|Equal10~4_combout\);

-- Location: LCCOMB_X29_Y26_N24
\U_BCD7|Equal10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~3_combout\ = (!\U_BCD7|unidade[15]~28_combout\ & (!\U_BCD7|unidade[13]~24_combout\ & (!\U_BCD7|unidade[14]~26_combout\ & !\U_BCD7|unidade[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[15]~28_combout\,
	datab => \U_BCD7|unidade[13]~24_combout\,
	datac => \U_BCD7|unidade[14]~26_combout\,
	datad => \U_BCD7|unidade[12]~22_combout\,
	combout => \U_BCD7|Equal10~3_combout\);

-- Location: LCCOMB_X29_Y27_N8
\U_BCD7|Equal10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~5_combout\ = (\U_BCD7|Equal10~1_combout\ & (\U_BCD7|Equal10~2_combout\ & (\U_BCD7|Equal10~4_combout\ & \U_BCD7|Equal10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~1_combout\,
	datab => \U_BCD7|Equal10~2_combout\,
	datac => \U_BCD7|Equal10~4_combout\,
	datad => \U_BCD7|Equal10~3_combout\,
	combout => \U_BCD7|Equal10~5_combout\);

-- Location: LCCOMB_X28_Y24_N10
\U_BCD7|Equal10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~7_combout\ = (\U_BCD7|Equal10~0_combout\ & (!\U_BCD7|unidade[1]~0_combout\ & (!\U_BCD7|unidade[3]~4_combout\ & \U_BCD7|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~0_combout\,
	datab => \U_BCD7|unidade[1]~0_combout\,
	datac => \U_BCD7|unidade[3]~4_combout\,
	datad => \U_BCD7|Equal10~5_combout\,
	combout => \U_BCD7|Equal10~7_combout\);

-- Location: LCCOMB_X28_Y24_N20
\U_BCD7|Equal10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal10~6_combout\ = (\U_BCD7|Equal10~0_combout\ & (!\U_BCD7|unidade[3]~4_combout\ & \U_BCD7|Equal10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~0_combout\,
	datac => \U_BCD7|unidade[3]~4_combout\,
	datad => \U_BCD7|Equal10~5_combout\,
	combout => \U_BCD7|Equal10~6_combout\);

-- Location: LCCOMB_X28_Y24_N12
\U_BCD7|WideNor1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor1~0_combout\ = (\U_BCD7|Equal10~6_combout\ & ((\U_MUX_3x1_3SEL|o_S[0]~13_combout\) # ((!\U_BCD7|unidade[1]~0_combout\ & \U_BCD7|unidade[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_BCD7|Equal10~6_combout\,
	datac => \U_BCD7|unidade[1]~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideNor1~0_combout\);

-- Location: LCCOMB_X28_Y24_N30
\U_BCD7|WideNor1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor1~1_combout\ = (\U_MUX_3x1_3SEL|o_S[0]~13_combout\) # (((!\U_BCD7|unidade[1]~0_combout\ & \U_BCD7|unidade[2]~2_combout\)) # (!\U_BCD7|Equal10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_BCD7|Equal10~6_combout\,
	datac => \U_BCD7|unidade[1]~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideNor1~1_combout\);

-- Location: LCCOMB_X29_Y27_N6
\U_BCD7|Equal18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal18~0_combout\ = (!\U_BCD7|unidade[2]~2_combout\ & (\U_BCD7|unidade[3]~4_combout\ & !\U_BCD7|unidade[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|unidade[2]~2_combout\,
	datac => \U_BCD7|unidade[3]~4_combout\,
	datad => \U_BCD7|unidade[1]~0_combout\,
	combout => \U_BCD7|Equal18~0_combout\);

-- Location: LCCOMB_X29_Y27_N4
\U_BCD7|Equal18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal18~1_combout\ = (\U_BCD7|Equal10~5_combout\ & (\U_BCD7|Equal10~0_combout\ & \U_BCD7|Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Equal10~5_combout\,
	datac => \U_BCD7|Equal10~0_combout\,
	datad => \U_BCD7|Equal18~0_combout\,
	combout => \U_BCD7|Equal18~1_combout\);

-- Location: LCCOMB_X28_Y24_N28
\U_BCD7|WideNor1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor1~2_combout\ = (\U_BCD7|WideNor1~0_combout\) # ((\U_BCD7|Equal18~1_combout\) # (!\U_BCD7|WideNor1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|WideNor1~0_combout\,
	datac => \U_BCD7|WideNor1~1_combout\,
	datad => \U_BCD7|Equal18~1_combout\,
	combout => \U_BCD7|WideNor1~2_combout\);

-- Location: LCCOMB_X28_Y24_N0
\U_BCD7|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr4~0_combout\ = (\U_BCD7|WideNor1~2_combout\ & (((\U_BCD7|unidade[2]~2_combout\) # (!\U_MUX_3x1_3SEL|o_S[0]~13_combout\)) # (!\U_BCD7|Equal10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~7_combout\,
	datab => \U_BCD7|WideNor1~2_combout\,
	datac => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y24_N26
\U_BCD7|WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr9~0_combout\ = (\U_BCD7|Equal10~6_combout\ & ((\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & (\U_BCD7|unidade[1]~0_combout\ & \U_BCD7|unidade[2]~2_combout\)) # (!\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & (!\U_BCD7|unidade[1]~0_combout\ & 
-- !\U_BCD7|unidade[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_BCD7|Equal10~6_combout\,
	datac => \U_BCD7|unidade[1]~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideOr9~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\U_BCD7|WideOr9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr9~combout\ = (\U_BCD7|WideOr9~0_combout\) # (!\U_BCD7|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|WideOr4~0_combout\,
	datac => \U_BCD7|WideOr9~0_combout\,
	combout => \U_BCD7|WideOr9~combout\);

-- Location: LCCOMB_X28_Y24_N6
\U_BCD7|Equal12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal12~0_combout\ = (\U_BCD7|Equal10~0_combout\ & (\U_BCD7|unidade[1]~0_combout\ & (!\U_BCD7|unidade[3]~4_combout\ & \U_BCD7|Equal10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~0_combout\,
	datab => \U_BCD7|unidade[1]~0_combout\,
	datac => \U_BCD7|unidade[3]~4_combout\,
	datad => \U_BCD7|Equal10~5_combout\,
	combout => \U_BCD7|Equal12~0_combout\);

-- Location: LCCOMB_X28_Y24_N24
\U_BCD7|WideOr8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr8~combout\ = ((\U_BCD7|Equal12~0_combout\ & !\U_BCD7|unidade[2]~2_combout\)) # (!\U_BCD7|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal12~0_combout\,
	datab => \U_BCD7|WideOr4~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideOr8~combout\);

-- Location: LCCOMB_X28_Y24_N14
\U_BCD7|WideNor1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor1~3_combout\ = (\U_BCD7|WideNor1~1_combout\ & ((\U_MUX_3x1_3SEL|o_S[0]~13_combout\) # (!\U_BCD7|Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|WideNor1~1_combout\,
	datac => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datad => \U_BCD7|Equal18~1_combout\,
	combout => \U_BCD7|WideNor1~3_combout\);

-- Location: LCCOMB_X28_Y24_N4
\U_BCD7|WideNor1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor1~4_combout\ = ((\U_MUX_3x1_3SEL|o_S[0]~13_combout\ $ (\U_BCD7|unidade[1]~0_combout\)) # (!\U_BCD7|unidade[2]~2_combout\)) # (!\U_BCD7|Equal10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_BCD7|Equal10~6_combout\,
	datac => \U_BCD7|unidade[1]~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideNor1~4_combout\);

-- Location: LCCOMB_X28_Y24_N22
\U_BCD7|WideOr6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr6~combout\ = (!\U_BCD7|WideOr4~0_combout\) # (!\U_BCD7|WideNor1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_BCD7|WideNor1~4_combout\,
	datad => \U_BCD7|WideOr4~0_combout\,
	combout => \U_BCD7|WideOr6~combout\);

-- Location: LCCOMB_X28_Y24_N16
\U_BCD7|o_BCD0[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|o_BCD0\(4) = ((\U_BCD7|Equal12~0_combout\ & (!\U_MUX_3x1_3SEL|o_S[0]~13_combout\ & !\U_BCD7|unidade[2]~2_combout\))) # (!\U_BCD7|WideNor1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal12~0_combout\,
	datab => \U_BCD7|WideNor1~2_combout\,
	datac => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|o_BCD0\(4));

-- Location: LCCOMB_X28_Y24_N18
\U_BCD7|WideOr5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr5~2_combout\ = (\U_BCD7|Equal10~6_combout\ & (\U_BCD7|unidade[2]~2_combout\ & (\U_MUX_3x1_3SEL|o_S[0]~13_combout\ $ (\U_BCD7|unidade[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datab => \U_BCD7|Equal10~6_combout\,
	datac => \U_BCD7|unidade[1]~0_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideOr5~2_combout\);

-- Location: LCCOMB_X28_Y24_N2
\U_BCD7|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr5~combout\ = (\U_BCD7|WideOr5~2_combout\) # ((!\U_BCD7|WideNor1~0_combout\ & (\U_BCD7|WideNor1~1_combout\ & !\U_BCD7|Equal18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|WideNor1~0_combout\,
	datab => \U_BCD7|WideOr5~2_combout\,
	datac => \U_BCD7|WideNor1~1_combout\,
	datad => \U_BCD7|Equal18~1_combout\,
	combout => \U_BCD7|WideOr5~combout\);

-- Location: LCCOMB_X28_Y24_N8
\U_BCD7|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr4~combout\ = ((\U_BCD7|Equal10~7_combout\ & (\U_MUX_3x1_3SEL|o_S[0]~13_combout\ $ (\U_BCD7|unidade[2]~2_combout\)))) # (!\U_BCD7|WideNor1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal10~7_combout\,
	datab => \U_BCD7|WideNor1~2_combout\,
	datac => \U_MUX_3x1_3SEL|o_S[0]~13_combout\,
	datad => \U_BCD7|unidade[2]~2_combout\,
	combout => \U_BCD7|WideOr4~combout\);

-- Location: LCCOMB_X30_Y26_N26
\U_BCD7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal0~1_combout\ = (!\U_BCD7|Add1~20_combout\ & (!\U_BCD7|Add1~18_combout\ & (!\U_BCD7|Add1~22_combout\ & !\U_BCD7|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~20_combout\,
	datab => \U_BCD7|Add1~18_combout\,
	datac => \U_BCD7|Add1~22_combout\,
	datad => \U_BCD7|Add1~16_combout\,
	combout => \U_BCD7|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y26_N24
\U_BCD7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal0~2_combout\ = (!\U_BCD7|Add1~26_combout\ & (!\U_BCD7|Add1~28_combout\ & (!\U_BCD7|Add1~24_combout\ & !\U_BCD7|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~26_combout\,
	datab => \U_BCD7|Add1~28_combout\,
	datac => \U_BCD7|Add1~24_combout\,
	datad => \U_BCD7|Add1~30_combout\,
	combout => \U_BCD7|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y27_N0
\U_BCD7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal0~0_combout\ = (!\U_BCD7|Add1~10_combout\ & (!\U_BCD7|Add1~8_combout\ & (!\U_BCD7|Add1~12_combout\ & !\U_BCD7|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~10_combout\,
	datab => \U_BCD7|Add1~8_combout\,
	datac => \U_BCD7|Add1~12_combout\,
	datad => \U_BCD7|Add1~14_combout\,
	combout => \U_BCD7|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y28_N4
\U_BCD7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal0~3_combout\ = (\U_BCD7|Equal0~1_combout\ & (\U_BCD7|Equal0~2_combout\ & (!\U_BCD7|Add1~6_combout\ & \U_BCD7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal0~1_combout\,
	datab => \U_BCD7|Equal0~2_combout\,
	datac => \U_BCD7|Add1~6_combout\,
	datad => \U_BCD7|Equal0~0_combout\,
	combout => \U_BCD7|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y28_N0
\U_BCD7|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr3~combout\ = (\U_BCD7|Equal0~3_combout\ & ((\U_BCD7|Add1~2_combout\ & (\U_BCD7|Add1~4_combout\ & \U_BCD7|Add1~0_combout\)) # (!\U_BCD7|Add1~2_combout\ & (!\U_BCD7|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|WideOr3~combout\);

-- Location: LCCOMB_X26_Y28_N2
\U_BCD7|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr2~0_combout\ = (!\U_BCD7|Add1~4_combout\ & (\U_BCD7|Equal0~3_combout\ & ((\U_BCD7|Add1~2_combout\) # (\U_BCD7|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\U_BCD7|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor0~1_combout\ = (\U_BCD7|Add1~0_combout\) # (((\U_BCD7|Add1~4_combout\ & !\U_BCD7|Add1~2_combout\)) # (!\U_BCD7|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~4_combout\,
	datab => \U_BCD7|Add1~0_combout\,
	datac => \U_BCD7|Equal0~3_combout\,
	datad => \U_BCD7|Add1~2_combout\,
	combout => \U_BCD7|WideNor0~1_combout\);

-- Location: LCCOMB_X27_Y28_N2
\U_BCD7|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor0~0_combout\ = (\U_BCD7|Equal0~3_combout\ & ((\U_BCD7|Add1~0_combout\) # ((\U_BCD7|Add1~4_combout\ & !\U_BCD7|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~4_combout\,
	datab => \U_BCD7|Add1~0_combout\,
	datac => \U_BCD7|Equal0~3_combout\,
	datad => \U_BCD7|Add1~2_combout\,
	combout => \U_BCD7|WideNor0~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\U_BCD7|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal8~0_combout\ = (!\U_BCD7|Add1~4_combout\ & (\U_BCD7|Add1~6_combout\ & !\U_BCD7|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~6_combout\,
	datad => \U_BCD7|Add1~2_combout\,
	combout => \U_BCD7|Equal8~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\U_BCD7|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal8~1_combout\ = (\U_BCD7|Equal0~1_combout\ & (\U_BCD7|Equal0~2_combout\ & (\U_BCD7|Equal8~0_combout\ & \U_BCD7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Equal0~1_combout\,
	datab => \U_BCD7|Equal0~2_combout\,
	datac => \U_BCD7|Equal8~0_combout\,
	datad => \U_BCD7|Equal0~0_combout\,
	combout => \U_BCD7|Equal8~1_combout\);

-- Location: LCCOMB_X27_Y28_N26
\U_BCD7|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideOr1~combout\ = ((\U_BCD7|Equal8~1_combout\ & (!\U_BCD7|Add1~0_combout\)) # (!\U_BCD7|Equal8~1_combout\ & ((!\U_BCD7|WideNor0~0_combout\)))) # (!\U_BCD7|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|WideNor0~1_combout\,
	datab => \U_BCD7|Add1~0_combout\,
	datac => \U_BCD7|WideNor0~0_combout\,
	datad => \U_BCD7|Equal8~1_combout\,
	combout => \U_BCD7|WideOr1~combout\);

-- Location: LCCOMB_X26_Y28_N4
\U_BCD7|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor0~2_combout\ = ((\U_BCD7|Add1~2_combout\ & ((!\U_BCD7|Add1~0_combout\) # (!\U_BCD7|Add1~4_combout\))) # (!\U_BCD7|Add1~2_combout\ & (\U_BCD7|Add1~4_combout\ $ (!\U_BCD7|Add1~0_combout\)))) # (!\U_BCD7|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|WideNor0~2_combout\);

-- Location: LCCOMB_X26_Y28_N6
\U_BCD7|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Equal2~0_combout\ = (\U_BCD7|Add1~2_combout\ & (!\U_BCD7|Add1~4_combout\ & (!\U_BCD7|Add1~0_combout\ & \U_BCD7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\U_BCD7|o_BCD1[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|o_BCD1\(5) = (\U_BCD7|Add1~4_combout\ & (\U_BCD7|Equal0~3_combout\ & (\U_BCD7|Add1~2_combout\ $ (\U_BCD7|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|o_BCD1\(5));

-- Location: LCCOMB_X26_Y28_N22
\U_BCD7|o_BCD1[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|o_BCD1[6]~0_combout\ = (\U_BCD7|Add1~2_combout\) # ((\U_BCD7|Add1~4_combout\ $ (!\U_BCD7|Add1~0_combout\)) # (!\U_BCD7|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Add1~2_combout\,
	datab => \U_BCD7|Add1~4_combout\,
	datac => \U_BCD7|Add1~0_combout\,
	datad => \U_BCD7|Equal0~3_combout\,
	combout => \U_BCD7|o_BCD1[6]~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\U_BCD7|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|WideNor0~3_combout\ = ((\U_BCD7|WideNor0~0_combout\) # (\U_BCD7|Equal8~1_combout\)) # (!\U_BCD7|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|WideNor0~1_combout\,
	datab => \U_BCD7|WideNor0~0_combout\,
	datad => \U_BCD7|Equal8~1_combout\,
	combout => \U_BCD7|WideNor0~3_combout\);

-- Location: LCCOMB_X27_Y28_N6
\U_BCD7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Mux6~0_combout\ = (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y28_N0
\U_BCD7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCD7|Mux4~0_combout\ = (!\U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \U_BCD7|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \U_BCD7|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y25_N10
\U_MUX_3x1_3SEL|o_ID[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_ID[5]~0_combout\ = (!\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\ & (\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\ $ (\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	combout => \U_MUX_3x1_3SEL|o_ID[5]~0_combout\);

-- Location: LCCOMB_X32_Y25_N20
\U_MUX_3x1_3SEL|o_ID[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MUX_3x1_3SEL|o_ID[7]~1_combout\ = (\U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\) # ((\U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\) # (\U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SLAVE_C|U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_SLAVE_B|U_STM_SLAVE|w_ENABLE~combout\,
	datad => \U_SLAVE_A|U_STM_SLAVE|w_ENABLE~combout\,
	combout => \U_MUX_3x1_3SEL|o_ID[7]~1_combout\);
END structure;


