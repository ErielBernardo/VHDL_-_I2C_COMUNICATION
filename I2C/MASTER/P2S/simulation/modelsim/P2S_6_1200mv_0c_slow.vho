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

-- DATE "12/03/2018 04:34:58"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
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

ENTITY 	P2S IS
    PORT (
	i_SCL : IN std_logic;
	i_RST : IN std_logic;
	i_DATA : IN std_logic_vector(15 DOWNTO 0);
	o_CTRL_P2S : OUT std_logic;
	i_ENABLE_P2S : IN std_logic;
	o_SDA : OUT std_logic
	);
END P2S;

-- Design Ports Information
-- o_CTRL_P2S	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SDA	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE_P2S	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[15]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[13]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[12]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[11]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[10]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[8]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P2S IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_SCL : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_CTRL_P2S : std_logic;
SIGNAL ww_i_ENABLE_P2S : std_logic;
SIGNAL ww_o_SDA : std_logic;
SIGNAL \i_SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_SDA~output_o\ : std_logic;
SIGNAL \o_CTRL_P2S~output_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \cont[31]~40_combout\ : std_logic;
SIGNAL \cont[0]~1_combout\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \i_ENABLE_P2S~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cont[0]~3_combout\ : std_logic;
SIGNAL \cont[0]~0_combout\ : std_logic;
SIGNAL \cont[0]~_emulated_q\ : std_logic;
SIGNAL \cont[0]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \cont~38_combout\ : std_logic;
SIGNAL \cont[1]~9_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \cont~37_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cont~36_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cont~35_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \cont~34_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cont~33_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \cont~32_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \cont~31_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \cont~30_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \cont~29_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \cont~28_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cont~27_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cont~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cont~25_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cont~24_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cont~23_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \cont~22_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cont~21_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cont~20_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cont~19_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cont~18_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cont~17_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \cont~16_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cont~15_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \cont~14_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \cont~13_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \cont~12_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \cont~11_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \cont~10_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \cont~7_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \cont~39_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA[15]~input_o\ : std_logic;
SIGNAL \process_0~10clkctrl_outclk\ : std_logic;
SIGNAL \o_SDA~1_combout\ : std_logic;
SIGNAL \i_DATA[14]~input_o\ : std_logic;
SIGNAL \w_REG[15]~17_combout\ : std_logic;
SIGNAL \i_DATA[13]~input_o\ : std_logic;
SIGNAL \w_REG[14]~21_combout\ : std_logic;
SIGNAL \i_DATA[12]~input_o\ : std_logic;
SIGNAL \w_REG[13]~25_combout\ : std_logic;
SIGNAL \i_DATA[11]~input_o\ : std_logic;
SIGNAL \w_REG[12]~29_combout\ : std_logic;
SIGNAL \i_DATA[10]~input_o\ : std_logic;
SIGNAL \w_REG[11]~33_combout\ : std_logic;
SIGNAL \i_DATA[9]~input_o\ : std_logic;
SIGNAL \w_REG[10]~37_combout\ : std_logic;
SIGNAL \i_DATA[8]~input_o\ : std_logic;
SIGNAL \w_REG[9]~41_combout\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \w_REG[8]~45_combout\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \w_REG[7]~49_combout\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \w_REG[6]~53_combout\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \w_REG[5]~57_combout\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \w_REG[4]~61_combout\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \w_REG[3]~65_combout\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \w_REG[2]~69_combout\ : std_logic;
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \w_REG[1]~73_combout\ : std_logic;
SIGNAL \w_REG[1]~_emulated_q\ : std_logic;
SIGNAL \w_REG[1]~74_combout\ : std_logic;
SIGNAL \w_REG[2]~71_combout\ : std_logic;
SIGNAL \w_REG[2]~_emulated_q\ : std_logic;
SIGNAL \w_REG[2]~70_combout\ : std_logic;
SIGNAL \w_REG[3]~67_combout\ : std_logic;
SIGNAL \w_REG[3]~_emulated_q\ : std_logic;
SIGNAL \w_REG[3]~66_combout\ : std_logic;
SIGNAL \w_REG[4]~63_combout\ : std_logic;
SIGNAL \w_REG[4]~_emulated_q\ : std_logic;
SIGNAL \w_REG[4]~62_combout\ : std_logic;
SIGNAL \w_REG[5]~59_combout\ : std_logic;
SIGNAL \w_REG[5]~_emulated_q\ : std_logic;
SIGNAL \w_REG[5]~58_combout\ : std_logic;
SIGNAL \w_REG[6]~55_combout\ : std_logic;
SIGNAL \w_REG[6]~_emulated_q\ : std_logic;
SIGNAL \w_REG[6]~54_combout\ : std_logic;
SIGNAL \w_REG[7]~51_combout\ : std_logic;
SIGNAL \w_REG[7]~_emulated_q\ : std_logic;
SIGNAL \w_REG[7]~50_combout\ : std_logic;
SIGNAL \w_REG[8]~47_combout\ : std_logic;
SIGNAL \w_REG[8]~_emulated_q\ : std_logic;
SIGNAL \w_REG[8]~46_combout\ : std_logic;
SIGNAL \w_REG[9]~43_combout\ : std_logic;
SIGNAL \w_REG[9]~_emulated_q\ : std_logic;
SIGNAL \w_REG[9]~42_combout\ : std_logic;
SIGNAL \w_REG[10]~39_combout\ : std_logic;
SIGNAL \w_REG[10]~_emulated_q\ : std_logic;
SIGNAL \w_REG[10]~38_combout\ : std_logic;
SIGNAL \w_REG[11]~35_combout\ : std_logic;
SIGNAL \w_REG[11]~_emulated_q\ : std_logic;
SIGNAL \w_REG[11]~34_combout\ : std_logic;
SIGNAL \w_REG[12]~31_combout\ : std_logic;
SIGNAL \w_REG[12]~_emulated_q\ : std_logic;
SIGNAL \w_REG[12]~30_combout\ : std_logic;
SIGNAL \w_REG[13]~27_combout\ : std_logic;
SIGNAL \w_REG[13]~_emulated_q\ : std_logic;
SIGNAL \w_REG[13]~26_combout\ : std_logic;
SIGNAL \w_REG[14]~23_combout\ : std_logic;
SIGNAL \w_REG[14]~_emulated_q\ : std_logic;
SIGNAL \w_REG[14]~22_combout\ : std_logic;
SIGNAL \w_REG[15]~19_combout\ : std_logic;
SIGNAL \w_REG[15]~_emulated_q\ : std_logic;
SIGNAL \w_REG[15]~18_combout\ : std_logic;
SIGNAL \o_SDA~3_combout\ : std_logic;
SIGNAL \o_SDA~reg0_emulated_q\ : std_logic;
SIGNAL \o_SDA~2_combout\ : std_logic;
SIGNAL \o_SDA~enfeeder_combout\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \o_SDA~en_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~0_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~2_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~1_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~3_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~4_combout\ : std_logic;
SIGNAL \o_CTRL_P2S~reg0_q\ : std_logic;
SIGNAL cont : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_cont[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \ALT_INV_cont[1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~10clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_ENABLE_P2S~input_o\ : std_logic;
SIGNAL \ALT_INV_i_SCL~input_o\ : std_logic;

BEGIN

ww_i_SCL <= i_SCL;
ww_i_RST <= i_RST;
ww_i_DATA <= i_DATA;
o_CTRL_P2S <= ww_o_CTRL_P2S;
ww_i_ENABLE_P2S <= i_ENABLE_P2S;
o_SDA <= ww_o_SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_SCL~input_o\);

\process_0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~10_combout\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);
\ALT_INV_cont[0]~0_combout\ <= NOT \cont[0]~0_combout\;
\ALT_INV_process_0~10_combout\ <= NOT \process_0~10_combout\;
\ALT_INV_cont[1]~9_combout\ <= NOT \cont[1]~9_combout\;
\ALT_INV_process_0~10clkctrl_outclk\ <= NOT \process_0~10clkctrl_outclk\;
\ALT_INV_i_SCL~inputclkctrl_outclk\ <= NOT \i_SCL~inputclkctrl_outclk\;
\ALT_INV_i_ENABLE_P2S~input_o\ <= NOT \i_ENABLE_P2S~input_o\;
\ALT_INV_i_SCL~input_o\ <= NOT \i_SCL~input_o\;

