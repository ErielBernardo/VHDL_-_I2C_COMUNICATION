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

-- DATE "11/28/2018 22:26:53"

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

ENTITY 	STM_SLAVE IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_ENABLE : IN std_logic;
	i_DATA : IN std_logic_vector(15 DOWNTO 0);
	o_ENABLE : OUT std_logic;
	o_DATA : OUT std_logic_vector(7 DOWNTO 0)
	);
END STM_SLAVE;

-- Design Ports Information
-- o_ENABLE	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[0]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[8]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[9]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[11]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[12]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[14]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[15]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF STM_SLAVE IS
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
SIGNAL ww_i_ENABLE : std_logic;
SIGNAL ww_i_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_ENABLE : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector10~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \o_ENABLE~output_o\ : std_logic;
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA[8]~input_o\ : std_logic;
SIGNAL \state.st_IDLE~1_combout\ : std_logic;
SIGNAL \state.st_IDLE~0_combout\ : std_logic;
SIGNAL \state.st_IDLE~2_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.st_SND_DATA~q\ : std_logic;
SIGNAL \i_DATA[13]~input_o\ : std_logic;
SIGNAL \i_DATA[11]~input_o\ : std_logic;
SIGNAL \i_DATA[9]~input_o\ : std_logic;
SIGNAL \i_DATA[12]~input_o\ : std_logic;
SIGNAL \i_DATA[10]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \i_DATA[15]~input_o\ : std_logic;
SIGNAL \i_DATA[14]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.st_NULL~q\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \stage~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.st_IDLE~q\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.st_ID~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.st_RW~q\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.st_RC_DATA~q\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~1clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \o_DATA[1]_200~combout\ : std_logic;
SIGNAL \o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \w_ENABLE~0_combout\ : std_logic;
SIGNAL \w_ENABLE~combout\ : std_logic;
SIGNAL \ALT_INV_i_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_ENABLE <= i_ENABLE;
ww_i_DATA <= i_DATA;
o_ENABLE <= ww_o_ENABLE;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\Selector10~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector10~1_combout\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);
\ALT_INV_i_CLK~input_o\ <= NOT \i_CLK~input_o\;
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y13_N16
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[0]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[1]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[2]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[3]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[4]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[5]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[6]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[7]$latch~combout\,
	oe => \o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\o_ENABLE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_ENABLE~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE~output_o\);

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

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X41_Y12_N1
\i_DATA[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(8),
	o => \i_DATA[8]~input_o\);

