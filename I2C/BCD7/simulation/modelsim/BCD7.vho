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

-- DATE "10/15/2018 12:38:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCD7 IS
    PORT (
	i_IN : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	o_BCD0 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_BCD1 : BUFFER std_logic_vector(7 DOWNTO 0);
	o_BCD2 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BCD7;

-- Design Ports Information
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- i_IN[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_IN[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_BCD0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_BCD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_BCD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \o_BCD0[0]~output_o\ : std_logic;
SIGNAL \o_BCD0[1]~output_o\ : std_logic;
SIGNAL \o_BCD0[2]~output_o\ : std_logic;
SIGNAL \o_BCD0[3]~output_o\ : std_logic;
SIGNAL \o_BCD0[4]~output_o\ : std_logic;
SIGNAL \o_BCD0[5]~output_o\ : std_logic;
SIGNAL \o_BCD0[6]~output_o\ : std_logic;
SIGNAL \o_BCD0[7]~output_o\ : std_logic;
SIGNAL \o_BCD1[0]~output_o\ : std_logic;
SIGNAL \o_BCD1[1]~output_o\ : std_logic;
SIGNAL \o_BCD1[2]~output_o\ : std_logic;
SIGNAL \o_BCD1[3]~output_o\ : std_logic;
SIGNAL \o_BCD1[4]~output_o\ : std_logic;
SIGNAL \o_BCD1[5]~output_o\ : std_logic;
SIGNAL \o_BCD1[6]~output_o\ : std_logic;
SIGNAL \o_BCD1[7]~output_o\ : std_logic;
SIGNAL \o_BCD2[0]~output_o\ : std_logic;
SIGNAL \o_BCD2[1]~output_o\ : std_logic;
SIGNAL \o_BCD2[2]~output_o\ : std_logic;
SIGNAL \o_BCD2[3]~output_o\ : std_logic;
SIGNAL \o_BCD2[4]~output_o\ : std_logic;
SIGNAL \o_BCD2[5]~output_o\ : std_logic;
SIGNAL \o_BCD2[6]~output_o\ : std_logic;
SIGNAL \o_BCD2[7]~output_o\ : std_logic;
SIGNAL \i_IN[7]~input_o\ : std_logic;
SIGNAL \i_IN[6]~input_o\ : std_logic;
SIGNAL \i_IN[5]~input_o\ : std_logic;
SIGNAL \i_IN[4]~input_o\ : std_logic;
SIGNAL \i_IN[3]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \i_IN[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \aux[2]~1\ : std_logic;
SIGNAL \aux[3]~3\ : std_logic;
SIGNAL \aux[4]~5\ : std_logic;
SIGNAL \aux[5]~7\ : std_logic;
SIGNAL \aux[6]~9\ : std_logic;
SIGNAL \aux[7]~11\ : std_logic;
SIGNAL \aux[8]~13\ : std_logic;
SIGNAL \aux[9]~15\ : std_logic;
SIGNAL \aux[10]~17\ : std_logic;
SIGNAL \aux[11]~19\ : std_logic;
SIGNAL \aux[12]~21\ : std_logic;
SIGNAL \aux[13]~23\ : std_logic;
SIGNAL \aux[14]~24_combout\ : std_logic;
SIGNAL \aux[11]~18_combout\ : std_logic;
SIGNAL \aux[12]~20_combout\ : std_logic;
SIGNAL \aux[14]~25\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \aux[9]~14_combout\ : std_logic;
SIGNAL \i_IN[0]~input_o\ : std_logic;
SIGNAL \aux[2]~0_combout\ : std_logic;
SIGNAL \aux[4]~4_combout\ : std_logic;
SIGNAL \aux[3]~2_combout\ : std_logic;
SIGNAL \aux[5]~6_combout\ : std_logic;
SIGNAL \aux[8]~12_combout\ : std_logic;
SIGNAL \aux[6]~8_combout\ : std_logic;
SIGNAL \aux[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ : std_logic;
SIGNAL \i_IN[1]~input_o\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ : std_logic;
SIGNAL \aux[10]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ : std_logic;
SIGNAL \aux[13]~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~110_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~113_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~114_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[24]~116_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[24]~117_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[34]~222_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[34]~118_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~196_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~120_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~123_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~124_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~125_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~197_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~224_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~127_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~131_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~130_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~199_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~132_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[44]~134_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[44]~201_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~138_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~137_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~202_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~139_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~141_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~225_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~25_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~144_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~204_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~146_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~206_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~148_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~151_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~152_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~153_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~207_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~155_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~226_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~159_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~158_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~209_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~211_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~165_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~166_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~212_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~167_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~169_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~227_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~172_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~173_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~174_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~214_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[80]~176_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[80]~216_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~179_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~180_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~217_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~181_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~183_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~228_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~186_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~187_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~188_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~219_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~190_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~221_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~193_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~194_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~15\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~17\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~19\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~21\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~23\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~25\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~27\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~29\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \dezena~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \unidade[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[4]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[3]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[2]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[1]~11_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \unidade[1]~1\ : std_logic;
SIGNAL \unidade[2]~3\ : std_logic;
SIGNAL \unidade[3]~5\ : std_logic;
SIGNAL \unidade[4]~7\ : std_logic;
SIGNAL \unidade[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[5]~7_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \unidade[5]~9\ : std_logic;
SIGNAL \unidade[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[6]~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \unidade[6]~11\ : std_logic;
SIGNAL \unidade[7]~12_combout\ : std_logic;
SIGNAL \unidade[4]~6_combout\ : std_logic;
SIGNAL \Equal10~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[8]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[7]~5_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \unidade[7]~13\ : std_logic;
SIGNAL \unidade[8]~15\ : std_logic;
SIGNAL \unidade[9]~16_combout\ : std_logic;
SIGNAL \unidade[8]~14_combout\ : std_logic;
SIGNAL \Equal10~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~20_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[10]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[9]~3_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \unidade[9]~17\ : std_logic;
SIGNAL \unidade[10]~19\ : std_logic;
SIGNAL \unidade[11]~20_combout\ : std_logic;
SIGNAL \unidade[10]~18_combout\ : std_logic;
SIGNAL \Equal10~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~28_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~26_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|_~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~24_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[12]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~22_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[11]~1_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \unidade[11]~21\ : std_logic;
SIGNAL \unidade[12]~23\ : std_logic;
SIGNAL \unidade[13]~25\ : std_logic;
SIGNAL \unidade[14]~27\ : std_logic;
SIGNAL \unidade[15]~29\ : std_logic;
SIGNAL \unidade[16]~31\ : std_logic;
SIGNAL \unidade[17]~32_combout\ : std_logic;
SIGNAL \unidade[16]~30_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \unidade[17]~33\ : std_logic;
SIGNAL \unidade[18]~35\ : std_logic;
SIGNAL \unidade[19]~36_combout\ : std_logic;
SIGNAL \unidade[18]~34_combout\ : std_logic;
SIGNAL \Equal10~5_combout\ : std_logic;
SIGNAL \unidade[15]~28_combout\ : std_logic;
SIGNAL \unidade[13]~24_combout\ : std_logic;
SIGNAL \unidade[14]~26_combout\ : std_logic;
SIGNAL \unidade[12]~22_combout\ : std_logic;
SIGNAL \Equal10~4_combout\ : std_logic;
SIGNAL \unidade[19]~37\ : std_logic;
SIGNAL \unidade[20]~39\ : std_logic;
SIGNAL \unidade[21]~41\ : std_logic;
SIGNAL \unidade[22]~42_combout\ : std_logic;
SIGNAL \unidade[21]~40_combout\ : std_logic;
SIGNAL \unidade[22]~43\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \unidade[20]~38_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal10~6_combout\ : std_logic;
SIGNAL \unidade[3]~4_combout\ : std_logic;
SIGNAL \Equal10~7_combout\ : std_logic;
SIGNAL \unidade[2]~2_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Equal10~8_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal10~9_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \WideNor1~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \WideNor1~2_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideNor1~3_combout\ : std_logic;
SIGNAL \w_BCD0~0_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \w_BCD1~0_combout\ : std_logic;
SIGNAL \w_BCD1~1_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_w_BCD1~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

BEGIN

ww_i_IN <= i_IN;
ww_clk <= clk;
o_BCD0 <= ww_o_BCD0;
o_BCD1 <= ww_o_BCD1;
o_BCD2 <= ww_o_BCD2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w_BCD1~1_combout\ <= NOT \w_BCD1~1_combout\;
\ALT_INV_WideNor0~2_combout\ <= NOT \WideNor0~2_combout\;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;

-- Location: IOOBUF_X26_Y29_N16
\o_BCD0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~combout\,
	devoe => ww_devoe,
	o => \o_BCD0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_BCD0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~combout\,
	devoe => ww_devoe,
	o => \o_BCD0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_BCD0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor1~1_combout\,
	devoe => ww_devoe,
	o => \o_BCD0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\o_BCD0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr6~combout\,
	devoe => ww_devoe,
	o => \o_BCD0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_BCD0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_BCD0~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_BCD0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => \o_BCD0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_BCD0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \o_BCD0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_BCD0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor1~3_combout\,
	devoe => ww_devoe,
	o => \o_BCD0[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\o_BCD1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~combout\,
	devoe => ww_devoe,
	o => \o_BCD1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\o_BCD1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_BCD1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \o_BCD1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\o_BCD1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor0~2_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_BCD1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\o_BCD1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_BCD1~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\o_BCD1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_w_BCD1~1_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_BCD1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~3_combout\,
	devoe => ww_devoe,
	o => \o_BCD1[7]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\o_BCD2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_BCD2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\o_BCD2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\o_BCD2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\o_BCD2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult0|mult_core|_~1_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[4]~output_o\);

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
	o => \o_BCD2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_BCD2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \o_BCD2[6]~output_o\);

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
	o => \o_BCD2[7]~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\i_IN[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(7),
	o => \i_IN[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\i_IN[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(6),
	o => \i_IN[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\i_IN[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(5),
	o => \i_IN[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\i_IN[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(4),
	o => \i_IN[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\i_IN[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(3),
	o => \i_IN[3]~input_o\);

-- Location: LCCOMB_X17_Y26_N0
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \i_IN[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\i_IN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IN[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X17_Y26_N2
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\i_IN[4]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\i_IN[4]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\i_IN[4]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_IN[4]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X17_Y26_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\i_IN[5]~input_o\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\i_IN[5]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\i_IN[5]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[5]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X17_Y26_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\i_IN[6]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\i_IN[6]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\i_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[6]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X17_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\i_IN[7]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\i_IN[7]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\i_IN[7]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[7]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X17_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X17_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X16_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \i_IN[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \i_IN[7]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X17_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X16_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\i_IN[6]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[6]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X16_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\i_IN[5]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IN[5]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X17_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X16_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X16_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \i_IN[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \i_IN[4]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X16_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\i_IN[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[3]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X17_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: IOIBUF_X0_Y25_N22
\i_IN[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(2),
	o => \i_IN[2]~input_o\);

-- Location: LCCOMB_X16_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \i_IN[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \i_IN[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X16_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \i_IN[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \i_IN[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X16_Y26_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X16_Y26_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X16_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X16_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X16_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X16_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X17_Y26_N28
\Mult0|mult_core|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X17_Y26_N14
\Mult0|mult_core|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X17_Y26_N24
\Mult0|mult_core|romout[0][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X19_Y26_N4
\aux[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[2]~0_combout\ = (\i_IN[2]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (GND))) # (!\i_IN[2]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (VCC)))
-- \aux[2]~1\ = CARRY((\i_IN[2]~input_o\) # (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	combout => \aux[2]~0_combout\,
	cout => \aux[2]~1\);

-- Location: LCCOMB_X19_Y26_N6
\aux[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[3]~2_combout\ = (\i_IN[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\aux[2]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\aux[2]~1\)))) # 
-- (!\i_IN[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\aux[2]~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\aux[2]~1\) # (GND)))))
-- \aux[3]~3\ = CARRY((\i_IN[3]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\aux[2]~1\)) # (!\i_IN[3]~input_o\ & ((!\aux[2]~1\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \aux[2]~1\,
	combout => \aux[3]~2_combout\,
	cout => \aux[3]~3\);

-- Location: LCCOMB_X19_Y26_N8
\aux[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[4]~4_combout\ = (\i_IN[4]~input_o\ & ((GND) # (!\aux[3]~3\))) # (!\i_IN[4]~input_o\ & (\aux[3]~3\ $ (GND)))
-- \aux[4]~5\ = CARRY((\i_IN[4]~input_o\) # (!\aux[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_IN[4]~input_o\,
	datad => VCC,
	cin => \aux[3]~3\,
	combout => \aux[4]~4_combout\,
	cout => \aux[4]~5\);

-- Location: LCCOMB_X19_Y26_N10
\aux[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[5]~6_combout\ = (\i_IN[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\aux[4]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\aux[4]~5\)))) # 
-- (!\i_IN[5]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\aux[4]~5\)) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\aux[4]~5\) # (GND)))))
-- \aux[5]~7\ = CARRY((\i_IN[5]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\aux[4]~5\)) # (!\i_IN[5]~input_o\ & ((!\aux[4]~5\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[5]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \aux[4]~5\,
	combout => \aux[5]~6_combout\,
	cout => \aux[5]~7\);

-- Location: LCCOMB_X19_Y26_N12
\aux[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[6]~8_combout\ = ((\Mult0|mult_core|romout[0][6]~0_combout\ $ (\i_IN[6]~input_o\ $ (\aux[5]~7\)))) # (GND)
-- \aux[6]~9\ = CARRY((\Mult0|mult_core|romout[0][6]~0_combout\ & (\i_IN[6]~input_o\ & !\aux[5]~7\)) # (!\Mult0|mult_core|romout[0][6]~0_combout\ & ((\i_IN[6]~input_o\) # (!\aux[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~0_combout\,
	datab => \i_IN[6]~input_o\,
	datad => VCC,
	cin => \aux[5]~7\,
	combout => \aux[6]~8_combout\,
	cout => \aux[6]~9\);

-- Location: LCCOMB_X19_Y26_N14
\aux[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[7]~10_combout\ = (\Mult0|mult_core|_~1_combout\ & ((\i_IN[7]~input_o\ & (!\aux[6]~9\)) # (!\i_IN[7]~input_o\ & ((\aux[6]~9\) # (GND))))) # (!\Mult0|mult_core|_~1_combout\ & ((\i_IN[7]~input_o\ & (\aux[6]~9\ & VCC)) # (!\i_IN[7]~input_o\ & 
-- (!\aux[6]~9\))))
-- \aux[7]~11\ = CARRY((\Mult0|mult_core|_~1_combout\ & ((!\aux[6]~9\) # (!\i_IN[7]~input_o\))) # (!\Mult0|mult_core|_~1_combout\ & (!\i_IN[7]~input_o\ & !\aux[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|_~1_combout\,
	datab => \i_IN[7]~input_o\,
	datad => VCC,
	cin => \aux[6]~9\,
	combout => \aux[7]~10_combout\,
	cout => \aux[7]~11\);

-- Location: LCCOMB_X19_Y26_N16
\aux[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[8]~12_combout\ = (\Mult0|mult_core|_~0_combout\ & (\aux[7]~11\ $ (GND))) # (!\Mult0|mult_core|_~0_combout\ & (!\aux[7]~11\ & VCC))
-- \aux[8]~13\ = CARRY((\Mult0|mult_core|_~0_combout\ & !\aux[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \aux[7]~11\,
	combout => \aux[8]~12_combout\,
	cout => \aux[8]~13\);

-- Location: LCCOMB_X19_Y26_N18
\aux[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[9]~14_combout\ = !\aux[8]~13\
-- \aux[9]~15\ = CARRY(!\aux[8]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[8]~13\,
	combout => \aux[9]~14_combout\,
	cout => \aux[9]~15\);

-- Location: LCCOMB_X19_Y26_N20
\aux[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[10]~16_combout\ = \aux[9]~15\ $ (GND)
-- \aux[10]~17\ = CARRY(!\aux[9]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[9]~15\,
	combout => \aux[10]~16_combout\,
	cout => \aux[10]~17\);

-- Location: LCCOMB_X19_Y26_N22
\aux[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[11]~18_combout\ = !\aux[10]~17\
-- \aux[11]~19\ = CARRY(!\aux[10]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[10]~17\,
	combout => \aux[11]~18_combout\,
	cout => \aux[11]~19\);

-- Location: LCCOMB_X19_Y26_N24
\aux[12]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[12]~20_combout\ = \aux[11]~19\ $ (GND)
-- \aux[12]~21\ = CARRY(!\aux[11]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[11]~19\,
	combout => \aux[12]~20_combout\,
	cout => \aux[12]~21\);

-- Location: LCCOMB_X19_Y26_N26
\aux[13]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[13]~22_combout\ = !\aux[12]~21\
-- \aux[13]~23\ = CARRY(!\aux[12]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[12]~21\,
	combout => \aux[13]~22_combout\,
	cout => \aux[13]~23\);

-- Location: LCCOMB_X19_Y26_N28
\aux[14]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \aux[14]~24_combout\ = \aux[13]~23\ $ (GND)
-- \aux[14]~25\ = CARRY(!\aux[13]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \aux[13]~23\,
	combout => \aux[14]~24_combout\,
	cout => \aux[14]~25\);

-- Location: LCCOMB_X19_Y26_N30
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \aux[14]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \aux[14]~25\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\i_IN[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(0),
	o => \i_IN[0]~input_o\);

-- Location: LCCOMB_X22_Y26_N8
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ = (!\aux[5]~6_combout\ & (!\aux[8]~12_combout\ & (!\aux[6]~8_combout\ & !\aux[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \aux[8]~12_combout\,
	datac => \aux[6]~8_combout\,
	datad => \aux[7]~10_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\);

-- Location: IOIBUF_X0_Y27_N1
\i_IN[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_IN(1),
	o => \i_IN[1]~input_o\);

-- Location: LCCOMB_X22_Y26_N6
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (!\aux[4]~4_combout\ & (!\aux[3]~2_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\ & !\i_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[4]~4_combout\,
	datab => \aux[3]~2_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~6_combout\,
	datad => \i_IN[1]~input_o\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X20_Y24_N22
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ = (!\i_IN[0]~input_o\ & (!\aux[2]~0_combout\ & (!\Add0~0_combout\ & \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[0]~input_o\,
	datab => \aux[2]~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\);

-- Location: LCCOMB_X20_Y24_N24
\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ & ((\Add0~0_combout\ & (\aux[9]~14_combout\ & \aux[10]~16_combout\)) # (!\Add0~0_combout\ & (!\aux[9]~14_combout\ & 
-- !\aux[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \aux[9]~14_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\,
	datad => \aux[10]~16_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\);

-- Location: LCCOMB_X17_Y25_N0
\Div1|auto_generated|divider|my_abs_num|cs2a[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\ & ((\aux[11]~18_combout\ & (\aux[12]~20_combout\ & \Add0~0_combout\)) # (!\aux[11]~18_combout\ & (!\aux[12]~20_combout\ & 
-- !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[11]~18_combout\,
	datab => \aux[12]~20_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\);

-- Location: LCCOMB_X17_Y25_N2
\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ & ((\aux[14]~24_combout\ & (\Add0~0_combout\ & \aux[13]~22_combout\)) # (!\aux[14]~24_combout\ & (!\Add0~0_combout\ & 
-- !\aux[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[14]~24_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[13]~22_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\);

-- Location: LCCOMB_X17_Y25_N4
\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\ = \aux[14]~24_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ & ((!\aux[13]~22_combout\))) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ & 
-- (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[14]~24_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[13]~22_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\);

-- Location: LCCOMB_X17_Y25_N6
\Div1|auto_generated|divider|my_abs_num|cs2a[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\ = \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ $ (\Add0~0_combout\ $ (\aux[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[13]~22_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\);

-- Location: LCCOMB_X17_Y25_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\ $ (GND)
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[13]~49_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X17_Y25_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X17_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X17_Y25_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X17_Y25_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y25_N8
\Div1|auto_generated|divider|divider|StageOut[28]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~110_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~110_combout\);

-- Location: LCCOMB_X16_Y25_N8
\Div1|auto_generated|divider|divider|StageOut[27]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~111_combout\);

-- Location: LCCOMB_X16_Y25_N2
\Div1|auto_generated|divider|divider|StageOut[27]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~112_combout\);

-- Location: LCCOMB_X16_Y25_N12
\Div1|auto_generated|divider|divider|StageOut[26]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~113_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~113_combout\);

-- Location: LCCOMB_X16_Y25_N14
\Div1|auto_generated|divider|divider|StageOut[26]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~114_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~114_combout\);

-- Location: LCCOMB_X17_Y25_N24
\Div1|auto_generated|divider|divider|StageOut[25]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\ $ (\Add0~0_combout\ $ (!\aux[13]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~46_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[13]~22_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~195_combout\);

-- Location: LCCOMB_X16_Y25_N0
\Div1|auto_generated|divider|divider|StageOut[25]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~115_combout\);

-- Location: LCCOMB_X17_Y25_N26
\Div1|auto_generated|divider|my_abs_num|cs2a[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\ = \aux[12]~20_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\ & (!\aux[11]~18_combout\)) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\ & 
-- ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[11]~18_combout\,
	datab => \aux[12]~20_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\);

-- Location: LCCOMB_X16_Y25_N10
\Div1|auto_generated|divider|divider|StageOut[24]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[24]~116_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[24]~116_combout\);

-- Location: LCCOMB_X16_Y25_N4
\Div1|auto_generated|divider|divider|StageOut[24]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[24]~117_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[24]~117_combout\);

-- Location: LCCOMB_X16_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[24]~116_combout\) # (\Div1|auto_generated|divider|divider|StageOut[24]~117_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[24]~116_combout\) # (\Div1|auto_generated|divider|divider|StageOut[24]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[24]~116_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[24]~117_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X16_Y25_N20
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[25]~195_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[25]~115_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[25]~115_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[25]~195_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~115_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~195_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~115_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X16_Y25_N22
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~113_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~114_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[26]~113_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~114_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~113_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~113_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~114_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X16_Y25_N24
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~111_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~112_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[27]~112_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[27]~111_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[27]~112_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~111_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~112_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X16_Y25_N26
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[28]~110_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~110_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y25_N28
\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y25_N16
\Div1|auto_generated|divider|divider|StageOut[34]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[34]~222_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~47_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[34]~222_combout\);

-- Location: LCCOMB_X16_Y24_N0
\Div1|auto_generated|divider|divider|StageOut[34]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[34]~118_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[34]~118_combout\);

-- Location: LCCOMB_X16_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[33]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[14]~48_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~223_combout\);

-- Location: LCCOMB_X16_Y24_N2
\Div1|auto_generated|divider|divider|StageOut[33]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~119_combout\);

-- Location: LCCOMB_X16_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[32]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~196_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~195_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~195_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~196_combout\);

-- Location: LCCOMB_X16_Y24_N28
\Div1|auto_generated|divider|divider|StageOut[32]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~120_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~120_combout\);

-- Location: LCCOMB_X16_Y24_N22
\Div1|auto_generated|divider|divider|StageOut[31]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~121_combout\);

-- Location: LCCOMB_X16_Y24_N8
\Div1|auto_generated|divider|divider|StageOut[31]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~122_combout\);

-- Location: LCCOMB_X16_Y24_N30
\Div1|auto_generated|divider|divider|StageOut[30]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~123_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\aux[11]~18_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \aux[11]~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~123_combout\);

-- Location: LCCOMB_X16_Y24_N24
\Div1|auto_generated|divider|divider|StageOut[30]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~124_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\aux[11]~18_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \aux[11]~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~124_combout\);

-- Location: LCCOMB_X16_Y24_N10
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[30]~123_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~124_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~123_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~123_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~124_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X16_Y24_N12
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[31]~121_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[31]~122_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[31]~122_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~121_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~122_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~121_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~122_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X16_Y24_N14
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~120_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~120_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~196_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~120_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X16_Y24_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[33]~223_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[33]~119_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[33]~119_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~223_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~119_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~223_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~119_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X16_Y24_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[34]~222_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[34]~118_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[34]~222_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[34]~118_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y24_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X15_Y24_N8
\Div1|auto_generated|divider|divider|StageOut[40]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~125_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~125_combout\);

-- Location: LCCOMB_X16_Y24_N4
\Div1|auto_generated|divider|divider|StageOut[40]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~197_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[33]~223_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~223_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~197_combout\);

-- Location: LCCOMB_X17_Y24_N28
\Div1|auto_generated|divider|divider|StageOut[39]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[39]~126_combout\);

-- Location: LCCOMB_X16_Y24_N6
\Div1|auto_generated|divider|divider|StageOut[39]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~196_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~196_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[39]~198_combout\);

-- Location: LCCOMB_X17_Y24_N30
\Div1|auto_generated|divider|divider|StageOut[38]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~224_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[12]~50_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~224_combout\);

-- Location: LCCOMB_X17_Y24_N14
\Div1|auto_generated|divider|divider|StageOut[38]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~127_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~127_combout\);

-- Location: LCCOMB_X17_Y24_N26
\Div1|auto_generated|divider|divider|StageOut[37]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~129_combout\);

-- Location: LCCOMB_X17_Y24_N24
\Div1|auto_generated|divider|divider|StageOut[37]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\aux[11]~18_combout\ $ (\Add0~0_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[11]~18_combout\,
	datab => \Add0~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~45_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~128_combout\);

-- Location: LCCOMB_X20_Y24_N26
\Div1|auto_generated|divider|my_abs_num|cs2a[10]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\ = \aux[10]~16_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ & ((!\aux[9]~14_combout\))) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ & 
-- (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \aux[9]~14_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\,
	datad => \aux[10]~16_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\);

-- Location: LCCOMB_X17_Y24_N22
\Div1|auto_generated|divider|divider|StageOut[36]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~131_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~131_combout\);

-- Location: LCCOMB_X17_Y24_N12
\Div1|auto_generated|divider|divider|StageOut[36]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~130_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~130_combout\);

-- Location: LCCOMB_X17_Y24_N0
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[36]~131_combout\) # (\Div1|auto_generated|divider|divider|StageOut[36]~130_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[36]~131_combout\) # (\Div1|auto_generated|divider|divider|StageOut[36]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~131_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[36]~130_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X17_Y24_N2
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[37]~129_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~128_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[37]~128_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[37]~129_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[37]~128_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~129_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~128_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X17_Y24_N4
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~127_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~127_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[38]~224_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[38]~127_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X17_Y24_N6
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[39]~126_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[39]~198_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[39]~198_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[39]~126_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[39]~198_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[39]~126_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[39]~198_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X17_Y24_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[40]~125_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[40]~197_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[40]~125_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[40]~197_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X17_Y24_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X17_Y24_N16
\Div1|auto_generated|divider|divider|StageOut[46]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~199_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[39]~198_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[39]~198_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~199_combout\);

-- Location: LCCOMB_X21_Y24_N0
\Div1|auto_generated|divider|divider|StageOut[46]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~132_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~132_combout\);

-- Location: LCCOMB_X17_Y24_N18
\Div1|auto_generated|divider|divider|StageOut[45]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[38]~224_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[38]~224_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~200_combout\);

-- Location: LCCOMB_X21_Y24_N2
\Div1|auto_generated|divider|divider|StageOut[45]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~133_combout\);

-- Location: LCCOMB_X21_Y24_N20
\Div1|auto_generated|divider|divider|StageOut[44]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[44]~134_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[44]~134_combout\);

-- Location: LCCOMB_X17_Y24_N20
\Div1|auto_generated|divider|divider|StageOut[44]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[44]~201_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[37]~128_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~128_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[44]~201_combout\);

-- Location: LCCOMB_X21_Y24_N26
\Div1|auto_generated|divider|divider|StageOut[43]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~135_combout\);

-- Location: LCCOMB_X21_Y24_N4
\Div1|auto_generated|divider|divider|StageOut[43]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~136_combout\);

-- Location: LCCOMB_X20_Y24_N6
\Div1|auto_generated|divider|divider|StageOut[42]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~138_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ $ (\aux[9]~14_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\,
	datab => \aux[9]~14_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~138_combout\);

-- Location: LCCOMB_X20_Y24_N4
\Div1|auto_generated|divider|divider|StageOut[42]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~137_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\ $ (\aux[9]~14_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\,
	datab => \aux[9]~14_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~137_combout\);

-- Location: LCCOMB_X21_Y24_N6
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[42]~138_combout\) # (\Div1|auto_generated|divider|divider|StageOut[42]~137_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[42]~138_combout\) # (\Div1|auto_generated|divider|divider|StageOut[42]~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[42]~138_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[42]~137_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X21_Y24_N8
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[43]~135_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[43]~136_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[43]~136_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[43]~135_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[43]~136_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[43]~135_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[43]~136_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X21_Y24_N10
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[44]~134_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[44]~201_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[44]~134_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[44]~201_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[44]~134_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[44]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[44]~134_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[44]~201_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X21_Y24_N12
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[45]~200_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[45]~133_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[45]~133_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[45]~200_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[45]~133_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[45]~200_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[45]~133_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X21_Y24_N14
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[46]~199_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[46]~132_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[46]~199_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[46]~132_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y24_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X21_Y24_N24
\Div1|auto_generated|divider|divider|StageOut[52]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~202_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[45]~200_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[45]~200_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~202_combout\);

-- Location: LCCOMB_X22_Y24_N24
\Div1|auto_generated|divider|divider|StageOut[52]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~139_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~139_combout\);

-- Location: LCCOMB_X21_Y24_N18
\Div1|auto_generated|divider|divider|StageOut[51]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[44]~201_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[44]~201_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~203_combout\);

-- Location: LCCOMB_X21_Y24_N30
\Div1|auto_generated|divider|divider|StageOut[51]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~140_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Div1|auto_generated|divider|divider|StageOut[50]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~141_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~141_combout\);

-- Location: LCCOMB_X21_Y24_N22
\Div1|auto_generated|divider|divider|StageOut[50]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~225_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~51_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~225_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Div1|auto_generated|divider|divider|StageOut[49]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\aux[9]~14_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \aux[9]~14_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~57_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~142_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Div1|auto_generated|divider|divider|StageOut[49]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~143_combout\);