-- Location: IOOBUF_X41_Y14_N23
\o_SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_SDA~2_combout\,
	oe => \o_SDA~en_q\,
	devoe => ww_devoe,
	o => \o_SDA~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\o_CTRL_P2S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_CTRL_P2S~reg0_q\,
	devoe => ww_devoe,
	o => \o_CTRL_P2S~output_o\);

-- Location: IOIBUF_X0_Y14_N8
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X32_Y17_N18
\cont[31]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[31]~40_combout\ = (\i_RST~input_o\ & \process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datac => \process_0~10_combout\,
	combout => \cont[31]~40_combout\);

-- Location: LCCOMB_X32_Y17_N2
\cont[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[0]~1_combout\ = (\i_RST~input_o\ & ((\cont[31]~40_combout\) # (\cont[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont[31]~40_combout\,
	datac => \i_RST~input_o\,
	datad => \cont[0]~1_combout\,
	combout => \cont[0]~1_combout\);

-- Location: IOIBUF_X0_Y14_N1
\i_SCL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SCL,
	o => \i_SCL~input_o\);

-- Location: IOIBUF_X41_Y17_N1
\i_ENABLE_P2S~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE_P2S,
	o => \i_ENABLE_P2S~input_o\);

-- Location: LCCOMB_X31_Y17_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \cont[0]~2_combout\ $ (VCC)
-- \Add0~1\ = CARRY(\cont[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont[0]~2_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X32_Y17_N10
\cont[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[0]~3_combout\ = \cont[0]~1_combout\ $ (((\i_ENABLE_P2S~input_o\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datac => \Add0~0_combout\,
	datad => \cont[0]~1_combout\,
	combout => \cont[0]~3_combout\);

-- Location: LCCOMB_X32_Y17_N8
\cont[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[0]~0_combout\ = (\cont[31]~40_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \cont[31]~40_combout\,
	combout => \cont[0]~0_combout\);

-- Location: FF_X32_Y17_N11
\cont[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont[0]~3_combout\,
	clrn => \ALT_INV_cont[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont[0]~_emulated_q\);

-- Location: LCCOMB_X32_Y17_N20
\cont[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[0]~2_combout\ = (\i_RST~input_o\ & ((\cont[31]~40_combout\) # (\cont[0]~1_combout\ $ (\cont[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont[31]~40_combout\,
	datab => \cont[0]~1_combout\,
	datac => \i_RST~input_o\,
	datad => \cont[0]~_emulated_q\,
	combout => \cont[0]~2_combout\);

-- Location: LCCOMB_X31_Y17_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cont(1) & (!\Add0~1\)) # (!cont(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X32_Y15_N10
\cont~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~38_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~2_combout\,
	combout => \cont~38_combout\);

-- Location: LCCOMB_X32_Y17_N16
\cont[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont[1]~9_combout\ = (\cont[31]~40_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \cont[31]~40_combout\,
	combout => \cont[1]~9_combout\);

-- Location: FF_X32_Y15_N11
\cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~38_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(1));

-- Location: LCCOMB_X31_Y17_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cont(2) & (\Add0~3\ $ (GND))) # (!cont(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cont(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X32_Y15_N14
\cont~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~37_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~4_combout\,
	combout => \cont~37_combout\);

-- Location: FF_X32_Y15_N15
\cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~37_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(2));

-- Location: LCCOMB_X31_Y17_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cont(3) & (!\Add0~5\)) # (!cont(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y15_N8
\cont~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~36_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~6_combout\,
	combout => \cont~36_combout\);

-- Location: FF_X32_Y15_N9
\cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~36_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(3));

-- Location: LCCOMB_X31_Y17_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cont(4) & (\Add0~7\ $ (GND))) # (!cont(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cont(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y17_N24
\cont~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~35_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~8_combout\,
	combout => \cont~35_combout\);