-- Location: LCCOMB_X39_Y14_N22
\state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~1_combout\ = (\state.st_RC_DATA~q\ & ((\state.st_RW~q\) # ((\state.st_ID~q\) # (!\state.st_IDLE~q\)))) # (!\state.st_RC_DATA~q\ & ((\state.st_RW~q\ & ((\state.st_ID~q\) # (!\state.st_IDLE~q\))) # (!\state.st_RW~q\ & (\state.st_ID~q\ & 
-- !\state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_RC_DATA~q\,
	datab => \state.st_RW~q\,
	datac => \state.st_ID~q\,
	datad => \state.st_IDLE~q\,
	combout => \state.st_IDLE~1_combout\);

-- Location: LCCOMB_X39_Y14_N16
\state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~0_combout\ = (!\state.st_RC_DATA~q\ & (!\state.st_RW~q\ & (!\state.st_ID~q\ & \state.st_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_RC_DATA~q\,
	datab => \state.st_RW~q\,
	datac => \state.st_ID~q\,
	datad => \state.st_IDLE~q\,
	combout => \state.st_IDLE~0_combout\);

-- Location: LCCOMB_X39_Y14_N20
\state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~2_combout\ = (\state.st_SND_DATA~q\ & (!\state.st_NULL~q\ & (!\state.st_IDLE~1_combout\ & \state.st_IDLE~0_combout\))) # (!\state.st_SND_DATA~q\ & ((\state.st_NULL~q\ & (!\state.st_IDLE~1_combout\ & \state.st_IDLE~0_combout\)) # 
-- (!\state.st_NULL~q\ & (\state.st_IDLE~1_combout\ $ (!\state.st_IDLE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_SND_DATA~q\,
	datab => \state.st_NULL~q\,
	datac => \state.st_IDLE~1_combout\,
	datad => \state.st_IDLE~0_combout\,
	combout => \state.st_IDLE~2_combout\);

-- Location: LCCOMB_X39_Y14_N28
\state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state.st_RW~q\ & (\state.st_IDLE~2_combout\ & \i_DATA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_RW~q\,
	datab => \state.st_IDLE~2_combout\,
	datad => \i_DATA[8]~input_o\,
	combout => \state~16_combout\);

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

-- Location: FF_X39_Y14_N29
\state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \state~16_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_SND_DATA~q\);

-- Location: IOIBUF_X41_Y11_N1
\i_DATA[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(13),
	o => \i_DATA[13]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\i_DATA[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(11),
	o => \i_DATA[11]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\i_DATA[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(9),
	o => \i_DATA[9]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\i_DATA[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(12),
	o => \i_DATA[12]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\i_DATA[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(10),
	o => \i_DATA[10]~input_o\);

-- Location: LCCOMB_X40_Y10_N0
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\i_DATA[11]~input_o\ & (\i_DATA[9]~input_o\ & (\i_DATA[12]~input_o\ & \i_DATA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[11]~input_o\,
	datab => \i_DATA[9]~input_o\,
	datac => \i_DATA[12]~input_o\,
	datad => \i_DATA[10]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X41_Y9_N15
\i_DATA[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(15),
	o => \i_DATA[15]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\i_DATA[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(14),
	o => \i_DATA[14]~input_o\);

-- Location: LCCOMB_X40_Y10_N10
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\i_DATA[13]~input_o\ & (\Equal1~0_combout\ & (\i_DATA[15]~input_o\ & \i_DATA[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[13]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \i_DATA[15]~input_o\,
	datad => \i_DATA[14]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X39_Y14_N18
\state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.st_IDLE~2_combout\ & ((\state.st_SND_DATA~q\) # ((\state.st_ID~q\ & !\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_SND_DATA~q\,
	datab => \state.st_ID~q\,
	datac => \Equal1~1_combout\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~17_combout\);

-- Location: FF_X39_Y14_N19
\state.st_NULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \state~17_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_NULL~q\);

-- Location: IOIBUF_X41_Y12_N8
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: LCCOMB_X40_Y10_N4
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\i_DATA[11]~input_o\ & (!\i_DATA[10]~input_o\ & (!\i_DATA[9]~input_o\ & !\i_DATA[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[11]~input_o\,
	datab => \i_DATA[10]~input_o\,
	datac => \i_DATA[9]~input_o\,
	datad => \i_DATA[8]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X41_Y18_N22
\i_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: IOIBUF_X41_Y18_N8
\i_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\i_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\i_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: LCCOMB_X40_Y14_N18
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\i_DATA[4]~input_o\ & (!\i_DATA[7]~input_o\ & (!\i_DATA[6]~input_o\ & !\i_DATA[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[4]~input_o\,
	datab => \i_DATA[7]~input_o\,
	datac => \i_DATA[6]~input_o\,
	datad => \i_DATA[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X41_Y14_N22
\i_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: IOIBUF_X41_Y14_N1
\i_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

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

-- Location: LCCOMB_X40_Y14_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\i_DATA[0]~input_o\ & (!\i_DATA[3]~input_o\ & (!\i_DATA[1]~input_o\ & !\i_DATA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[0]~input_o\,
	datab => \i_DATA[3]~input_o\,
	datac => \i_DATA[1]~input_o\,
	datad => \i_DATA[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y10_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\i_DATA[13]~input_o\ & (!\i_DATA[12]~input_o\ & (!\i_DATA[15]~input_o\ & !\i_DATA[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[13]~input_o\,
	datab => \i_DATA[12]~input_o\,
	datac => \i_DATA[15]~input_o\,
	datad => \i_DATA[14]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X40_Y14_N4
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X39_Y14_N14
\Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\state.st_IDLE~q\ & (!\state.st_RC_DATA~q\ & (!\state.st_ID~q\ & !\state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_IDLE~q\,
	datab => \state.st_RC_DATA~q\,
	datac => \state.st_ID~q\,
	datad => \state.st_SND_DATA~q\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X40_Y14_N22
\Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~2_combout\) # ((\stage~q\ & ((\i_ENABLE~input_o\) # (\state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage~q\,
	datab => \i_ENABLE~input_o\,
	datac => \state.st_IDLE~q\,
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: FF_X40_Y14_N11
stage : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \Selector10~3_combout\,
	sload => VCC,
	ena => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage~q\);

-- Location: LCCOMB_X40_Y14_N28
\state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\state.st_IDLE~q\ & (((\Equal0~4_combout\) # (\stage~q\)) # (!\i_ENABLE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ENABLE~input_o\,
	datab => \Equal0~4_combout\,
	datac => \state.st_IDLE~q\,
	datad => \stage~q\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X39_Y14_N6
\state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\state.st_NULL~q\ & (\state.st_IDLE~2_combout\ & (!\state.st_RC_DATA~q\ & !\state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_NULL~q\,
	datab => \state.st_IDLE~2_combout\,
	datac => \state.st_RC_DATA~q\,
	datad => \state~18_combout\,
	combout => \state~19_combout\);

-- Location: FF_X39_Y14_N7
\state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \state~19_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_IDLE~q\);

-- Location: LCCOMB_X40_Y14_N10
\state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\i_ENABLE~input_o\ & !\stage~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE~input_o\,
	datac => \stage~q\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X39_Y14_N4
\state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!\state.st_IDLE~q\ & (!\Equal0~4_combout\ & (\state~20_combout\ & \state.st_IDLE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_IDLE~q\,
	datab => \Equal0~4_combout\,
	datac => \state~20_combout\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~21_combout\);

-- Location: FF_X39_Y14_N5
\state.st_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \state~21_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_ID~q\);

-- Location: LCCOMB_X39_Y14_N8
\state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state.st_ID~q\ & (\Equal1~1_combout\ & \state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.st_ID~q\,
	datac => \Equal1~1_combout\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~22_combout\);

-- Location: FF_X39_Y14_N9
\state.st_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_RW~q\);

-- Location: LCCOMB_X39_Y14_N30
\state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!\i_DATA[8]~input_o\ & (\state.st_RW~q\ & \state.st_IDLE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[8]~input_o\,
	datac => \state.st_RW~q\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~23_combout\);

-- Location: FF_X39_Y14_N31
\state.st_RC_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_RC_DATA~q\);

-- Location: LCCOMB_X39_Y14_N24
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\state.st_RC_DATA~q\ & !\state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.st_RC_DATA~q\,
	datad => \state.st_SND_DATA~q\,
	combout => \Selector10~1_combout\);

-- Location: CLKCTRL_G6
\Selector10~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector10~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector10~1clkctrl_outclk\);

-- Location: LCCOMB_X40_Y14_N24
\o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[0]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[0]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[0]$latch~combout\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X39_Y14_N2
\o_DATA[1]_200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]_200~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & (\o_DATA[1]_200~combout\)) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & ((!\state.st_SND_DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[1]_200~combout\,
	datab => \i_RST~input_o\,
	datac => \Selector10~1clkctrl_outclk\,
	datad => \state.st_SND_DATA~q\,
	combout => \o_DATA[1]_200~combout\);

-- Location: LCCOMB_X40_Y14_N30
\o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[1]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA[1]~input_o\,
	datac => \o_DATA[1]$latch~combout\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N16
\o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[2]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[2]~input_o\,
	datab => \o_DATA[2]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N6
\o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & (\o_DATA[3]$latch~combout\)) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & ((\i_DATA[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[3]$latch~combout\,
	datab => \i_DATA[3]~input_o\,
	datac => \i_RST~input_o\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N20
\o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[4]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[4]~input_o\,
	datab => \o_DATA[4]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N26
\o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[5]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA[5]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[5]$latch~combout\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N12
\o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & (\o_DATA[6]$latch~combout\)) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & ((\i_DATA[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[6]$latch~combout\,
	datab => \i_DATA[6]~input_o\,
	datac => \i_RST~input_o\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X40_Y14_N14
\o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector10~1clkctrl_outclk\) & ((\o_DATA[7]$latch~combout\))) # (!GLOBAL(\Selector10~1clkctrl_outclk\) & (\i_DATA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \i_DATA[7]~input_o\,
	datac => \o_DATA[7]$latch~combout\,
	datad => \Selector10~1clkctrl_outclk\,
	combout => \o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X39_Y14_N26
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\state.st_ID~q\ & \state.st_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.st_ID~q\,
	datad => \state.st_IDLE~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X39_Y14_N12
\w_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_ENABLE~0_combout\ = (\state.st_NULL~q\) # (\state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.st_NULL~q\,
	datad => \state.st_SND_DATA~q\,
	combout => \w_ENABLE~0_combout\);

-- Location: LCCOMB_X39_Y14_N10
w_ENABLE : cycloneiii_lcell_comb
-- Equation(s):
-- \w_ENABLE~combout\ = (\i_RST~input_o\ & ((\Selector10~0_combout\ & ((!\w_ENABLE~0_combout\))) # (!\Selector10~0_combout\ & (\w_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w_ENABLE~combout\,
	datab => \i_RST~input_o\,
	datac => \Selector10~0_combout\,
	datad => \w_ENABLE~0_combout\,
	combout => \w_ENABLE~combout\);

ww_o_ENABLE <= \o_ENABLE~output_o\;

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;
END structure;