-- Location: LCCOMB_X19_Y25_N6
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~28_combout\ = (!\aux[3]~2_combout\ & (!\aux[4]~4_combout\ & (!\aux[5]~6_combout\ & !\i_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \aux[4]~4_combout\,
	datac => \aux[5]~6_combout\,
	datad => \i_IN[1]~input_o\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~28_combout\);

-- Location: LCCOMB_X19_Y26_N2
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~25_combout\ = (!\i_IN[0]~input_o\ & (!\aux[7]~10_combout\ & (!\aux[2]~0_combout\ & \Div1|auto_generated|divider|my_abs_num|cs2a[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[0]~input_o\,
	datab => \aux[7]~10_combout\,
	datac => \aux[2]~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~28_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~25_combout\);

-- Location: LCCOMB_X19_Y26_N0
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\ = \aux[8]~12_combout\ $ (((\Add0~0_combout\) # ((!\aux[6]~8_combout\ & \Div1|auto_generated|divider|my_abs_num|cs2a[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[6]~8_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~25_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[8]~12_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Div1|auto_generated|divider|divider|StageOut[48]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~144_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~144_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Div1|auto_generated|divider|divider|StageOut[48]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\);

-- Location: LCCOMB_X22_Y24_N12
\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[48]~144_combout\) # (\Div1|auto_generated|divider|divider|StageOut[48]~145_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[48]~144_combout\) # (\Div1|auto_generated|divider|divider|StageOut[48]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[48]~144_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[48]~145_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X22_Y24_N14
\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[49]~142_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[49]~143_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[49]~143_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[49]~142_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[49]~143_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[49]~142_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[49]~143_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X22_Y24_N16
\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[50]~225_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[50]~225_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[50]~141_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[50]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~141_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~225_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X22_Y24_N18
\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[51]~203_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[51]~140_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[51]~140_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[51]~203_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[51]~140_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~203_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~140_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X22_Y24_N20
\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[52]~202_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[52]~139_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~202_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~139_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X22_Y24_N22
\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X21_Y24_N28
\Div1|auto_generated|divider|divider|StageOut[58]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~204_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[51]~203_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~203_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~204_combout\);

-- Location: LCCOMB_X23_Y24_N8
\Div1|auto_generated|divider|divider|StageOut[58]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~146_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~146_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Div1|auto_generated|divider|divider|StageOut[57]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[50]~225_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~225_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~205_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Div1|auto_generated|divider|divider|StageOut[57]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~147_combout\);

-- Location: LCCOMB_X22_Y24_N10
\Div1|auto_generated|divider|divider|StageOut[56]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~206_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[49]~142_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[49]~142_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~206_combout\);

-- Location: LCCOMB_X23_Y24_N12
\Div1|auto_generated|divider|divider|StageOut[56]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~148_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~148_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Div1|auto_generated|divider|divider|StageOut[55]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[55]~149_combout\);

-- Location: LCCOMB_X23_Y24_N14
\Div1|auto_generated|divider|divider|StageOut[55]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[55]~150_combout\);

-- Location: LCCOMB_X19_Y25_N24
\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ = (!\i_IN[1]~input_o\ & (!\i_IN[0]~input_o\ & (!\Add0~0_combout\ & !\aux[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[1]~input_o\,
	datab => \i_IN[0]~input_o\,
	datac => \Add0~0_combout\,
	datad => \aux[2]~0_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\);

-- Location: LCCOMB_X19_Y25_N26
\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ & ((\aux[3]~2_combout\ & (\Add0~0_combout\ & \aux[4]~4_combout\)) # (!\aux[3]~2_combout\ & (!\Add0~0_combout\ & 
-- !\aux[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[4]~4_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\);

-- Location: LCCOMB_X19_Y25_N28
\Div1|auto_generated|divider|my_abs_num|cs2a[6]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ & ((\aux[5]~6_combout\ & (\aux[6]~8_combout\ & \Add0~0_combout\)) # (!\aux[5]~6_combout\ & (!\aux[6]~8_combout\ & 
-- !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \aux[6]~8_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\);

-- Location: LCCOMB_X19_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[54]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~151_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\ $ (!\aux[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\,
	datac => \aux[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~151_combout\);

-- Location: LCCOMB_X19_Y25_N0
\Div1|auto_generated|divider|divider|StageOut[54]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~152_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\ $ (!\aux[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\,
	datac => \aux[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~152_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[54]~151_combout\) # (\Div1|auto_generated|divider|divider|StageOut[54]~152_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[54]~151_combout\) # (\Div1|auto_generated|divider|divider|StageOut[54]~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[54]~151_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[54]~152_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X23_Y24_N20
\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[55]~149_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[55]~150_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[55]~150_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[55]~149_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[55]~150_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[55]~149_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[55]~150_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X23_Y24_N22
\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[56]~148_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[56]~148_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[56]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[56]~206_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[56]~148_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X23_Y24_N24
\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[57]~205_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[57]~147_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[57]~147_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[57]~205_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[57]~147_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[57]~205_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[57]~147_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X23_Y24_N26
\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[58]~204_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[58]~146_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[58]~204_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[58]~146_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X23_Y24_N28
\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y24_N16
\Div1|auto_generated|divider|divider|StageOut[64]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~153_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~153_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Div1|auto_generated|divider|divider|StageOut[64]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~207_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[57]~205_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[57]~205_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~207_combout\);

-- Location: LCCOMB_X23_Y24_N10
\Div1|auto_generated|divider|divider|StageOut[63]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~154_combout\);

-- Location: LCCOMB_X23_Y24_N0
\Div1|auto_generated|divider|divider|StageOut[63]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[56]~206_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[56]~206_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~208_combout\);

-- Location: LCCOMB_X23_Y24_N4
\Div1|auto_generated|divider|divider|StageOut[62]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~155_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~155_combout\);

-- Location: LCCOMB_X22_Y24_N4
\Div1|auto_generated|divider|divider|StageOut[62]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~226_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~58_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~226_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[61]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~157_combout\);

-- Location: LCCOMB_X19_Y25_N18
\Div1|auto_generated|divider|divider|StageOut[61]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Add0~0_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\ $ (!\aux[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~53_combout\,
	datac => \aux[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~156_combout\);

-- Location: LCCOMB_X19_Y25_N4
\Div1|auto_generated|divider|my_abs_num|cs2a[6]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\ = \aux[6]~8_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ & (!\aux[5]~6_combout\)) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ & 
-- ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \aux[6]~8_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\);

-- Location: LCCOMB_X19_Y23_N26
\Div1|auto_generated|divider|divider|StageOut[60]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~159_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~159_combout\);

-- Location: LCCOMB_X19_Y25_N14
\Div1|auto_generated|divider|divider|StageOut[60]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~158_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~158_combout\);

-- Location: LCCOMB_X19_Y23_N14
\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[60]~159_combout\) # (\Div1|auto_generated|divider|divider|StageOut[60]~158_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[60]~159_combout\) # (\Div1|auto_generated|divider|divider|StageOut[60]~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[60]~159_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[60]~158_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X19_Y23_N16
\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[61]~157_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~156_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[61]~156_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[61]~157_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[61]~156_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~157_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[61]~156_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X19_Y23_N18
\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[62]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[62]~226_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[62]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[62]~226_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[62]~155_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[62]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[62]~155_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[62]~226_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X19_Y23_N20
\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[63]~154_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[63]~208_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[63]~208_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[63]~154_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[63]~208_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[63]~154_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[63]~208_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X19_Y23_N22
\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[64]~153_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[64]~207_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[64]~153_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[64]~207_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X19_Y23_N24
\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X19_Y23_N12
\Div1|auto_generated|divider|divider|StageOut[70]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~160_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~160_combout\);