-- Location: FF_X32_Y17_N25
\cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~35_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(4));

-- Location: LCCOMB_X31_Y17_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cont(5) & (!\Add0~9\)) # (!cont(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y17_N0
\cont~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~34_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~10_combout\,
	combout => \cont~34_combout\);

-- Location: FF_X32_Y17_N1
\cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~34_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(5));

-- Location: LCCOMB_X31_Y17_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cont(6) & (\Add0~11\ $ (GND))) # (!cont(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cont(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y17_N26
\cont~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~33_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~12_combout\,
	combout => \cont~33_combout\);

-- Location: FF_X32_Y17_N27
\cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~33_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(6));

-- Location: LCCOMB_X31_Y17_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cont(7) & (!\Add0~13\)) # (!cont(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X32_Y17_N22
\cont~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~32_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~14_combout\,
	combout => \cont~32_combout\);

-- Location: FF_X32_Y17_N23
\cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~32_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(7));

-- Location: LCCOMB_X31_Y17_N16
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cont(8) & (\Add0~15\ $ (GND))) # (!cont(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cont(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X32_Y15_N22
\cont~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~31_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datad => \Add0~16_combout\,
	combout => \cont~31_combout\);

-- Location: FF_X32_Y15_N23
\cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~31_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(8));

-- Location: LCCOMB_X31_Y17_N18
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cont(9) & (!\Add0~17\)) # (!cont(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X32_Y15_N18
\cont~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~30_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~18_combout\,
	combout => \cont~30_combout\);

-- Location: FF_X32_Y15_N19
\cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~30_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(9));

-- Location: LCCOMB_X31_Y17_N20
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cont(10) & (\Add0~19\ $ (GND))) # (!cont(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cont(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X32_Y15_N24
\cont~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~29_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~20_combout\,
	combout => \cont~29_combout\);

-- Location: FF_X32_Y15_N25
\cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~29_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(10));

-- Location: LCCOMB_X31_Y17_N22
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cont(11) & (!\Add0~21\)) # (!cont(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y15_N6
\cont~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~28_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~22_combout\,
	combout => \cont~28_combout\);

-- Location: FF_X32_Y15_N7
\cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~28_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(11));

-- Location: LCCOMB_X31_Y17_N24
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cont(12) & (\Add0~23\ $ (GND))) # (!cont(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cont(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X32_Y17_N6
\cont~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~27_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~24_combout\,
	combout => \cont~27_combout\);

-- Location: FF_X32_Y17_N7
\cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~27_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(12));

-- Location: LCCOMB_X31_Y17_N26
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cont(13) & (!\Add0~25\)) # (!cont(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cont(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X32_Y17_N14
\cont~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~26_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datac => \Add0~26_combout\,
	combout => \cont~26_combout\);

-- Location: FF_X32_Y17_N15
\cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~26_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(13));

-- Location: LCCOMB_X31_Y17_N28
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cont(14) & (\Add0~27\ $ (GND))) # (!cont(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cont(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X32_Y17_N4
\cont~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~25_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~28_combout\,
	combout => \cont~25_combout\);

-- Location: FF_X32_Y17_N5
\cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~25_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(14));

-- Location: LCCOMB_X31_Y17_N30
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cont(15) & (!\Add0~29\)) # (!cont(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cont(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X32_Y17_N28
\cont~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~24_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE_P2S~input_o\,
	datad => \Add0~30_combout\,
	combout => \cont~24_combout\);

-- Location: FF_X32_Y17_N29
\cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~24_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(15));

-- Location: LCCOMB_X31_Y16_N0
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cont(16) & (\Add0~31\ $ (GND))) # (!cont(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cont(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X30_Y15_N22
\cont~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~23_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datad => \Add0~32_combout\,
	combout => \cont~23_combout\);

-- Location: FF_X30_Y15_N23
\cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~23_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(16));

-- Location: LCCOMB_X31_Y16_N2
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cont(17) & (!\Add0~33\)) # (!cont(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cont(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X30_Y15_N18
\cont~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~22_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datad => \Add0~34_combout\,
	combout => \cont~22_combout\);

-- Location: FF_X30_Y15_N19
\cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~22_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(17));

-- Location: LCCOMB_X31_Y16_N4
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cont(18) & (\Add0~35\ $ (GND))) # (!cont(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cont(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X30_Y15_N26
\cont~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~21_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datad => \Add0~36_combout\,
	combout => \cont~21_combout\);

-- Location: FF_X30_Y15_N27
\cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~21_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(18));

-- Location: LCCOMB_X31_Y16_N6
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cont(19) & (!\Add0~37\)) # (!cont(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cont(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X30_Y15_N16
\cont~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~20_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~38_combout\,
	combout => \cont~20_combout\);

