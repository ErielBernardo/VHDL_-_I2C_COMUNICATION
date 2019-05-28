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

-- DATE "11/28/2018 22:11:46"

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

ENTITY 	S2P IS
    PORT (
	i_RST : IN std_logic;
	i_SCL : IN std_logic;
	i_SDA : IN std_logic;
	i_ENABLE : IN std_logic;
	o_DATA : OUT std_logic_vector(15 DOWNTO 0)
	);
END S2P;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[8]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[10]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[11]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[12]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[14]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[15]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SDA	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF S2P IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_SCL : std_logic;
SIGNAL ww_i_SDA : std_logic;
SIGNAL ww_i_ENABLE : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \o_DATA[8]~output_o\ : std_logic;
SIGNAL \o_DATA[9]~output_o\ : std_logic;
SIGNAL \o_DATA[10]~output_o\ : std_logic;
SIGNAL \o_DATA[11]~output_o\ : std_logic;
SIGNAL \o_DATA[12]~output_o\ : std_logic;
SIGNAL \o_DATA[13]~output_o\ : std_logic;
SIGNAL \o_DATA[14]~output_o\ : std_logic;
SIGNAL \o_DATA[15]~output_o\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SDA~input_o\ : std_logic;
SIGNAL \o_DATA[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \cont~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \o_DATA[15]~16_combout\ : std_logic;
SIGNAL \o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \o_DATA[0]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[0]~en_q\ : std_logic;
SIGNAL \w_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \o_DATA[1]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[1]~en_q\ : std_logic;
SIGNAL \w_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \o_DATA[2]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[2]~en_q\ : std_logic;
SIGNAL \w_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \o_DATA[3]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[3]~en_q\ : std_logic;
SIGNAL \w_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \o_DATA[4]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[4]~en_q\ : std_logic;
SIGNAL \w_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \o_DATA[5]~en_q\ : std_logic;
SIGNAL \w_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \o_DATA[6]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[6]~en_q\ : std_logic;
SIGNAL \w_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[7]~reg0_q\ : std_logic;
SIGNAL \o_DATA[7]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[7]~en_q\ : std_logic;
SIGNAL \w_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[8]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[8]~reg0_q\ : std_logic;
SIGNAL \o_DATA[8]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[8]~en_q\ : std_logic;
SIGNAL \w_DATA[8]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[9]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[9]~reg0_q\ : std_logic;
SIGNAL \o_DATA[9]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[9]~en_q\ : std_logic;
SIGNAL \w_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[10]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[10]~reg0_q\ : std_logic;
SIGNAL \o_DATA[10]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[10]~en_q\ : std_logic;
SIGNAL \w_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[11]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[11]~reg0_q\ : std_logic;
SIGNAL \o_DATA[11]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[11]~en_q\ : std_logic;
SIGNAL \w_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[12]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[12]~reg0_q\ : std_logic;
SIGNAL \o_DATA[12]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[12]~en_q\ : std_logic;
SIGNAL \w_DATA[12]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[13]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[13]~reg0_q\ : std_logic;
SIGNAL \o_DATA[13]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[13]~en_q\ : std_logic;
SIGNAL \w_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[14]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[14]~reg0_q\ : std_logic;
SIGNAL \o_DATA[14]~enfeeder_combout\ : std_logic;
SIGNAL \o_DATA[14]~en_q\ : std_logic;
SIGNAL \w_DATA[14]~feeder_combout\ : std_logic;
SIGNAL \o_DATA[15]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[15]~reg0_q\ : std_logic;
SIGNAL \o_DATA[15]~en_q\ : std_logic;
SIGNAL w_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL cont : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_process_0~0clkctrl_outclk\ : std_logic;

BEGIN

ww_i_RST <= i_RST;
ww_i_SCL <= i_SCL;
ww_i_SDA <= i_SDA;
ww_i_ENABLE <= i_ENABLE;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_SCL~input_o\);

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);
\ALT_INV_process_0~0clkctrl_outclk\ <= NOT \process_0~0clkctrl_outclk\;

-- Location: IOOBUF_X3_Y29_N9
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[0]~reg0_q\,
	oe => \o_DATA[0]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[1]~reg0_q\,
	oe => \o_DATA[1]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[2]~reg0_q\,
	oe => \o_DATA[2]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[3]~reg0_q\,
	oe => \o_DATA[3]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[4]~reg0_q\,
	oe => \o_DATA[4]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[5]~reg0_q\,
	oe => \o_DATA[5]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[6]~reg0_q\,
	oe => \o_DATA[6]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[7]~reg0_q\,
	oe => \o_DATA[7]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\o_DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[8]~reg0_q\,
	oe => \o_DATA[8]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[8]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\o_DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[9]~reg0_q\,
	oe => \o_DATA[9]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[9]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\o_DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[10]~reg0_q\,
	oe => \o_DATA[10]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[10]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\o_DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[11]~reg0_q\,
	oe => \o_DATA[11]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[11]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\o_DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[12]~reg0_q\,
	oe => \o_DATA[12]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[12]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\o_DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[13]~reg0_q\,
	oe => \o_DATA[13]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[13]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\o_DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[14]~reg0_q\,
	oe => \o_DATA[14]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[14]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\o_DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[15]~reg0_q\,
	oe => \o_DATA[15]~en_q\,
	devoe => ww_devoe,
	o => \o_DATA[15]~output_o\);

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