-- Location: LCCOMB_X23_Y24_N6
\Div1|auto_generated|divider|divider|StageOut[70]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~209_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[63]~208_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[63]~208_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~209_combout\);

-- Location: LCCOMB_X19_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[69]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[62]~226_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[62]~226_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~210_combout\);

-- Location: LCCOMB_X19_Y23_N6
\Div1|auto_generated|divider|divider|StageOut[69]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~161_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Div1|auto_generated|divider|divider|StageOut[68]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~211_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~156_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[61]~156_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~211_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Div1|auto_generated|divider|divider|StageOut[68]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~162_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~162_combout\);

-- Location: LCCOMB_X19_Y23_N10
\Div1|auto_generated|divider|divider|StageOut[67]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~164_combout\);

-- Location: LCCOMB_X20_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[67]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~163_combout\);

-- Location: LCCOMB_X20_Y23_N26
\Div1|auto_generated|divider|divider|StageOut[66]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~165_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\aux[5]~6_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~165_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[66]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~166_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\aux[5]~6_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~166_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[66]~165_combout\) # (\Div1|auto_generated|divider|divider|StageOut[66]~166_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[66]~165_combout\) # (\Div1|auto_generated|divider|divider|StageOut[66]~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[66]~165_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[66]~166_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X20_Y23_N10
\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[67]~164_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[67]~163_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[67]~163_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[67]~164_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[67]~163_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[67]~164_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[67]~163_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X20_Y23_N12
\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~162_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~162_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[68]~211_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[68]~162_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X20_Y23_N14
\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[69]~210_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~161_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[69]~161_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[69]~210_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[69]~161_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[69]~210_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~161_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X20_Y23_N16
\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[70]~160_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[70]~209_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[70]~160_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[70]~209_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X20_Y23_N18
\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X19_Y23_N4
\Div1|auto_generated|divider|divider|StageOut[76]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~212_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~210_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~210_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~212_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Div1|auto_generated|divider|divider|StageOut[76]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~167_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~167_combout\);