-- Location: FF_X30_Y15_N17
\cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~20_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(19));

-- Location: LCCOMB_X31_Y16_N8
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cont(20) & (\Add0~39\ $ (GND))) # (!cont(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cont(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X31_Y15_N8
\cont~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~19_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~40_combout\,
	combout => \cont~19_combout\);

-- Location: FF_X31_Y15_N9
\cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~19_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(20));

-- Location: LCCOMB_X31_Y16_N10
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cont(21) & (!\Add0~41\)) # (!cont(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cont(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X31_Y15_N16
\cont~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~18_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~42_combout\,
	combout => \cont~18_combout\);

-- Location: FF_X31_Y15_N17
\cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~18_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(21));

-- Location: LCCOMB_X31_Y16_N12
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cont(22) & (\Add0~43\ $ (GND))) # (!cont(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cont(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X31_Y15_N30
\cont~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~17_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~44_combout\,
	combout => \cont~17_combout\);

-- Location: FF_X31_Y15_N31
\cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~17_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(22));

-- Location: LCCOMB_X31_Y16_N14
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cont(23) & (!\Add0~45\)) # (!cont(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cont(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X31_Y15_N18
\cont~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~16_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~46_combout\,
	combout => \cont~16_combout\);

-- Location: FF_X31_Y15_N19
\cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~16_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(23));

-- Location: LCCOMB_X31_Y16_N16
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cont(24) & (\Add0~47\ $ (GND))) # (!cont(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cont(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X31_Y15_N4
\cont~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~15_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~48_combout\,
	combout => \cont~15_combout\);

-- Location: FF_X31_Y15_N5
\cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~15_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(24));

-- Location: LCCOMB_X31_Y16_N18
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cont(25) & (!\Add0~49\)) # (!cont(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cont(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X31_Y15_N0
\cont~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~14_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~50_combout\,
	combout => \cont~14_combout\);

-- Location: FF_X31_Y15_N1
\cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~14_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(25));

-- Location: LCCOMB_X31_Y16_N20
\Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (cont(26) & (\Add0~51\ $ (GND))) # (!cont(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((cont(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X31_Y15_N2
\cont~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~13_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~52_combout\,
	combout => \cont~13_combout\);

-- Location: FF_X31_Y15_N3
\cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~13_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(26));

-- Location: LCCOMB_X31_Y16_N22
\Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (cont(27) & (!\Add0~53\)) # (!cont(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!cont(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X31_Y15_N20
\cont~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~12_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~54_combout\,
	combout => \cont~12_combout\);

-- Location: FF_X31_Y15_N21
\cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~12_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(27));

-- Location: LCCOMB_X31_Y15_N12
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!cont(27) & (!cont(25) & (!cont(24) & !cont(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(27),
	datab => cont(25),
	datac => cont(24),
	datad => cont(26),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X31_Y16_N24
\Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (cont(28) & (\Add0~55\ $ (GND))) # (!cont(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((cont(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X31_Y15_N24
\cont~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~11_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datad => \Add0~56_combout\,
	combout => \cont~11_combout\);

-- Location: FF_X31_Y15_N25
\cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~11_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(28));

-- Location: LCCOMB_X31_Y16_N26
\Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (cont(29) & (!\Add0~57\)) # (!cont(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!cont(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X31_Y15_N22
\cont~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~10_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~58_combout\,
	combout => \cont~10_combout\);

-- Location: FF_X31_Y15_N23
\cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~10_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(29));

-- Location: LCCOMB_X31_Y16_N28
\Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (cont(30) & (\Add0~59\ $ (GND))) # (!cont(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((cont(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X31_Y15_N26
\cont~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~7_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE_P2S~input_o\,
	datad => \Add0~60_combout\,
	combout => \cont~7_combout\);

-- Location: FF_X31_Y15_N27
\cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~7_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(30));