-- Location: IOIBUF_X0_Y26_N1
\i_SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SDA,
	o => \i_SDA~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\o_DATA[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]~reg0feeder_combout\ = \i_SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SDA~input_o\,
	combout => \o_DATA[0]~reg0feeder_combout\);

-- Location: LCCOMB_X2_Y28_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cont(0) $ (VCC)
-- \Add0~1\ = CARRY(cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X21_Y0_N29
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\i_RST~input_o\) # (!\i_ENABLE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_ENABLE~input_o\,
	datad => \i_RST~input_o\,
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G19
\process_0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: FF_X2_Y28_N17
\cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(0));

-- Location: LCCOMB_X2_Y28_N18
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

-- Location: FF_X2_Y28_N19
\cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(1));

-- Location: LCCOMB_X2_Y28_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cont(2) & (\Add0~3\ $ (GND))) # (!cont(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cont(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cont(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X2_Y28_N21
\cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(2));

-- Location: LCCOMB_X2_Y28_N22
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

-- Location: FF_X2_Y28_N23
\cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(3));

-- Location: LCCOMB_X2_Y28_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!cont(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cont(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X2_Y28_N26
\cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cont~0_combout\ = \Add0~8_combout\ $ (((\Equal1~0_combout\ & cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => cont(1),
	datad => \Add0~8_combout\,
	combout => \cont~0_combout\);

-- Location: FF_X2_Y28_N27
\cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \cont~0_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont(4));

-- Location: LCCOMB_X2_Y28_N8
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cont(4) & (cont(0) & (cont(3) & cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => cont(0),
	datac => cont(3),
	datad => cont(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X2_Y28_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cont(4) & (!cont(0) & (!cont(3) & !cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(4),
	datab => cont(0),
	datac => cont(3),
	datad => cont(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y28_N12
\o_DATA[15]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[15]~16_combout\ = (cont(1) & (\Equal1~0_combout\)) # (!cont(1) & ((\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont(1),
	datab => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \o_DATA[15]~16_combout\);

-- Location: FF_X1_Y28_N17
\o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[0]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[0]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N14
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (cont(1) & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont(1),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X3_Y28_N0
\o_DATA[0]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[0]~enfeeder_combout\);

-- Location: FF_X3_Y28_N1
\o_DATA[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[0]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[0]~en_q\);

-- Location: LCCOMB_X1_Y28_N2
\w_DATA[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[0]~feeder_combout\ = \i_SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SDA~input_o\,
	combout => \w_DATA[0]~feeder_combout\);

-- Location: FF_X1_Y28_N3
\w_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(0));

-- Location: LCCOMB_X1_Y28_N18
\o_DATA[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]~reg0feeder_combout\ = w_DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(0),
	combout => \o_DATA[1]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N19
\o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[1]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[1]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N6
\o_DATA[1]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[1]~enfeeder_combout\);

-- Location: FF_X3_Y28_N7
\o_DATA[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[1]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[1]~en_q\);

-- Location: LCCOMB_X1_Y28_N4
\w_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[1]~feeder_combout\ = w_DATA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(0),
	combout => \w_DATA[1]~feeder_combout\);

-- Location: FF_X1_Y28_N5
\w_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(1));

-- Location: FF_X2_Y28_N25
\o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => w_DATA(1),
	sload => VCC,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[2]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N4
\o_DATA[2]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[2]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[2]~enfeeder_combout\);

-- Location: FF_X3_Y28_N5
\o_DATA[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[2]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[2]~en_q\);

-- Location: LCCOMB_X1_Y28_N6
\w_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[2]~feeder_combout\ = w_DATA(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_DATA(1),
	combout => \w_DATA[2]~feeder_combout\);

-- Location: FF_X1_Y28_N7
\w_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(2));

-- Location: LCCOMB_X1_Y28_N8
\o_DATA[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[3]~reg0feeder_combout\ = w_DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(2),
	combout => \o_DATA[3]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N9
\o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[3]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[3]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N30
\o_DATA[3]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[3]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[3]~enfeeder_combout\);

-- Location: FF_X3_Y28_N31
\o_DATA[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[3]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[3]~en_q\);

-- Location: LCCOMB_X1_Y28_N20
\w_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[3]~feeder_combout\ = w_DATA(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(2),
	combout => \w_DATA[3]~feeder_combout\);

-- Location: FF_X1_Y28_N21
\w_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(3));

-- Location: LCCOMB_X1_Y28_N26
\o_DATA[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[4]~reg0feeder_combout\ = w_DATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(3),
	combout => \o_DATA[4]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N27
\o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[4]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[4]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N20
\o_DATA[4]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[4]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[4]~enfeeder_combout\);

-- Location: FF_X3_Y28_N21
\o_DATA[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[4]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[4]~en_q\);

-- Location: LCCOMB_X1_Y28_N22
\w_DATA[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[4]~feeder_combout\ = w_DATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(3),
	combout => \w_DATA[4]~feeder_combout\);

-- Location: FF_X1_Y28_N23
\w_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(4));