-- Location: LCCOMB_X19_Y23_N30
\Div1|auto_generated|divider|divider|StageOut[75]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~211_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[68]~211_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~213_combout\);

-- Location: LCCOMB_X21_Y23_N2
\Div1|auto_generated|divider|divider|StageOut[75]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~168_combout\);

-- Location: LCCOMB_X21_Y23_N12
\Div1|auto_generated|divider|divider|StageOut[74]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~169_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~169_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Div1|auto_generated|divider|divider|StageOut[74]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~227_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~54_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~227_combout\);

-- Location: LCCOMB_X20_Y23_N4
\Div1|auto_generated|divider|divider|StageOut[73]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~171_combout\);

-- Location: LCCOMB_X20_Y23_N6
\Div1|auto_generated|divider|divider|StageOut[73]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\aux[5]~6_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~52_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\);

-- Location: LCCOMB_X19_Y25_N8
\Div1|auto_generated|divider|my_abs_num|cs2a[4]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\ = \aux[4]~4_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ & (!\aux[3]~2_combout\)) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ & 
-- ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\,
	datac => \Add0~0_combout\,
	datad => \aux[4]~4_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\);

-- Location: LCCOMB_X21_Y23_N30
\Div1|auto_generated|divider|divider|StageOut[72]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~172_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~172_combout\);

-- Location: LCCOMB_X21_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[72]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~173_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~173_combout\);

-- Location: LCCOMB_X21_Y23_N16
\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[72]~172_combout\) # (\Div1|auto_generated|divider|divider|StageOut[72]~173_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[72]~172_combout\) # (\Div1|auto_generated|divider|divider|StageOut[72]~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[72]~172_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[72]~173_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X21_Y23_N18
\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[73]~171_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[73]~171_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[73]~171_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X21_Y23_N20
\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[74]~227_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[74]~227_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[74]~169_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[74]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[74]~169_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[74]~227_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X21_Y23_N22
\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[75]~213_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[75]~168_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[75]~168_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[75]~213_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[75]~168_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[75]~213_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[75]~168_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X21_Y23_N24
\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[76]~212_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[76]~167_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[76]~212_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[76]~167_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y23_N26
\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\);

-- Location: LCCOMB_X21_Y23_N10
\Div1|auto_generated|divider|divider|StageOut[82]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~174_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~174_combout\);

-- Location: LCCOMB_X21_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[82]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~214_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[75]~213_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[75]~213_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~214_combout\);

-- Location: LCCOMB_X21_Y23_N14
\Div1|auto_generated|divider|divider|StageOut[81]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[74]~227_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[74]~227_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~215_combout\);

-- Location: LCCOMB_X22_Y23_N8
\Div1|auto_generated|divider|divider|StageOut[81]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~175_combout\);

-- Location: LCCOMB_X22_Y23_N26
\Div1|auto_generated|divider|divider|StageOut[80]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[80]~176_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[80]~176_combout\);

-- Location: LCCOMB_X20_Y23_N2
\Div1|auto_generated|divider|divider|StageOut[80]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[80]~216_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[80]~216_combout\);

-- Location: LCCOMB_X22_Y23_N6
\Div1|auto_generated|divider|divider|StageOut[79]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[79]~178_combout\);

-- Location: LCCOMB_X22_Y23_N4
\Div1|auto_generated|divider|divider|StageOut[79]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\ & \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[79]~177_combout\);

-- Location: LCCOMB_X19_Y25_N10
\Div1|auto_generated|divider|divider|StageOut[78]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~179_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\aux[3]~2_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~179_combout\);

-- Location: LCCOMB_X19_Y25_N20
\Div1|auto_generated|divider|divider|StageOut[78]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~180_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\aux[3]~2_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~180_combout\);

-- Location: LCCOMB_X22_Y23_N12
\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[78]~179_combout\) # (\Div1|auto_generated|divider|divider|StageOut[78]~180_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[78]~179_combout\) # (\Div1|auto_generated|divider|divider|StageOut[78]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[78]~179_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[78]~180_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X22_Y23_N14
\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[79]~178_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[79]~177_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[79]~177_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[79]~178_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[79]~177_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[79]~178_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[79]~177_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X22_Y23_N16
\Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[80]~176_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[80]~216_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[80]~176_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[80]~216_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[80]~176_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[80]~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[80]~176_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[80]~216_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X22_Y23_N18
\Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[81]~215_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[81]~175_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[81]~175_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[81]~215_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[81]~175_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[81]~215_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[81]~175_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X22_Y23_N20
\Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[82]~174_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[82]~214_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[82]~174_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[82]~214_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\);

-- Location: LCCOMB_X22_Y23_N22
\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\);

-- Location: LCCOMB_X22_Y23_N2
\Div1|auto_generated|divider|divider|StageOut[88]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~217_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[81]~215_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[81]~215_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~217_combout\);

-- Location: LCCOMB_X23_Y23_N16
\Div1|auto_generated|divider|divider|StageOut[88]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~181_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~181_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[87]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[80]~216_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[80]~216_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[87]~218_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Div1|auto_generated|divider|divider|StageOut[87]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[87]~182_combout\);

-- Location: LCCOMB_X23_Y23_N30
\Div1|auto_generated|divider|divider|StageOut[86]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~183_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~183_combout\);

-- Location: LCCOMB_X22_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[86]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~228_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~55_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~228_combout\);

-- Location: LCCOMB_X19_Y25_N22
\Div1|auto_generated|divider|divider|StageOut[85]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\aux[3]~2_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\ $ (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~44_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~184_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Div1|auto_generated|divider|divider|StageOut[85]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~185_combout\);

-- Location: LCCOMB_X23_Y25_N0
\Div1|auto_generated|divider|my_abs_num|cs2a[2]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\ = \aux[2]~0_combout\ $ (((\Add0~0_combout\) # ((!\i_IN[0]~input_o\ & !\i_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[0]~input_o\,
	datab => \i_IN[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \aux[2]~0_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\);

-- Location: LCCOMB_X23_Y23_N18
\Div1|auto_generated|divider|divider|StageOut[84]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~186_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~186_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Div1|auto_generated|divider|divider|StageOut[84]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~187_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~187_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Div1|auto_generated|divider|divider|StageOut[84]~187_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[84]~186_combout\) # (\Div1|auto_generated|divider|divider|StageOut[84]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[84]~186_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X23_Y23_N4
\Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[85]~184_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[85]~185_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[85]~185_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[85]~184_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[85]~185_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[85]~184_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[85]~185_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X23_Y23_N6
\Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~228_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~228_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[86]~183_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[86]~228_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X23_Y23_N8
\Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[87]~218_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[87]~182_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[87]~182_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[87]~218_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[87]~182_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[87]~218_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[87]~182_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\);

-- Location: LCCOMB_X23_Y23_N10
\Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[88]~217_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[88]~181_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[88]~217_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[88]~181_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\);

-- Location: LCCOMB_X23_Y23_N12
\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y23_N14
\Div1|auto_generated|divider|divider|StageOut[94]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~188_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~188_combout\);

-- Location: LCCOMB_X22_Y23_N10
\Div1|auto_generated|divider|divider|StageOut[94]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~219_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[87]~218_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[87]~218_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~219_combout\);

-- Location: LCCOMB_X23_Y23_N20
\Div1|auto_generated|divider|divider|StageOut[93]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[86]~228_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[86]~228_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~220_combout\);

-- Location: LCCOMB_X23_Y23_N24
\Div1|auto_generated|divider|divider|StageOut[93]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~189_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Div1|auto_generated|divider|divider|StageOut[92]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~190_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~190_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Div1|auto_generated|divider|divider|StageOut[92]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~221_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[85]~184_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[85]~184_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~221_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Div1|auto_generated|divider|divider|StageOut[91]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~192_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Div1|auto_generated|divider|divider|StageOut[91]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~56_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~191_combout\);