-- Location: LCCOMB_X31_Y16_N30
\Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = cont(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cont(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X31_Y15_N28
\cont~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~39_combout\ = (\i_ENABLE_P2S~input_o\ & \Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_P2S~input_o\,
	datac => \Add0~62_combout\,
	combout => \cont~39_combout\);

-- Location: FF_X31_Y15_N29
\cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~input_o\,
	d => \cont~39_combout\,
	clrn => \ALT_INV_cont[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(31));

-- Location: LCCOMB_X31_Y15_N14
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!cont(29) & (!cont(31) & (!cont(30) & !cont(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(29),
	datab => cont(31),
	datac => cont(30),
	datad => cont(28),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X30_Y15_N6
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!cont(18) & (!cont(17) & (!cont(16) & !cont(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(18),
	datab => cont(17),
	datac => cont(16),
	datad => cont(19),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X31_Y15_N10
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!cont(22) & (!cont(21) & (!cont(20) & !cont(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(22),
	datab => cont(21),
	datac => cont(20),
	datad => cont(23),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X31_Y15_N6
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~1_combout\ & (\process_0~0_combout\ & (\process_0~3_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \process_0~3_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X32_Y15_N30
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!cont(11) & (!cont(10) & (!cont(8) & !cont(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(11),
	datab => cont(10),
	datac => cont(8),
	datad => cont(9),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X32_Y17_N30
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!cont(12) & (!cont(14) & (!cont(13) & !cont(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(12),
	datab => cont(14),
	datac => cont(13),
	datad => cont(15),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X32_Y17_N12
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!cont(7) & (!cont(4) & (!cont(6) & !cont(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(7),
	datab => cont(4),
	datac => cont(6),
	datad => cont(5),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X32_Y15_N16
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!cont(1) & (!cont(3) & (!cont(2) & \i_ENABLE_P2S~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => cont(3),
	datac => cont(2),
	datad => \i_ENABLE_P2S~input_o\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X32_Y15_N20
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~6_combout\ & (\process_0~5_combout\ & (\process_0~7_combout\ & \process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X32_Y15_N28
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (!\cont[0]~2_combout\ & (\process_0~4_combout\ & \process_0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont[0]~2_combout\,
	datac => \process_0~4_combout\,
	datad => \process_0~9_combout\,
	combout => \process_0~10_combout\);

-- Location: CLKCTRL_G4
\i_SCL~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_SCL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_SCL~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y12_N8
\i_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(15),
	o => \i_DATA[15]~input_o\);

-- Location: CLKCTRL_G8
\process_0~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~10clkctrl_outclk\);

-- Location: LCCOMB_X37_Y15_N4
\o_SDA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~1_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[15]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\o_SDA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[15]~input_o\,
	datac => \o_SDA~1_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \o_SDA~1_combout\);

-- Location: IOIBUF_X41_Y10_N15
\i_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(14),
	o => \i_DATA[14]~input_o\);

-- Location: LCCOMB_X37_Y15_N10
\w_REG[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[15]~17_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[14]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[15]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[14]~input_o\,
	datac => \w_REG[15]~17_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[15]~17_combout\);

-- Location: IOIBUF_X41_Y14_N8
\i_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(13),
	o => \i_DATA[13]~input_o\);

-- Location: LCCOMB_X37_Y15_N20
\w_REG[14]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[14]~21_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[13]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[14]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[13]~input_o\,
	datac => \w_REG[14]~21_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[14]~21_combout\);

-- Location: IOIBUF_X41_Y13_N1
\i_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(12),
	o => \i_DATA[12]~input_o\);

-- Location: LCCOMB_X37_Y15_N6
\w_REG[13]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[13]~25_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[12]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[13]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[12]~input_o\,
	datac => \w_REG[13]~25_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[13]~25_combout\);

-- Location: IOIBUF_X41_Y14_N1
\i_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(11),
	o => \i_DATA[11]~input_o\);

-- Location: LCCOMB_X37_Y15_N0
\w_REG[12]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[12]~29_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[11]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[12]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[11]~input_o\,
	datac => \w_REG[12]~29_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[12]~29_combout\);

-- Location: IOIBUF_X41_Y19_N8
\i_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(10),
	o => \i_DATA[10]~input_o\);

-- Location: LCCOMB_X37_Y15_N2
\w_REG[11]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[11]~33_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[10]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[11]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[10]~input_o\,
	datac => \w_REG[11]~33_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[11]~33_combout\);

-- Location: IOIBUF_X41_Y13_N8
\i_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(9),
	o => \i_DATA[9]~input_o\);

-- Location: LCCOMB_X38_Y15_N10
\w_REG[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[10]~37_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & ((\i_DATA[9]~input_o\))) # (!GLOBAL(\process_0~10clkctrl_outclk\) & (\w_REG[10]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_REG[10]~37_combout\,
	datab => \i_DATA[9]~input_o\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[10]~37_combout\);

-- Location: IOIBUF_X41_Y13_N22
\i_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(8),
	o => \i_DATA[8]~input_o\);

-- Location: LCCOMB_X39_Y15_N24
\w_REG[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[9]~41_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[8]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[9]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[8]~input_o\,
	datac => \w_REG[9]~41_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[9]~41_combout\);

-- Location: IOIBUF_X41_Y12_N1
\i_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

-- Location: LCCOMB_X39_Y15_N18
\w_REG[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[8]~45_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[7]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[8]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[7]~input_o\,
	datac => \w_REG[8]~45_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[8]~45_combout\);

-- Location: IOIBUF_X41_Y13_N15
\i_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: LCCOMB_X39_Y15_N16
\w_REG[7]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[7]~49_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[6]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[7]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[6]~input_o\,
	datac => \w_REG[7]~49_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[7]~49_combout\);

-- Location: IOIBUF_X41_Y18_N22
\i_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: LCCOMB_X39_Y15_N6
\w_REG[6]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[6]~53_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & ((\i_DATA[5]~input_o\))) # (!GLOBAL(\process_0~10clkctrl_outclk\) & (\w_REG[6]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_REG[6]~53_combout\,
	datab => \i_DATA[5]~input_o\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[6]~53_combout\);

-- Location: IOIBUF_X41_Y14_N15
\i_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: LCCOMB_X40_Y15_N30
\w_REG[5]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[5]~57_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[4]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[5]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[4]~input_o\,
	datac => \w_REG[5]~57_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[5]~57_combout\);

-- Location: IOIBUF_X41_Y18_N1
\i_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: LCCOMB_X40_Y15_N0
\w_REG[4]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[4]~61_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[3]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[4]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[3]~input_o\,
	datac => \w_REG[4]~61_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[4]~61_combout\);

-- Location: IOIBUF_X41_Y18_N15
\i_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(2),
	o => \i_DATA[2]~input_o\);

-- Location: LCCOMB_X40_Y15_N14
\w_REG[3]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[3]~65_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[2]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[3]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[2]~input_o\,
	datac => \w_REG[3]~65_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[3]~65_combout\);

-- Location: IOIBUF_X41_Y12_N22
\i_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

-- Location: LCCOMB_X40_Y15_N12
\w_REG[2]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[2]~69_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[1]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[2]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[1]~input_o\,
	datac => \w_REG[2]~69_combout\,
	datad => \process_0~10clkctrl_outclk\,
	combout => \w_REG[2]~69_combout\);

-- Location: IOIBUF_X41_Y12_N15
\i_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(0),
	o => \i_DATA[0]~input_o\);

-- Location: LCCOMB_X40_Y15_N6
\w_REG[1]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[1]~73_combout\ = (GLOBAL(\process_0~10clkctrl_outclk\) & (\i_DATA[0]~input_o\)) # (!GLOBAL(\process_0~10clkctrl_outclk\) & ((\w_REG[1]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DATA[0]~input_o\,
	datac => \process_0~10clkctrl_outclk\,
	datad => \w_REG[1]~73_combout\,
	combout => \w_REG[1]~73_combout\);

-- Location: FF_X40_Y15_N25
\w_REG[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	asdata => \w_REG[1]~73_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[1]~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N24
\w_REG[1]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[1]~74_combout\ = (\process_0~10_combout\ & (\i_DATA[0]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[1]~_emulated_q\ $ (\w_REG[1]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[0]~input_o\,
	datac => \w_REG[1]~_emulated_q\,
	datad => \w_REG[1]~73_combout\,
	combout => \w_REG[1]~74_combout\);

-- Location: LCCOMB_X40_Y15_N20
\w_REG[2]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[2]~71_combout\ = \w_REG[2]~69_combout\ $ (\w_REG[1]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[2]~69_combout\,
	datad => \w_REG[1]~74_combout\,
	combout => \w_REG[2]~71_combout\);

-- Location: FF_X40_Y15_N21
\w_REG[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[2]~71_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[2]~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N22
\w_REG[2]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[2]~70_combout\ = (\process_0~10_combout\ & (((\i_DATA[1]~input_o\)))) # (!\process_0~10_combout\ & (\w_REG[2]~_emulated_q\ $ (((\w_REG[2]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \w_REG[2]~_emulated_q\,
	datac => \i_DATA[1]~input_o\,
	datad => \w_REG[2]~69_combout\,
	combout => \w_REG[2]~70_combout\);

-- Location: LCCOMB_X40_Y15_N28
\w_REG[3]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[3]~67_combout\ = \w_REG[2]~70_combout\ $ (\w_REG[3]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[2]~70_combout\,
	datad => \w_REG[3]~65_combout\,
	combout => \w_REG[3]~67_combout\);

-- Location: FF_X40_Y15_N29
\w_REG[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[3]~67_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[3]~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N18
\w_REG[3]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[3]~66_combout\ = (\process_0~10_combout\ & (\i_DATA[2]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[3]~65_combout\ $ (\w_REG[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[2]~input_o\,
	datac => \w_REG[3]~65_combout\,
	datad => \w_REG[3]~_emulated_q\,
	combout => \w_REG[3]~66_combout\);

-- Location: LCCOMB_X40_Y15_N4
\w_REG[4]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[4]~63_combout\ = \w_REG[4]~61_combout\ $ (\w_REG[3]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[4]~61_combout\,
	datad => \w_REG[3]~66_combout\,
	combout => \w_REG[4]~63_combout\);

-- Location: FF_X40_Y15_N5
\w_REG[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[4]~63_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[4]~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N2
\w_REG[4]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[4]~62_combout\ = (\process_0~10_combout\ & (\i_DATA[3]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[4]~_emulated_q\ $ (\w_REG[4]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[3]~input_o\,
	datac => \w_REG[4]~_emulated_q\,
	datad => \w_REG[4]~61_combout\,
	combout => \w_REG[4]~62_combout\);

-- Location: LCCOMB_X40_Y15_N16
\w_REG[5]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[5]~59_combout\ = \w_REG[5]~57_combout\ $ (\w_REG[4]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[5]~57_combout\,
	datad => \w_REG[4]~62_combout\,
	combout => \w_REG[5]~59_combout\);

-- Location: FF_X40_Y15_N17
\w_REG[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[5]~59_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[5]~_emulated_q\);

-- Location: LCCOMB_X40_Y15_N10
\w_REG[5]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[5]~58_combout\ = (\process_0~10_combout\ & (\i_DATA[4]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[5]~_emulated_q\ $ (\w_REG[5]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[4]~input_o\,
	datab => \w_REG[5]~_emulated_q\,
	datac => \w_REG[5]~57_combout\,
	datad => \process_0~10_combout\,
	combout => \w_REG[5]~58_combout\);

-- Location: LCCOMB_X40_Y15_N26
\w_REG[6]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[6]~55_combout\ = \w_REG[6]~53_combout\ $ (\w_REG[5]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[6]~53_combout\,
	datad => \w_REG[5]~58_combout\,
	combout => \w_REG[6]~55_combout\);

-- Location: FF_X40_Y15_N27
\w_REG[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[6]~55_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[6]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N2
\w_REG[6]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[6]~54_combout\ = (\process_0~10_combout\ & (\i_DATA[5]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[6]~_emulated_q\ $ (\w_REG[6]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[5]~input_o\,
	datac => \w_REG[6]~_emulated_q\,
	datad => \w_REG[6]~53_combout\,
	combout => \w_REG[6]~54_combout\);

-- Location: LCCOMB_X39_Y15_N26
\w_REG[7]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[7]~51_combout\ = \w_REG[7]~49_combout\ $ (\w_REG[6]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[7]~49_combout\,
	datad => \w_REG[6]~54_combout\,
	combout => \w_REG[7]~51_combout\);

-- Location: FF_X39_Y15_N27
\w_REG[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[7]~51_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[7]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N12
\w_REG[7]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[7]~50_combout\ = (\process_0~10_combout\ & (((\i_DATA[6]~input_o\)))) # (!\process_0~10_combout\ & (\w_REG[7]~_emulated_q\ $ (((\w_REG[7]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_REG[7]~_emulated_q\,
	datab => \i_DATA[6]~input_o\,
	datac => \process_0~10_combout\,
	datad => \w_REG[7]~49_combout\,
	combout => \w_REG[7]~50_combout\);

-- Location: LCCOMB_X39_Y15_N30
\w_REG[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[8]~47_combout\ = \w_REG[8]~45_combout\ $ (\w_REG[7]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[8]~45_combout\,
	datad => \w_REG[7]~50_combout\,
	combout => \w_REG[8]~47_combout\);

-- Location: FF_X39_Y15_N31
\w_REG[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[8]~47_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[8]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N20
\w_REG[8]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[8]~46_combout\ = (\process_0~10_combout\ & (((\i_DATA[7]~input_o\)))) # (!\process_0~10_combout\ & (\w_REG[8]~_emulated_q\ $ (((\w_REG[8]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_REG[8]~_emulated_q\,
	datab => \i_DATA[7]~input_o\,
	datac => \process_0~10_combout\,
	datad => \w_REG[8]~45_combout\,
	combout => \w_REG[8]~46_combout\);

-- Location: LCCOMB_X39_Y15_N14
\w_REG[9]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[9]~43_combout\ = \w_REG[9]~41_combout\ $ (\w_REG[8]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[9]~41_combout\,
	datad => \w_REG[8]~46_combout\,
	combout => \w_REG[9]~43_combout\);

-- Location: FF_X39_Y15_N15
\w_REG[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[9]~43_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[9]~_emulated_q\);

-- Location: LCCOMB_X39_Y15_N28
\w_REG[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[9]~42_combout\ = (\process_0~10_combout\ & (\i_DATA[8]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[9]~_emulated_q\ $ (\w_REG[9]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[8]~input_o\,
	datab => \w_REG[9]~_emulated_q\,
	datac => \process_0~10_combout\,
	datad => \w_REG[9]~41_combout\,
	combout => \w_REG[9]~42_combout\);

-- Location: LCCOMB_X39_Y15_N0
\w_REG[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[10]~39_combout\ = \w_REG[10]~37_combout\ $ (\w_REG[9]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_REG[10]~37_combout\,
	datad => \w_REG[9]~42_combout\,
	combout => \w_REG[10]~39_combout\);

-- Location: FF_X39_Y15_N1
\w_REG[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[10]~39_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[10]~_emulated_q\);

-- Location: LCCOMB_X38_Y15_N12
\w_REG[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[10]~38_combout\ = (\process_0~10_combout\ & (\i_DATA[9]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[10]~_emulated_q\ $ (\w_REG[10]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[9]~input_o\,
	datac => \w_REG[10]~_emulated_q\,
	datad => \w_REG[10]~37_combout\,
	combout => \w_REG[10]~38_combout\);

-- Location: LCCOMB_X38_Y15_N30
\w_REG[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[11]~35_combout\ = \w_REG[11]~33_combout\ $ (\w_REG[10]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[11]~33_combout\,
	datad => \w_REG[10]~38_combout\,
	combout => \w_REG[11]~35_combout\);

-- Location: FF_X38_Y15_N31
\w_REG[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[11]~35_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[11]~_emulated_q\);

-- Location: LCCOMB_X37_Y15_N18
\w_REG[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[11]~34_combout\ = (\process_0~10_combout\ & (\i_DATA[10]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[11]~_emulated_q\ $ (\w_REG[11]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[10]~input_o\,
	datac => \w_REG[11]~_emulated_q\,
	datad => \w_REG[11]~33_combout\,
	combout => \w_REG[11]~34_combout\);

-- Location: LCCOMB_X37_Y15_N14
\w_REG[12]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[12]~31_combout\ = \w_REG[12]~29_combout\ $ (\w_REG[11]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[12]~29_combout\,
	datad => \w_REG[11]~34_combout\,
	combout => \w_REG[12]~31_combout\);

-- Location: FF_X37_Y15_N15
\w_REG[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[12]~31_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[12]~_emulated_q\);

-- Location: LCCOMB_X37_Y15_N16
\w_REG[12]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[12]~30_combout\ = (\process_0~10_combout\ & (\i_DATA[11]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[12]~_emulated_q\ $ (\w_REG[12]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[11]~input_o\,
	datac => \w_REG[12]~_emulated_q\,
	datad => \w_REG[12]~29_combout\,
	combout => \w_REG[12]~30_combout\);

-- Location: LCCOMB_X37_Y15_N30
\w_REG[13]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[13]~27_combout\ = \w_REG[13]~25_combout\ $ (\w_REG[12]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[13]~25_combout\,
	datad => \w_REG[12]~30_combout\,
	combout => \w_REG[13]~27_combout\);

-- Location: FF_X37_Y15_N31
\w_REG[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[13]~27_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[13]~_emulated_q\);

-- Location: LCCOMB_X37_Y15_N28
\w_REG[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[13]~26_combout\ = (\process_0~10_combout\ & (\i_DATA[12]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[13]~_emulated_q\ $ (\w_REG[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[12]~input_o\,
	datac => \w_REG[13]~_emulated_q\,
	datad => \w_REG[13]~25_combout\,
	combout => \w_REG[13]~26_combout\);

-- Location: LCCOMB_X37_Y15_N22
\w_REG[14]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[14]~23_combout\ = \w_REG[14]~21_combout\ $ (\w_REG[13]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[14]~21_combout\,
	datad => \w_REG[13]~26_combout\,
	combout => \w_REG[14]~23_combout\);

-- Location: FF_X37_Y15_N23
\w_REG[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[14]~23_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[14]~_emulated_q\);

-- Location: LCCOMB_X37_Y15_N12
\w_REG[14]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[14]~22_combout\ = (\process_0~10_combout\ & (\i_DATA[13]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[14]~_emulated_q\ $ (\w_REG[14]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[13]~input_o\,
	datac => \w_REG[14]~_emulated_q\,
	datad => \w_REG[14]~21_combout\,
	combout => \w_REG[14]~22_combout\);

-- Location: LCCOMB_X37_Y15_N26
\w_REG[15]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[15]~19_combout\ = \w_REG[15]~17_combout\ $ (\w_REG[14]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_REG[15]~17_combout\,
	datad => \w_REG[14]~22_combout\,
	combout => \w_REG[15]~19_combout\);

-- Location: FF_X37_Y15_N27
\w_REG[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \w_REG[15]~19_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_REG[15]~_emulated_q\);

-- Location: LCCOMB_X37_Y15_N24
\w_REG[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_REG[15]~18_combout\ = (\process_0~10_combout\ & (\i_DATA[14]~input_o\)) # (!\process_0~10_combout\ & ((\w_REG[15]~_emulated_q\ $ (\w_REG[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \i_DATA[14]~input_o\,
	datac => \w_REG[15]~_emulated_q\,
	datad => \w_REG[15]~17_combout\,
	combout => \w_REG[15]~18_combout\);

-- Location: LCCOMB_X37_Y15_N8
\o_SDA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~3_combout\ = \o_SDA~1_combout\ $ (\w_REG[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \o_SDA~1_combout\,
	datad => \w_REG[15]~18_combout\,
	combout => \o_SDA~3_combout\);

-- Location: FF_X37_Y15_N9
\o_SDA~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \o_SDA~3_combout\,
	clrn => \ALT_INV_process_0~10clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_SDA~reg0_emulated_q\);

-- Location: LCCOMB_X40_Y15_N8
\o_SDA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~2_combout\ = (\process_0~10_combout\ & (((\i_DATA[15]~input_o\)))) # (!\process_0~10_combout\ & (\o_SDA~reg0_emulated_q\ $ ((\o_SDA~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \o_SDA~reg0_emulated_q\,
	datac => \o_SDA~1_combout\,
	datad => \i_DATA[15]~input_o\,
	combout => \o_SDA~2_combout\);

-- Location: LCCOMB_X38_Y15_N28
\o_SDA~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~enfeeder_combout\ = \i_ENABLE_P2S~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ENABLE_P2S~input_o\,
	combout => \o_SDA~enfeeder_combout\);

-- Location: CLKCTRL_G2
\i_RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_RST~inputclkctrl_outclk\);

-- Location: FF_X38_Y15_N29
\o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \o_SDA~enfeeder_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_SDA~en_q\);

-- Location: LCCOMB_X30_Y17_N22
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~6_combout\ & (\Add0~0_combout\ & (!\Add0~2_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add0~14_combout\ & (!\Add0~12_combout\ & (\Add0~8_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X30_Y17_N30
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add0~16_combout\ & (!\Add0~18_combout\ & (!\Add0~20_combout\ & !\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X30_Y17_N12
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Add0~26_combout\ & (!\Add0~28_combout\ & (!\Add0~30_combout\ & !\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X30_Y17_N14
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X30_Y17_N16
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\Add0~32_combout\ & (!\Add0~38_combout\ & (!\Add0~36_combout\ & !\Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~38_combout\,
	datac => \Add0~36_combout\,
	datad => \Add0~34_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X30_Y17_N26
\o_CTRL_P2S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_P2S~0_combout\ = (!\Add0~40_combout\ & (!\Add0~42_combout\ & (\Equal1~4_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~42_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \o_CTRL_P2S~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\o_CTRL_P2S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_P2S~2_combout\ = (\Add0~46_combout\) # ((\Add0~48_combout\) # ((\Add0~54_combout\) # (\Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~54_combout\,
	datad => \Add0~44_combout\,
	combout => \o_CTRL_P2S~2_combout\);

-- Location: LCCOMB_X30_Y16_N0
\o_CTRL_P2S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_P2S~1_combout\ = (\Add0~50_combout\) # ((\Add0~56_combout\) # (\Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~50_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~58_combout\,
	combout => \o_CTRL_P2S~1_combout\);

-- Location: LCCOMB_X30_Y17_N18
\o_CTRL_P2S~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_P2S~3_combout\ = (\o_CTRL_P2S~0_combout\ & (!\Add0~52_combout\ & (!\o_CTRL_P2S~2_combout\ & !\o_CTRL_P2S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_CTRL_P2S~0_combout\,
	datab => \Add0~52_combout\,
	datac => \o_CTRL_P2S~2_combout\,
	datad => \o_CTRL_P2S~1_combout\,
	combout => \o_CTRL_P2S~3_combout\);

-- Location: LCCOMB_X30_Y17_N24
\o_CTRL_P2S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_P2S~4_combout\ = (\o_CTRL_P2S~reg0_q\) # ((!\Add0~60_combout\ & (!\Add0~62_combout\ & \o_CTRL_P2S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~62_combout\,
	datac => \o_CTRL_P2S~reg0_q\,
	datad => \o_CTRL_P2S~3_combout\,
	combout => \o_CTRL_P2S~4_combout\);

-- Location: FF_X30_Y17_N25
\o_CTRL_P2S~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \o_CTRL_P2S~4_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sclr => \ALT_INV_i_ENABLE_P2S~input_o\,
	ena => \ALT_INV_process_0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_CTRL_P2S~reg0_q\);

ww_o_CTRL_P2S <= \o_CTRL_P2S~output_o\;

ww_o_SDA <= \o_SDA~output_o\;
END structure;