-- Location: LCCOMB_X1_Y28_N0
\o_DATA[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[5]~reg0feeder_combout\ = w_DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_DATA(4),
	combout => \o_DATA[5]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N1
\o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[5]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[5]~reg0_q\);

-- Location: FF_X2_Y28_N13
\o_DATA[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \Equal1~1_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sload => VCC,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[5]~en_q\);

-- Location: LCCOMB_X1_Y28_N28
\w_DATA[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[5]~feeder_combout\ = w_DATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_DATA(4),
	combout => \w_DATA[5]~feeder_combout\);

-- Location: FF_X1_Y28_N29
\w_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(5));

-- Location: LCCOMB_X2_Y28_N6
\o_DATA[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[6]~reg0feeder_combout\ = w_DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(5),
	combout => \o_DATA[6]~reg0feeder_combout\);

-- Location: FF_X2_Y28_N7
\o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[6]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[6]~reg0_q\);

-- Location: LCCOMB_X2_Y28_N0
\o_DATA[6]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[6]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[6]~enfeeder_combout\);

-- Location: FF_X2_Y28_N1
\o_DATA[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[6]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[6]~en_q\);

-- Location: LCCOMB_X1_Y28_N14
\w_DATA[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[6]~feeder_combout\ = w_DATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(5),
	combout => \w_DATA[6]~feeder_combout\);

-- Location: FF_X1_Y28_N15
\w_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(6));

-- Location: LCCOMB_X1_Y28_N30
\o_DATA[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[7]~reg0feeder_combout\ = w_DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_DATA(6),
	combout => \o_DATA[7]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N31
\o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[7]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[7]~reg0_q\);

-- Location: LCCOMB_X2_Y28_N30
\o_DATA[7]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[7]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[7]~enfeeder_combout\);

-- Location: FF_X2_Y28_N31
\o_DATA[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[7]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[7]~en_q\);

-- Location: LCCOMB_X4_Y28_N4
\w_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[7]~feeder_combout\ = w_DATA(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(6),
	combout => \w_DATA[7]~feeder_combout\);

-- Location: FF_X4_Y28_N5
\w_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(7));

-- Location: LCCOMB_X3_Y28_N2
\o_DATA[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[8]~reg0feeder_combout\ = w_DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(7),
	combout => \o_DATA[8]~reg0feeder_combout\);

-- Location: FF_X3_Y28_N3
\o_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[8]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[8]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N8
\o_DATA[8]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[8]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[8]~enfeeder_combout\);

-- Location: FF_X3_Y28_N9
\o_DATA[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[8]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[8]~en_q\);

-- Location: LCCOMB_X4_Y28_N6
\w_DATA[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[8]~feeder_combout\ = w_DATA(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_DATA(7),
	combout => \w_DATA[8]~feeder_combout\);

-- Location: FF_X4_Y28_N7
\w_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(8));

-- Location: LCCOMB_X3_Y28_N26
\o_DATA[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[9]~reg0feeder_combout\ = w_DATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(8),
	combout => \o_DATA[9]~reg0feeder_combout\);

-- Location: FF_X3_Y28_N27
\o_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[9]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[9]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N24
\o_DATA[9]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[9]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[9]~enfeeder_combout\);

-- Location: FF_X3_Y28_N25
\o_DATA[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[9]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[9]~en_q\);

-- Location: LCCOMB_X4_Y28_N28
\w_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[9]~feeder_combout\ = w_DATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(8),
	combout => \w_DATA[9]~feeder_combout\);

-- Location: FF_X4_Y28_N29
\w_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(9));

-- Location: LCCOMB_X3_Y28_N18
\o_DATA[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[10]~reg0feeder_combout\ = w_DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(9),
	combout => \o_DATA[10]~reg0feeder_combout\);