-- Location: LCCOMB_X23_Y25_N22
\Div1|auto_generated|divider|divider|StageOut[90]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~193_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\i_IN[1]~input_o\ $ (((\i_IN[0]~input_o\ & !\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[0]~input_o\,
	datab => \i_IN[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~193_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Div1|auto_generated|divider|divider|StageOut[90]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~194_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (\i_IN[1]~input_o\ $ (((\i_IN[0]~input_o\ & !\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IN[0]~input_o\,
	datab => \i_IN[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~194_combout\);

-- Location: LCCOMB_X23_Y25_N8
\Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[90]~193_combout\) # (\Div1|auto_generated|divider|divider|StageOut[90]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[90]~193_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[90]~194_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\);

-- Location: LCCOMB_X23_Y25_N10
\Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[91]~192_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[91]~191_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[91]~192_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[91]~191_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_16_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\);

-- Location: LCCOMB_X23_Y25_N12
\Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[92]~190_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[92]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[92]~190_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[92]~221_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_16_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\);

-- Location: LCCOMB_X23_Y25_N14
\Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[93]~220_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[93]~189_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[93]~220_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[93]~189_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_16_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y25_N16
\Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[94]~188_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[94]~219_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[94]~188_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[94]~219_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_16_result_int[4]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\);

-- Location: LCCOMB_X23_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_16_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\);

-- Location: LCCOMB_X19_Y24_N0
\Div1|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~0_combout\ = \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\ $ (VCC)
-- \Div1|auto_generated|divider|op_1~1\ = CARRY(\Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|op_1~0_combout\,
	cout => \Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X19_Y24_N2
\Div1|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~1\)) # (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \Div1|auto_generated|divider|op_1~3\ = CARRY((!\Div1|auto_generated|divider|op_1~1\) # (!\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~1\,
	combout => \Div1|auto_generated|divider|op_1~2_combout\,
	cout => \Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X19_Y24_N4
\Div1|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~3\ & VCC))
-- \Div1|auto_generated|divider|op_1~5\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~3\,
	combout => \Div1|auto_generated|divider|op_1~4_combout\,
	cout => \Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X19_Y24_N6
\Div1|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~5\)) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~5\) # (GND)))
-- \Div1|auto_generated|divider|op_1~7\ = CARRY((!\Div1|auto_generated|divider|op_1~5\) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~5\,
	combout => \Div1|auto_generated|divider|op_1~6_combout\,
	cout => \Div1|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X19_Y24_N8
\Div1|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~7\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~7\ & VCC))
-- \Div1|auto_generated|divider|op_1~9\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~7\,
	combout => \Div1|auto_generated|divider|op_1~8_combout\,
	cout => \Div1|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X19_Y24_N10
\Div1|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~9\)) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~9\) # (GND)))
-- \Div1|auto_generated|divider|op_1~11\ = CARRY((!\Div1|auto_generated|divider|op_1~9\) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~9\,
	combout => \Div1|auto_generated|divider|op_1~10_combout\,
	cout => \Div1|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X19_Y24_N12
\Div1|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~12_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~11\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~11\ & VCC))
-- \Div1|auto_generated|divider|op_1~13\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~11\,
	combout => \Div1|auto_generated|divider|op_1~12_combout\,
	cout => \Div1|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X19_Y24_N14
\Div1|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~14_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~13\)) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~13\) # (GND)))
-- \Div1|auto_generated|divider|op_1~15\ = CARRY((!\Div1|auto_generated|divider|op_1~13\) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~13\,
	combout => \Div1|auto_generated|divider|op_1~14_combout\,
	cout => \Div1|auto_generated|divider|op_1~15\);

-- Location: LCCOMB_X19_Y24_N16
\Div1|auto_generated|divider|op_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~16_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~15\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~15\ & VCC))
-- \Div1|auto_generated|divider|op_1~17\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~15\,
	combout => \Div1|auto_generated|divider|op_1~16_combout\,
	cout => \Div1|auto_generated|divider|op_1~17\);

-- Location: LCCOMB_X19_Y24_N18
\Div1|auto_generated|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~18_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~17\)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~17\) # (GND)))
-- \Div1|auto_generated|divider|op_1~19\ = CARRY((!\Div1|auto_generated|divider|op_1~17\) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~17\,
	combout => \Div1|auto_generated|divider|op_1~18_combout\,
	cout => \Div1|auto_generated|divider|op_1~19\);

-- Location: LCCOMB_X19_Y24_N20
\Div1|auto_generated|divider|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~20_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~19\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~19\ & VCC))
-- \Div1|auto_generated|divider|op_1~21\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~19\,
	combout => \Div1|auto_generated|divider|op_1~20_combout\,
	cout => \Div1|auto_generated|divider|op_1~21\);

-- Location: LCCOMB_X19_Y24_N22
\Div1|auto_generated|divider|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~22_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~21\)) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~21\) # (GND)))
-- \Div1|auto_generated|divider|op_1~23\ = CARRY((!\Div1|auto_generated|divider|op_1~21\) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~21\,
	combout => \Div1|auto_generated|divider|op_1~22_combout\,
	cout => \Div1|auto_generated|divider|op_1~23\);

-- Location: LCCOMB_X19_Y24_N24
\Div1|auto_generated|divider|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~24_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|op_1~23\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~23\ & VCC))
-- \Div1|auto_generated|divider|op_1~25\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|op_1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~23\,
	combout => \Div1|auto_generated|divider|op_1~24_combout\,
	cout => \Div1|auto_generated|divider|op_1~25\);

-- Location: LCCOMB_X19_Y24_N26
\Div1|auto_generated|divider|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~26_combout\ = !\Div1|auto_generated|divider|op_1~25\
-- \Div1|auto_generated|divider|op_1~27\ = CARRY(!\Div1|auto_generated|divider|op_1~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~25\,
	combout => \Div1|auto_generated|divider|op_1~26_combout\,
	cout => \Div1|auto_generated|divider|op_1~27\);

-- Location: LCCOMB_X19_Y24_N28
\Div1|auto_generated|divider|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~28_combout\ = \Div1|auto_generated|divider|op_1~27\ $ (GND)
-- \Div1|auto_generated|divider|op_1~29\ = CARRY(!\Div1|auto_generated|divider|op_1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~27\,
	combout => \Div1|auto_generated|divider|op_1~28_combout\,
	cout => \Div1|auto_generated|divider|op_1~29\);

-- Location: LCCOMB_X19_Y24_N30
\Div1|auto_generated|divider|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~30_combout\ = !\Div1|auto_generated|divider|op_1~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|op_1~29\,
	combout => \Div1|auto_generated|divider|op_1~30_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Div1|auto_generated|divider|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|_~0_combout\ = (\Div1|auto_generated|divider|op_1~30_combout\ & !\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~30_combout\,
	datac => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\dezena~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dezena~0_combout\ = (\Add0~0_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\)))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~30_combout\ $ ((\Div1|auto_generated|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~30_combout\,
	datab => \Div1|auto_generated|divider|op_1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_16_result_int[6]~10_combout\,
	combout => \dezena~0_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Div1|auto_generated|divider|_~0_combout\ & (\dezena~0_combout\ $ (VCC))) # (!\Div1|auto_generated|divider|_~0_combout\ & (\dezena~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\Div1|auto_generated|divider|_~0_combout\ & \dezena~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \dezena~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y26_N10
\unidade[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[1]~0_combout\ = (\Add1~0_combout\ & (\i_IN[1]~input_o\ $ (VCC))) # (!\Add1~0_combout\ & ((\i_IN[1]~input_o\) # (GND)))
-- \unidade[1]~1\ = CARRY((\i_IN[1]~input_o\) # (!\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \i_IN[1]~input_o\,
	datad => VCC,
	combout => \unidade[1]~0_combout\,
	cout => \unidade[1]~1\);

-- Location: LCCOMB_X20_Y23_N24
\Div1|auto_generated|divider|quotient[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[4]~8_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|op_1~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[4]~8_combout\);

-- Location: LCCOMB_X19_Y25_N12
\Div1|auto_generated|divider|quotient[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[3]~9_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|op_1~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[3]~9_combout\);

-- Location: LCCOMB_X20_Y24_N28
\Div1|auto_generated|divider|quotient[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[2]~10_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Div1|auto_generated|divider|op_1~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[2]~10_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Div1|auto_generated|divider|quotient[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[1]~11_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[1]~11_combout\);

-- Location: LCCOMB_X20_Y25_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~1\ & (\Div1|auto_generated|divider|_~0_combout\ $ ((!\Div1|auto_generated|divider|quotient[1]~11_combout\)))) # (!\Add1~1\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[1]~11_combout\)) # 
-- (GND)))
-- \Add1~3\ = CARRY((\Div1|auto_generated|divider|_~0_combout\ $ (!\Div1|auto_generated|divider|quotient[1]~11_combout\)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|quotient[1]~11_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X20_Y25_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add1~3\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[2]~10_combout\)))) # (!\Add1~3\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[2]~10_combout\ $ 
-- (VCC))))
-- \Add1~5\ = CARRY((!\Add1~3\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|quotient[2]~10_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X20_Y25_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~5\ & (\Div1|auto_generated|divider|quotient[3]~9_combout\ $ ((!\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~5\ & ((\Div1|auto_generated|divider|quotient[3]~9_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)) # 
-- (GND)))
-- \Add1~7\ = CARRY((\Div1|auto_generated|divider|quotient[3]~9_combout\ $ (!\Div1|auto_generated|divider|_~0_combout\)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[3]~9_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X20_Y25_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~7\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[4]~8_combout\)))) # (!\Add1~7\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[4]~8_combout\ $ 
-- (VCC))))
-- \Add1~9\ = CARRY((!\Add1~7\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|quotient[4]~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y26_N16
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add1~0_combout\ & (\Add1~4_combout\ $ (VCC))) # (!\Add1~0_combout\ & (\Add1~4_combout\ & VCC))
-- \Add2~1\ = CARRY((\Add1~0_combout\ & \Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y26_N18
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~6_combout\ & ((\Add1~2_combout\ & (\Add2~1\ & VCC)) # (!\Add1~2_combout\ & (!\Add2~1\)))) # (!\Add1~6_combout\ & ((\Add1~2_combout\ & (!\Add2~1\)) # (!\Add1~2_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~6_combout\ & (!\Add1~2_combout\ & !\Add2~1\)) # (!\Add1~6_combout\ & ((!\Add2~1\) # (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X21_Y26_N20
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Add1~8_combout\ $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Add1~8_combout\ & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\Add1~8_combout\ & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X22_Y26_N12
\unidade[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[2]~2_combout\ = (\Add1~2_combout\ & ((\aux[2]~0_combout\ & (!\unidade[1]~1\)) # (!\aux[2]~0_combout\ & ((\unidade[1]~1\) # (GND))))) # (!\Add1~2_combout\ & ((\aux[2]~0_combout\ & (\unidade[1]~1\ & VCC)) # (!\aux[2]~0_combout\ & 
-- (!\unidade[1]~1\))))
-- \unidade[2]~3\ = CARRY((\Add1~2_combout\ & ((!\unidade[1]~1\) # (!\aux[2]~0_combout\))) # (!\Add1~2_combout\ & (!\aux[2]~0_combout\ & !\unidade[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \aux[2]~0_combout\,
	datad => VCC,
	cin => \unidade[1]~1\,
	combout => \unidade[2]~2_combout\,
	cout => \unidade[2]~3\);

-- Location: LCCOMB_X22_Y26_N14
\unidade[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[3]~4_combout\ = ((\Add2~0_combout\ $ (\aux[3]~2_combout\ $ (\unidade[2]~3\)))) # (GND)
-- \unidade[3]~5\ = CARRY((\Add2~0_combout\ & (\aux[3]~2_combout\ & !\unidade[2]~3\)) # (!\Add2~0_combout\ & ((\aux[3]~2_combout\) # (!\unidade[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \aux[3]~2_combout\,
	datad => VCC,
	cin => \unidade[2]~3\,
	combout => \unidade[3]~4_combout\,
	cout => \unidade[3]~5\);

-- Location: LCCOMB_X22_Y26_N16
\unidade[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[4]~6_combout\ = (\aux[4]~4_combout\ & ((\Add2~2_combout\ & (!\unidade[3]~5\)) # (!\Add2~2_combout\ & (\unidade[3]~5\ & VCC)))) # (!\aux[4]~4_combout\ & ((\Add2~2_combout\ & ((\unidade[3]~5\) # (GND))) # (!\Add2~2_combout\ & (!\unidade[3]~5\))))
-- \unidade[4]~7\ = CARRY((\aux[4]~4_combout\ & (\Add2~2_combout\ & !\unidade[3]~5\)) # (!\aux[4]~4_combout\ & ((\Add2~2_combout\) # (!\unidade[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[4]~4_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \unidade[3]~5\,
	combout => \unidade[4]~6_combout\,
	cout => \unidade[4]~7\);

-- Location: LCCOMB_X22_Y26_N18
\unidade[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[5]~8_combout\ = ((\aux[5]~6_combout\ $ (\Add2~4_combout\ $ (\unidade[4]~7\)))) # (GND)
-- \unidade[5]~9\ = CARRY((\aux[5]~6_combout\ & ((!\unidade[4]~7\) # (!\Add2~4_combout\))) # (!\aux[5]~6_combout\ & (!\Add2~4_combout\ & !\unidade[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~6_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \unidade[4]~7\,
	combout => \unidade[5]~8_combout\,
	cout => \unidade[5]~9\);

-- Location: LCCOMB_X20_Y23_N30
\Div1|auto_generated|divider|quotient[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[5]~7_combout\ = (\Add0~0_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)) # (!\Add0~0_combout\ & ((\Div1|auto_generated|divider|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|op_1~10_combout\,
	datad => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[5]~7_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~9\ & (\Div1|auto_generated|divider|quotient[5]~7_combout\ $ ((!\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~9\ & ((\Div1|auto_generated|divider|quotient[5]~7_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)) # 
-- (GND)))
-- \Add1~11\ = CARRY((\Div1|auto_generated|divider|quotient[5]~7_combout\ $ (!\Div1|auto_generated|divider|_~0_combout\)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[5]~7_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X21_Y26_N22
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~10_combout\ & ((\Add1~6_combout\ & (\Add2~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add2~5\)))) # (!\Add1~10_combout\ & ((\Add1~6_combout\ & (!\Add2~5\)) # (!\Add1~6_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~10_combout\ & (!\Add1~6_combout\ & !\Add2~5\)) # (!\Add1~10_combout\ & ((!\Add2~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X22_Y26_N20
\unidade[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[6]~10_combout\ = (\aux[6]~8_combout\ & ((\Add2~6_combout\ & (!\unidade[5]~9\)) # (!\Add2~6_combout\ & (\unidade[5]~9\ & VCC)))) # (!\aux[6]~8_combout\ & ((\Add2~6_combout\ & ((\unidade[5]~9\) # (GND))) # (!\Add2~6_combout\ & (!\unidade[5]~9\))))
-- \unidade[6]~11\ = CARRY((\aux[6]~8_combout\ & (\Add2~6_combout\ & !\unidade[5]~9\)) # (!\aux[6]~8_combout\ & ((\Add2~6_combout\) # (!\unidade[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[6]~8_combout\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \unidade[5]~9\,
	combout => \unidade[6]~10_combout\,
	cout => \unidade[6]~11\);

-- Location: LCCOMB_X19_Y25_N2
\Div1|auto_generated|divider|quotient[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[6]~6_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|op_1~12_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[6]~6_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add1~11\ & ((\Div1|auto_generated|divider|quotient[6]~6_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~11\ & (\Div1|auto_generated|divider|quotient[6]~6_combout\ $ (\Div1|auto_generated|divider|_~0_combout\ $ 
-- (VCC))))
-- \Add1~13\ = CARRY((!\Add1~11\ & (\Div1|auto_generated|divider|quotient[6]~6_combout\ $ (\Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[6]~6_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y26_N24
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Add1~12_combout\ $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Add1~12_combout\ & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\Add1~12_combout\ & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X22_Y26_N22
\unidade[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[7]~12_combout\ = ((\aux[7]~10_combout\ $ (\Add2~8_combout\ $ (\unidade[6]~11\)))) # (GND)
-- \unidade[7]~13\ = CARRY((\aux[7]~10_combout\ & ((!\unidade[6]~11\) # (!\Add2~8_combout\))) # (!\aux[7]~10_combout\ & (!\Add2~8_combout\ & !\unidade[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[7]~10_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \unidade[6]~11\,
	combout => \unidade[7]~12_combout\,
	cout => \unidade[7]~13\);

-- Location: LCCOMB_X22_Y26_N0
\Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~1_combout\ = (!\unidade[5]~8_combout\ & (!\unidade[6]~10_combout\ & (!\unidade[7]~12_combout\ & !\unidade[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[5]~8_combout\,
	datab => \unidade[6]~10_combout\,
	datac => \unidade[7]~12_combout\,
	datad => \unidade[4]~6_combout\,
	combout => \Equal10~1_combout\);

-- Location: LCCOMB_X20_Y24_N2
\Div1|auto_generated|divider|quotient[8]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[8]~4_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Div1|auto_generated|divider|op_1~16_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[8]~4_combout\);

-- Location: LCCOMB_X19_Y25_N16
\Div1|auto_generated|divider|quotient[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[7]~5_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~14_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|quotient[7]~5_combout\);

-- Location: LCCOMB_X20_Y25_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add1~13\ & (\Div1|auto_generated|divider|quotient[7]~5_combout\ $ ((!\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~13\ & ((\Div1|auto_generated|divider|quotient[7]~5_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)) # 
-- (GND)))
-- \Add1~15\ = CARRY((\Div1|auto_generated|divider|quotient[7]~5_combout\ $ (!\Div1|auto_generated|divider|_~0_combout\)) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[7]~5_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X20_Y25_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add1~15\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[8]~4_combout\)))) # (!\Add1~15\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[8]~4_combout\ $ 
-- (VCC))))
-- \Add1~17\ = CARRY((!\Add1~15\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|quotient[8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|quotient[8]~4_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X21_Y26_N26
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~14_combout\ & ((\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\)))) # (!\Add1~14_combout\ & ((\Add1~10_combout\ & (!\Add2~9\)) # (!\Add1~10_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\Add1~14_combout\ & (!\Add1~10_combout\ & !\Add2~9\)) # (!\Add1~14_combout\ & ((!\Add2~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y26_N28
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add1~16_combout\ $ (\Add1~12_combout\ $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add1~16_combout\ & ((\Add1~12_combout\) # (!\Add2~11\))) # (!\Add1~16_combout\ & (\Add1~12_combout\ & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X22_Y26_N24
\unidade[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[8]~14_combout\ = (\Add2~10_combout\ & ((\aux[8]~12_combout\ & (!\unidade[7]~13\)) # (!\aux[8]~12_combout\ & ((\unidade[7]~13\) # (GND))))) # (!\Add2~10_combout\ & ((\aux[8]~12_combout\ & (\unidade[7]~13\ & VCC)) # (!\aux[8]~12_combout\ & 
-- (!\unidade[7]~13\))))
-- \unidade[8]~15\ = CARRY((\Add2~10_combout\ & ((!\unidade[7]~13\) # (!\aux[8]~12_combout\))) # (!\Add2~10_combout\ & (!\aux[8]~12_combout\ & !\unidade[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \aux[8]~12_combout\,
	datad => VCC,
	cin => \unidade[7]~13\,
	combout => \unidade[8]~14_combout\,
	cout => \unidade[8]~15\);

-- Location: LCCOMB_X22_Y26_N26
\unidade[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[9]~16_combout\ = ((\aux[9]~14_combout\ $ (\Add2~12_combout\ $ (\unidade[8]~15\)))) # (GND)
-- \unidade[9]~17\ = CARRY((\aux[9]~14_combout\ & ((!\unidade[8]~15\) # (!\Add2~12_combout\))) # (!\aux[9]~14_combout\ & (!\Add2~12_combout\ & !\unidade[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[9]~14_combout\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \unidade[8]~15\,
	combout => \unidade[9]~16_combout\,
	cout => \unidade[9]~17\);

-- Location: LCCOMB_X22_Y26_N2
\Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~2_combout\ = (!\unidade[9]~16_combout\ & !\unidade[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidade[9]~16_combout\,
	datad => \unidade[8]~14_combout\,
	combout => \Equal10~2_combout\);

-- Location: LCCOMB_X20_Y24_N14
\Div1|auto_generated|divider|quotient[10]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[10]~2_combout\ = (\Add0~0_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)) # (!\Add0~0_combout\ & ((\Div1|auto_generated|divider|op_1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Add0~0_combout\,
	datad => \Div1|auto_generated|divider|op_1~20_combout\,
	combout => \Div1|auto_generated|divider|quotient[10]~2_combout\);

-- Location: LCCOMB_X20_Y24_N8
\Div1|auto_generated|divider|quotient[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[9]~3_combout\ = (\Add0~0_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)) # (!\Add0~0_combout\ & ((\Div1|auto_generated|divider|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|op_1~18_combout\,
	datac => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[9]~3_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add1~17\ & (\Div1|auto_generated|divider|quotient[9]~3_combout\ $ ((!\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~17\ & ((\Div1|auto_generated|divider|quotient[9]~3_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)) # 
-- (GND)))
-- \Add1~19\ = CARRY((\Div1|auto_generated|divider|quotient[9]~3_combout\ $ (!\Div1|auto_generated|divider|_~0_combout\)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[9]~3_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X20_Y25_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add1~19\ & ((\Div1|auto_generated|divider|quotient[10]~2_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~19\ & (\Div1|auto_generated|divider|quotient[10]~2_combout\ $ (\Div1|auto_generated|divider|_~0_combout\ $ 
-- (VCC))))
-- \Add1~21\ = CARRY((!\Add1~19\ & (\Div1|auto_generated|divider|quotient[10]~2_combout\ $ (\Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[10]~2_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X21_Y26_N30
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add1~14_combout\ & ((\Add1~18_combout\ & (\Add2~13\ & VCC)) # (!\Add1~18_combout\ & (!\Add2~13\)))) # (!\Add1~14_combout\ & ((\Add1~18_combout\ & (!\Add2~13\)) # (!\Add1~18_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\Add1~14_combout\ & (!\Add1~18_combout\ & !\Add2~13\)) # (!\Add1~14_combout\ & ((!\Add2~13\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X21_Y25_N0
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Add1~16_combout\ $ (\Add1~20_combout\ $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Add1~16_combout\ & ((\Add1~20_combout\) # (!\Add2~15\))) # (!\Add1~16_combout\ & (\Add1~20_combout\ & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X22_Y26_N28
\unidade[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[10]~18_combout\ = (\aux[10]~16_combout\ & ((\Add2~14_combout\ & (!\unidade[9]~17\)) # (!\Add2~14_combout\ & (\unidade[9]~17\ & VCC)))) # (!\aux[10]~16_combout\ & ((\Add2~14_combout\ & ((\unidade[9]~17\) # (GND))) # (!\Add2~14_combout\ & 
-- (!\unidade[9]~17\))))
-- \unidade[10]~19\ = CARRY((\aux[10]~16_combout\ & (\Add2~14_combout\ & !\unidade[9]~17\)) # (!\aux[10]~16_combout\ & ((\Add2~14_combout\) # (!\unidade[9]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[10]~16_combout\,
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \unidade[9]~17\,
	combout => \unidade[10]~18_combout\,
	cout => \unidade[10]~19\);

-- Location: LCCOMB_X22_Y26_N30
\unidade[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[11]~20_combout\ = ((\Add2~16_combout\ $ (\aux[11]~18_combout\ $ (\unidade[10]~19\)))) # (GND)
-- \unidade[11]~21\ = CARRY((\Add2~16_combout\ & (\aux[11]~18_combout\ & !\unidade[10]~19\)) # (!\Add2~16_combout\ & ((\aux[11]~18_combout\) # (!\unidade[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \aux[11]~18_combout\,
	datad => VCC,
	cin => \unidade[10]~19\,
	combout => \unidade[11]~20_combout\,
	cout => \unidade[11]~21\);

-- Location: LCCOMB_X22_Y26_N4
\Equal10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~3_combout\ = (\Equal10~1_combout\ & (\Equal10~2_combout\ & (!\unidade[11]~20_combout\ & !\unidade[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~1_combout\,
	datab => \Equal10~2_combout\,
	datac => \unidade[11]~20_combout\,
	datad => \unidade[10]~18_combout\,
	combout => \Equal10~3_combout\);

-- Location: LCCOMB_X20_Y24_N10
\Div1|auto_generated|divider|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|_~1_combout\ = (!\Add0~0_combout\ & \Div1|auto_generated|divider|op_1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Div1|auto_generated|divider|op_1~28_combout\,
	combout => \Div1|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X20_Y24_N20
\Div1|auto_generated|divider|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|_~2_combout\ = (!\Add0~0_combout\ & \Div1|auto_generated|divider|op_1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Div1|auto_generated|divider|op_1~26_combout\,
	combout => \Div1|auto_generated|divider|_~2_combout\);

-- Location: LCCOMB_X17_Y25_N28
\Div1|auto_generated|divider|quotient[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[12]~0_combout\ = (\Add0~0_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\Add0~0_combout\ & ((\Div1|auto_generated|divider|op_1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|op_1~24_combout\,
	datac => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[12]~0_combout\);

-- Location: LCCOMB_X16_Y24_N26
\Div1|auto_generated|divider|quotient[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[11]~1_combout\ = (\Add0~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))) # (!\Add0~0_combout\ & (\Div1|auto_generated|divider|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~22_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Add0~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[11]~1_combout\);

-- Location: LCCOMB_X20_Y25_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add1~21\ & (\Div1|auto_generated|divider|quotient[11]~1_combout\ $ ((!\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~21\ & ((\Div1|auto_generated|divider|quotient[11]~1_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)) 
-- # (GND)))
-- \Add1~23\ = CARRY((\Div1|auto_generated|divider|quotient[11]~1_combout\ $ (!\Div1|auto_generated|divider|_~0_combout\)) # (!\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[11]~1_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X20_Y25_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add1~23\ & ((\Div1|auto_generated|divider|quotient[12]~0_combout\ $ (\Div1|auto_generated|divider|_~0_combout\)))) # (!\Add1~23\ & (\Div1|auto_generated|divider|quotient[12]~0_combout\ $ (\Div1|auto_generated|divider|_~0_combout\ $ 
-- (VCC))))
-- \Add1~25\ = CARRY((!\Add1~23\ & (\Div1|auto_generated|divider|quotient[12]~0_combout\ $ (\Div1|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[12]~0_combout\,
	datab => \Div1|auto_generated|divider|_~0_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X20_Y25_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add1~25\ & (\Div1|auto_generated|divider|_~0_combout\ $ ((!\Div1|auto_generated|divider|_~2_combout\)))) # (!\Add1~25\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|_~2_combout\)) # (GND)))
-- \Add1~27\ = CARRY((\Div1|auto_generated|divider|_~0_combout\ $ (!\Div1|auto_generated|divider|_~2_combout\)) # (!\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|_~2_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X20_Y25_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Add1~27\ & ((\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|_~1_combout\)))) # (!\Add1~27\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|_~1_combout\ $ (VCC))))
-- \Add1~29\ = CARRY((!\Add1~27\ & (\Div1|auto_generated|divider|_~0_combout\ $ (\Div1|auto_generated|divider|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|_~0_combout\,
	datab => \Div1|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X20_Y25_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add1~22_combout\ & ((\Add1~18_combout\ & (\Add2~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add2~17\)))) # (!\Add1~22_combout\ & ((\Add1~18_combout\ & (!\Add2~17\)) # (!\Add1~18_combout\ & ((\Add2~17\) # (GND)))))
-- \Add2~19\ = CARRY((\Add1~22_combout\ & (!\Add1~18_combout\ & !\Add2~17\)) # (!\Add1~22_combout\ & ((!\Add2~17\) # (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X21_Y25_N4
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = ((\Add1~24_combout\ $ (\Add1~20_combout\ $ (!\Add2~19\)))) # (GND)
-- \Add2~21\ = CARRY((\Add1~24_combout\ & ((\Add1~20_combout\) # (!\Add2~19\))) # (!\Add1~24_combout\ & (\Add1~20_combout\ & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X21_Y25_N6
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add1~26_combout\ & ((\Add1~22_combout\ & (\Add2~21\ & VCC)) # (!\Add1~22_combout\ & (!\Add2~21\)))) # (!\Add1~26_combout\ & ((\Add1~22_combout\ & (!\Add2~21\)) # (!\Add1~22_combout\ & ((\Add2~21\) # (GND)))))
-- \Add2~23\ = CARRY((\Add1~26_combout\ & (!\Add1~22_combout\ & !\Add2~21\)) # (!\Add1~26_combout\ & ((!\Add2~21\) # (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X21_Y25_N8
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add1~24_combout\ $ (\Add1~28_combout\ $ (!\Add2~23\)))) # (GND)
-- \Add2~25\ = CARRY((\Add1~24_combout\ & ((\Add1~28_combout\) # (!\Add2~23\))) # (!\Add1~24_combout\ & (\Add1~28_combout\ & !\Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~28_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X21_Y25_N10
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add1~26_combout\ & ((\Add1~30_combout\ & (\Add2~25\ & VCC)) # (!\Add1~30_combout\ & (!\Add2~25\)))) # (!\Add1~26_combout\ & ((\Add1~30_combout\ & (!\Add2~25\)) # (!\Add1~30_combout\ & ((\Add2~25\) # (GND)))))
-- \Add2~27\ = CARRY((\Add1~26_combout\ & (!\Add1~30_combout\ & !\Add2~25\)) # (!\Add1~26_combout\ & ((!\Add2~25\) # (!\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \Add1~30_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X21_Y25_N12
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add1~28_combout\ & (\Add2~27\ $ (GND))) # (!\Add1~28_combout\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Add1~28_combout\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X22_Y25_N0
\unidade[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[12]~22_combout\ = (\Add2~18_combout\ & ((\aux[12]~20_combout\ & (!\unidade[11]~21\)) # (!\aux[12]~20_combout\ & ((\unidade[11]~21\) # (GND))))) # (!\Add2~18_combout\ & ((\aux[12]~20_combout\ & (\unidade[11]~21\ & VCC)) # (!\aux[12]~20_combout\ & 
-- (!\unidade[11]~21\))))
-- \unidade[12]~23\ = CARRY((\Add2~18_combout\ & ((!\unidade[11]~21\) # (!\aux[12]~20_combout\))) # (!\Add2~18_combout\ & (!\aux[12]~20_combout\ & !\unidade[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \aux[12]~20_combout\,
	datad => VCC,
	cin => \unidade[11]~21\,
	combout => \unidade[12]~22_combout\,
	cout => \unidade[12]~23\);

-- Location: LCCOMB_X22_Y25_N2
\unidade[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[13]~24_combout\ = ((\aux[13]~22_combout\ $ (\Add2~20_combout\ $ (\unidade[12]~23\)))) # (GND)
-- \unidade[13]~25\ = CARRY((\aux[13]~22_combout\ & ((!\unidade[12]~23\) # (!\Add2~20_combout\))) # (!\aux[13]~22_combout\ & (!\Add2~20_combout\ & !\unidade[12]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[13]~22_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \unidade[12]~23\,
	combout => \unidade[13]~24_combout\,
	cout => \unidade[13]~25\);

-- Location: LCCOMB_X22_Y25_N4
\unidade[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[14]~26_combout\ = (\aux[14]~24_combout\ & ((\Add2~22_combout\ & (!\unidade[13]~25\)) # (!\Add2~22_combout\ & (\unidade[13]~25\ & VCC)))) # (!\aux[14]~24_combout\ & ((\Add2~22_combout\ & ((\unidade[13]~25\) # (GND))) # (!\Add2~22_combout\ & 
-- (!\unidade[13]~25\))))
-- \unidade[14]~27\ = CARRY((\aux[14]~24_combout\ & (\Add2~22_combout\ & !\unidade[13]~25\)) # (!\aux[14]~24_combout\ & ((\Add2~22_combout\) # (!\unidade[13]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aux[14]~24_combout\,
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \unidade[13]~25\,
	combout => \unidade[14]~26_combout\,
	cout => \unidade[14]~27\);

-- Location: LCCOMB_X22_Y25_N6
\unidade[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[15]~28_combout\ = ((\Add2~24_combout\ $ (\Add0~0_combout\ $ (!\unidade[14]~27\)))) # (GND)
-- \unidade[15]~29\ = CARRY((\Add2~24_combout\ & (!\Add0~0_combout\ & !\unidade[14]~27\)) # (!\Add2~24_combout\ & ((!\unidade[14]~27\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[14]~27\,
	combout => \unidade[15]~28_combout\,
	cout => \unidade[15]~29\);

-- Location: LCCOMB_X22_Y25_N8
\unidade[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[16]~30_combout\ = (\Add2~26_combout\ & ((\Add0~0_combout\ & ((\unidade[15]~29\) # (GND))) # (!\Add0~0_combout\ & (!\unidade[15]~29\)))) # (!\Add2~26_combout\ & ((\Add0~0_combout\ & (!\unidade[15]~29\)) # (!\Add0~0_combout\ & (\unidade[15]~29\ & 
-- VCC))))
-- \unidade[16]~31\ = CARRY((\Add2~26_combout\ & ((\Add0~0_combout\) # (!\unidade[15]~29\))) # (!\Add2~26_combout\ & (\Add0~0_combout\ & !\unidade[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[15]~29\,
	combout => \unidade[16]~30_combout\,
	cout => \unidade[16]~31\);

-- Location: LCCOMB_X22_Y25_N10
\unidade[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[17]~32_combout\ = ((\Add2~28_combout\ $ (\Add0~0_combout\ $ (!\unidade[16]~31\)))) # (GND)
-- \unidade[17]~33\ = CARRY((\Add2~28_combout\ & (!\Add0~0_combout\ & !\unidade[16]~31\)) # (!\Add2~28_combout\ & ((!\unidade[16]~31\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[16]~31\,
	combout => \unidade[17]~32_combout\,
	cout => \unidade[17]~33\);

-- Location: LCCOMB_X21_Y25_N14
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add1~30_combout\ & (!\Add2~29\)) # (!\Add1~30_combout\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X21_Y25_N16
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = !\Add2~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~31\,
	combout => \Add2~32_combout\);

-- Location: LCCOMB_X22_Y25_N12
\unidade[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[18]~34_combout\ = (\Add2~30_combout\ & ((\Add0~0_combout\ & ((\unidade[17]~33\) # (GND))) # (!\Add0~0_combout\ & (!\unidade[17]~33\)))) # (!\Add2~30_combout\ & ((\Add0~0_combout\ & (!\unidade[17]~33\)) # (!\Add0~0_combout\ & (\unidade[17]~33\ & 
-- VCC))))
-- \unidade[18]~35\ = CARRY((\Add2~30_combout\ & ((\Add0~0_combout\) # (!\unidade[17]~33\))) # (!\Add2~30_combout\ & (\Add0~0_combout\ & !\unidade[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[17]~33\,
	combout => \unidade[18]~34_combout\,
	cout => \unidade[18]~35\);

-- Location: LCCOMB_X22_Y25_N14
\unidade[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[19]~36_combout\ = ((\Add2~32_combout\ $ (\Add0~0_combout\ $ (!\unidade[18]~35\)))) # (GND)
-- \unidade[19]~37\ = CARRY((\Add2~32_combout\ & (!\Add0~0_combout\ & !\unidade[18]~35\)) # (!\Add2~32_combout\ & ((!\unidade[18]~35\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[18]~35\,
	combout => \unidade[19]~36_combout\,
	cout => \unidade[19]~37\);

-- Location: LCCOMB_X22_Y25_N28
\Equal10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~5_combout\ = (!\unidade[17]~32_combout\ & (!\unidade[16]~30_combout\ & (!\unidade[19]~36_combout\ & !\unidade[18]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[17]~32_combout\,
	datab => \unidade[16]~30_combout\,
	datac => \unidade[19]~36_combout\,
	datad => \unidade[18]~34_combout\,
	combout => \Equal10~5_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Equal10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~4_combout\ = (!\unidade[15]~28_combout\ & (!\unidade[13]~24_combout\ & (!\unidade[14]~26_combout\ & !\unidade[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[15]~28_combout\,
	datab => \unidade[13]~24_combout\,
	datac => \unidade[14]~26_combout\,
	datad => \unidade[12]~22_combout\,
	combout => \Equal10~4_combout\);

-- Location: LCCOMB_X22_Y25_N16
\unidade[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[20]~38_combout\ = (\Add0~0_combout\ & (!\unidade[19]~37\)) # (!\Add0~0_combout\ & (\unidade[19]~37\ & VCC))
-- \unidade[20]~39\ = CARRY((\Add0~0_combout\ & !\unidade[19]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[19]~37\,
	combout => \unidade[20]~38_combout\,
	cout => \unidade[20]~39\);

-- Location: LCCOMB_X22_Y25_N18
\unidade[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[21]~40_combout\ = (\Add0~0_combout\ & (\unidade[20]~39\ $ (GND))) # (!\Add0~0_combout\ & ((GND) # (!\unidade[20]~39\)))
-- \unidade[21]~41\ = CARRY((!\unidade[20]~39\) # (!\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[20]~39\,
	combout => \unidade[21]~40_combout\,
	cout => \unidade[21]~41\);

-- Location: LCCOMB_X22_Y25_N20
\unidade[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \unidade[22]~42_combout\ = (\Add0~0_combout\ & (!\unidade[21]~41\)) # (!\Add0~0_combout\ & (\unidade[21]~41\ & VCC))
-- \unidade[22]~43\ = CARRY((\Add0~0_combout\ & !\unidade[21]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \unidade[21]~41\,
	combout => \unidade[22]~42_combout\,
	cout => \unidade[22]~43\);

-- Location: LCCOMB_X22_Y25_N22
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \Add0~0_combout\ $ (!\unidade[22]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	cin => \unidade[22]~43\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X22_Y25_N24
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\unidade[22]~42_combout\ & (!\unidade[21]~40_combout\ & (!\Add3~0_combout\ & !\unidade[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[22]~42_combout\,
	datab => \unidade[21]~40_combout\,
	datac => \Add3~0_combout\,
	datad => \unidade[20]~38_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Equal10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~6_combout\ = (\Equal10~3_combout\ & (\Equal10~5_combout\ & (\Equal10~4_combout\ & \Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~3_combout\,
	datab => \Equal10~5_combout\,
	datac => \Equal10~4_combout\,
	datad => \Equal10~0_combout\,
	combout => \Equal10~6_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Equal10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~7_combout\ = (\Equal10~6_combout\ & !\unidade[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~6_combout\,
	datad => \unidade[3]~4_combout\,
	combout => \Equal10~7_combout\);

-- Location: LCCOMB_X23_Y26_N2
\WideOr9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\Equal10~7_combout\ & ((\unidade[1]~0_combout\ & (\unidade[2]~2_combout\ & \i_IN[0]~input_o\)) # (!\unidade[1]~0_combout\ & (!\unidade[2]~2_combout\ & !\i_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \Equal10~7_combout\,
	datac => \unidade[2]~2_combout\,
	datad => \i_IN[0]~input_o\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Equal10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~8_combout\ = (!\unidade[2]~2_combout\ & !\unidade[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[2]~2_combout\,
	datad => \unidade[1]~0_combout\,
	combout => \Equal10~8_combout\);

-- Location: LCCOMB_X23_Y26_N6
\Equal19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (\Equal10~6_combout\ & (\i_IN[0]~input_o\ & (\Equal10~8_combout\ & \unidade[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~6_combout\,
	datab => \i_IN[0]~input_o\,
	datac => \Equal10~8_combout\,
	datad => \unidade[3]~4_combout\,
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X23_Y26_N8
\Equal10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~9_combout\ = (\Equal10~6_combout\ & (!\i_IN[0]~input_o\ & !\unidade[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~6_combout\,
	datab => \i_IN[0]~input_o\,
	datad => \unidade[3]~4_combout\,
	combout => \Equal10~9_combout\);

-- Location: LCCOMB_X23_Y26_N26
\Equal18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\Equal10~6_combout\ & (!\i_IN[0]~input_o\ & (\Equal10~8_combout\ & \unidade[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~6_combout\,
	datab => \i_IN[0]~input_o\,
	datac => \Equal10~8_combout\,
	datad => \unidade[3]~4_combout\,
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X23_Y26_N28
\WideNor1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor1~1_combout\ = (!\Equal18~0_combout\ & (((!\unidade[1]~0_combout\ & \unidade[2]~2_combout\)) # (!\Equal10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \Equal10~9_combout\,
	datac => \Equal18~0_combout\,
	datad => \unidade[2]~2_combout\,
	combout => \WideNor1~1_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Equal11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\Equal10~6_combout\ & (\i_IN[0]~input_o\ & (\Equal10~8_combout\ & !\unidade[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~6_combout\,
	datab => \i_IN[0]~input_o\,
	datac => \Equal10~8_combout\,
	datad => \unidade[3]~4_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X23_Y26_N12
\WideNor1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (\Equal10~7_combout\ & ((\i_IN[0]~input_o\) # ((!\unidade[1]~0_combout\ & \unidade[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \i_IN[0]~input_o\,
	datac => \unidade[2]~2_combout\,
	datad => \Equal10~7_combout\,
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X23_Y26_N16
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\Equal11~0_combout\ & ((\Equal19~0_combout\) # ((\WideNor1~0_combout\) # (!\WideNor1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \WideNor1~1_combout\,
	datac => \Equal11~0_combout\,
	datad => \WideNor1~0_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y26_N16
WideOr9 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\WideOr9~0_combout\) # (!\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datac => \WideOr4~0_combout\,
	combout => \WideOr9~combout\);

-- Location: LCCOMB_X23_Y26_N22
\WideOr8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~2_combout\ = (!\unidade[3]~4_combout\ & (!\unidade[2]~2_combout\ & (\Equal10~6_combout\ & \unidade[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[3]~4_combout\,
	datab => \unidade[2]~2_combout\,
	datac => \Equal10~6_combout\,
	datad => \unidade[1]~0_combout\,
	combout => \WideOr8~2_combout\);

-- Location: LCCOMB_X24_Y26_N2
WideOr8 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\WideOr8~2_combout\) # (!\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr8~2_combout\,
	datac => \WideOr4~0_combout\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X23_Y26_N18
\WideNor1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor1~2_combout\ = ((\unidade[1]~0_combout\ $ (\i_IN[0]~input_o\)) # (!\unidade[2]~2_combout\)) # (!\Equal10~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \Equal10~7_combout\,
	datac => \unidade[2]~2_combout\,
	datad => \i_IN[0]~input_o\,
	combout => \WideNor1~2_combout\);

-- Location: LCCOMB_X24_Y26_N12
WideOr6 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (!\WideOr4~0_combout\) # (!\WideNor1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor1~2_combout\,
	datac => \WideOr4~0_combout\,
	combout => \WideOr6~combout\);

-- Location: LCCOMB_X23_Y26_N20
\WideNor1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor1~3_combout\ = (\Equal19~0_combout\) # ((\WideNor1~0_combout\) # (!\WideNor1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \WideNor1~1_combout\,
	datad => \WideNor1~0_combout\,
	combout => \WideNor1~3_combout\);

-- Location: LCCOMB_X23_Y26_N14
\w_BCD0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_BCD0~0_combout\ = ((\unidade[1]~0_combout\ & (\Equal10~9_combout\ & !\unidade[2]~2_combout\))) # (!\WideNor1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \WideNor1~3_combout\,
	datac => \Equal10~9_combout\,
	datad => \unidade[2]~2_combout\,
	combout => \w_BCD0~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\unidade[2]~2_combout\ & (\Equal10~7_combout\ & (\unidade[1]~0_combout\ $ (\i_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \i_IN[0]~input_o\,
	datac => \unidade[2]~2_combout\,
	datad => \Equal10~7_combout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y26_N10
WideOr5 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\WideOr5~0_combout\) # ((!\WideNor1~0_combout\ & (!\Equal19~0_combout\ & \WideNor1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor1~0_combout\,
	datab => \WideOr5~0_combout\,
	datac => \Equal19~0_combout\,
	datad => \WideNor1~1_combout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X23_Y26_N4
WideOr4 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ((!\unidade[1]~0_combout\ & (\Equal10~9_combout\ & \unidade[2]~2_combout\))) # (!\WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade[1]~0_combout\,
	datab => \WideOr4~0_combout\,
	datac => \Equal10~9_combout\,
	datad => \unidade[2]~2_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X21_Y25_N20
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add1~24_combout\ & (!\Add1~28_combout\ & (!\Add1~26_combout\ & !\Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~28_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~30_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X21_Y25_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add1~18_combout\ & (!\Add1~22_combout\ & (!\Add1~16_combout\ & !\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~20_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X21_Y26_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add1~10_combout\ & (!\Add1~12_combout\ & (!\Add1~8_combout\ & !\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~12_combout\,
	datac => \Add1~8_combout\,
	datad => \Add1~14_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y26_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & !\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~6_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X22_Y28_N8
WideOr3 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\Equal0~3_combout\ & ((\Add1~2_combout\ & (\Add1~4_combout\ & \Add1~0_combout\)) # (!\Add1~2_combout\ & (!\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X22_Y28_N10
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\Add1~4_combout\ & (\Equal0~3_combout\ & ((\Add1~2_combout\) # (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y26_N12
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Add1~6_combout\ & (!\Add1~2_combout\ & !\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \Add1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X21_Y26_N6
\Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X22_Y28_N22
\WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (\Add1~0_combout\) # (((!\Add1~2_combout\ & \Add1~4_combout\)) # (!\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X22_Y28_N12
\WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (\Equal0~3_combout\ & ((\Add1~0_combout\) # ((!\Add1~2_combout\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X21_Y26_N0
WideOr1 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ((\Equal8~1_combout\ & (!\Add1~0_combout\)) # (!\Equal8~1_combout\ & ((!\WideNor0~0_combout\)))) # (!\WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \WideNor0~1_combout\,
	datac => \Add1~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X22_Y28_N0
\WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = ((\Add1~2_combout\ & ((!\Add1~0_combout\) # (!\Add1~4_combout\))) # (!\Add1~2_combout\ & (\Add1~4_combout\ $ (!\Add1~0_combout\)))) # (!\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X22_Y28_N26
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Add1~2_combout\ & (!\Add1~4_combout\ & (!\Add1~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X22_Y28_N4
\w_BCD1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_BCD1~0_combout\ = (\Add1~4_combout\ & (\Equal0~3_combout\ & (\Add1~2_combout\ $ (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \w_BCD1~0_combout\);

-- Location: LCCOMB_X22_Y28_N6
\w_BCD1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_BCD1~1_combout\ = (\Add1~2_combout\) # ((\Add1~4_combout\ $ (!\Add1~0_combout\)) # (!\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \w_BCD1~1_combout\);

-- Location: LCCOMB_X21_Y26_N10
\WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\Equal8~1_combout\) # ((\WideNor0~0_combout\) # (!\WideNor0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \WideNor0~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X17_Y26_N26
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X17_Y26_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_o_BCD0(0) <= \o_BCD0[0]~output_o\;

ww_o_BCD0(1) <= \o_BCD0[1]~output_o\;

ww_o_BCD0(2) <= \o_BCD0[2]~output_o\;

ww_o_BCD0(3) <= \o_BCD0[3]~output_o\;

ww_o_BCD0(4) <= \o_BCD0[4]~output_o\;

ww_o_BCD0(5) <= \o_BCD0[5]~output_o\;

ww_o_BCD0(6) <= \o_BCD0[6]~output_o\;

ww_o_BCD0(7) <= \o_BCD0[7]~output_o\;

ww_o_BCD1(0) <= \o_BCD1[0]~output_o\;

ww_o_BCD1(1) <= \o_BCD1[1]~output_o\;

ww_o_BCD1(2) <= \o_BCD1[2]~output_o\;

ww_o_BCD1(3) <= \o_BCD1[3]~output_o\;

ww_o_BCD1(4) <= \o_BCD1[4]~output_o\;

ww_o_BCD1(5) <= \o_BCD1[5]~output_o\;

ww_o_BCD1(6) <= \o_BCD1[6]~output_o\;

ww_o_BCD1(7) <= \o_BCD1[7]~output_o\;

ww_o_BCD2(0) <= \o_BCD2[0]~output_o\;

ww_o_BCD2(1) <= \o_BCD2[1]~output_o\;

ww_o_BCD2(2) <= \o_BCD2[2]~output_o\;

ww_o_BCD2(3) <= \o_BCD2[3]~output_o\;

ww_o_BCD2(4) <= \o_BCD2[4]~output_o\;

ww_o_BCD2(5) <= \o_BCD2[5]~output_o\;

ww_o_BCD2(6) <= \o_BCD2[6]~output_o\;

ww_o_BCD2(7) <= \o_BCD2[7]~output_o\;
END structure;