-- Location: FF_X3_Y28_N19
\o_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[10]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[10]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N12
\o_DATA[10]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[10]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[10]~enfeeder_combout\);

-- Location: FF_X3_Y28_N13
\o_DATA[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[10]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[10]~en_q\);

-- Location: LCCOMB_X4_Y28_N18
\w_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[10]~feeder_combout\ = w_DATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(9),
	combout => \w_DATA[10]~feeder_combout\);

-- Location: FF_X4_Y28_N19
\w_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(10));

-- Location: LCCOMB_X3_Y28_N22
\o_DATA[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[11]~reg0feeder_combout\ = w_DATA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(10),
	combout => \o_DATA[11]~reg0feeder_combout\);

-- Location: FF_X3_Y28_N23
\o_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[11]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[11]~reg0_q\);

-- Location: LCCOMB_X2_Y28_N4
\o_DATA[11]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[11]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[11]~enfeeder_combout\);

-- Location: FF_X2_Y28_N5
\o_DATA[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[11]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[11]~en_q\);

-- Location: LCCOMB_X4_Y28_N24
\w_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[11]~feeder_combout\ = w_DATA(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(10),
	combout => \w_DATA[11]~feeder_combout\);

-- Location: FF_X4_Y28_N25
\w_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(11));

-- Location: LCCOMB_X3_Y28_N28
\o_DATA[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[12]~reg0feeder_combout\ = w_DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(11),
	combout => \o_DATA[12]~reg0feeder_combout\);

-- Location: FF_X3_Y28_N29
\o_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[12]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[12]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N10
\o_DATA[12]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[12]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[12]~enfeeder_combout\);

-- Location: FF_X3_Y28_N11
\o_DATA[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[12]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[12]~en_q\);

-- Location: LCCOMB_X4_Y28_N22
\w_DATA[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[12]~feeder_combout\ = w_DATA(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(11),
	combout => \w_DATA[12]~feeder_combout\);

-- Location: FF_X4_Y28_N23
\w_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(12));

-- Location: LCCOMB_X2_Y28_N14
\o_DATA[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[13]~reg0feeder_combout\ = w_DATA(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(12),
	combout => \o_DATA[13]~reg0feeder_combout\);

-- Location: FF_X2_Y28_N15
\o_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[13]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[13]~reg0_q\);

-- Location: LCCOMB_X3_Y28_N16
\o_DATA[13]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[13]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[13]~enfeeder_combout\);

-- Location: FF_X3_Y28_N17
\o_DATA[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[13]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[13]~en_q\);

-- Location: LCCOMB_X1_Y28_N24
\w_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[13]~feeder_combout\ = w_DATA(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(12),
	combout => \w_DATA[13]~feeder_combout\);

-- Location: FF_X1_Y28_N25
\w_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(13));

-- Location: LCCOMB_X2_Y28_N28
\o_DATA[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[14]~reg0feeder_combout\ = w_DATA(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(13),
	combout => \o_DATA[14]~reg0feeder_combout\);

-- Location: FF_X2_Y28_N29
\o_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[14]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[14]~reg0_q\);

-- Location: LCCOMB_X2_Y28_N2
\o_DATA[14]~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[14]~enfeeder_combout\ = \Equal1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~1_combout\,
	combout => \o_DATA[14]~enfeeder_combout\);

-- Location: FF_X2_Y28_N3
\o_DATA[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[14]~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[14]~en_q\);

-- Location: LCCOMB_X1_Y28_N10
\w_DATA[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w_DATA[14]~feeder_combout\ = w_DATA(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(13),
	combout => \w_DATA[14]~feeder_combout\);

-- Location: FF_X1_Y28_N11
\w_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \w_DATA[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_DATA(14));

-- Location: LCCOMB_X1_Y28_N12
\o_DATA[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[15]~reg0feeder_combout\ = w_DATA(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => w_DATA(14),
	combout => \o_DATA[15]~reg0feeder_combout\);

-- Location: FF_X1_Y28_N13
\o_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_DATA[15]~reg0feeder_combout\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[15]~reg0_q\);

-- Location: FF_X3_Y28_N15
\o_DATA[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \Equal1~1_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \o_DATA[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[15]~en_q\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;

ww_o_DATA(8) <= \o_DATA[8]~output_o\;

ww_o_DATA(9) <= \o_DATA[9]~output_o\;

ww_o_DATA(10) <= \o_DATA[10]~output_o\;

ww_o_DATA(11) <= \o_DATA[11]~output_o\;

ww_o_DATA(12) <= \o_DATA[12]~output_o\;

ww_o_DATA(13) <= \o_DATA[13]~output_o\;

ww_o_DATA(14) <= \o_DATA[14]~output_o\;

ww_o_DATA(15) <= \o_DATA[15]~output_o\;
END structure;


