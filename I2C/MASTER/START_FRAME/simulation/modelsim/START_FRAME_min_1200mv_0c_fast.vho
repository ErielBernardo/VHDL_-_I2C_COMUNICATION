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

-- DATE "12/03/2018 04:20:17"

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

ENTITY 	START_FRAME IS
    PORT (
	i_RST : IN std_logic;
	i_SCL : IN std_logic;
	i_ENABLE_START : IN std_logic;
	o_CTRL_START : OUT std_logic;
	o_SDA : OUT std_logic
	);
END START_FRAME;

-- Design Ports Information
-- o_CTRL_START	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SDA	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE_START	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF START_FRAME IS
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
SIGNAL ww_i_ENABLE_START : std_logic;
SIGNAL ww_o_CTRL_START : std_logic;
SIGNAL ww_o_SDA : std_logic;
SIGNAL \i_SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_SDA~output_o\ : std_logic;
SIGNAL \o_CTRL_START~output_o\ : std_logic;
SIGNAL \i_ENABLE_START~input_o\ : std_logic;
SIGNAL \done~6_combout\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \done~1_combout\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \done~3_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~_emulated_q\ : std_logic;
SIGNAL \done~2_combout\ : std_logic;
SIGNAL \o_CTRL_START~1_combout\ : std_logic;
SIGNAL \o_SDA_46~combout\ : std_logic;
SIGNAL \o_CTRL_START~0_combout\ : std_logic;
SIGNAL \o_CTRL_START~reg0_q\ : std_logic;
SIGNAL \ALT_INV_i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_o_SDA_46~combout\ : std_logic;
SIGNAL \ALT_INV_done~0_combout\ : std_logic;
SIGNAL \ALT_INV_o_CTRL_START~1_combout\ : std_logic;

BEGIN

ww_i_RST <= i_RST;
ww_i_SCL <= i_SCL;
ww_i_ENABLE_START <= i_ENABLE_START;
o_CTRL_START <= ww_o_CTRL_START;
o_SDA <= ww_o_SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_SCL~input_o\);
\ALT_INV_i_SCL~inputclkctrl_outclk\ <= NOT \i_SCL~inputclkctrl_outclk\;
\ALT_INV_o_SDA_46~combout\ <= NOT \o_SDA_46~combout\;
\ALT_INV_done~0_combout\ <= NOT \done~0_combout\;
\ALT_INV_o_CTRL_START~1_combout\ <= NOT \o_CTRL_START~1_combout\;

-- Location: IOOBUF_X0_Y8_N23
\o_SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_SDA_46~combout\,
	devoe => ww_devoe,
	o => \o_SDA~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\o_CTRL_START~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_CTRL_START~reg0_q\,
	devoe => ww_devoe,
	o => \o_CTRL_START~output_o\);

-- Location: IOIBUF_X0_Y8_N8
\i_ENABLE_START~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE_START,
	o => \i_ENABLE_START~input_o\);

-- Location: LCCOMB_X1_Y8_N10
\done~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~6_combout\ = (!\done~2_combout\ & \i_ENABLE_START~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \done~2_combout\,
	datad => \i_ENABLE_START~input_o\,
	combout => \done~6_combout\);

-- Location: IOIBUF_X0_Y8_N1
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X1_Y8_N6
\done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~1_combout\ = (\i_RST~input_o\ & ((\done~6_combout\) # (\done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \done~6_combout\,
	datac => \i_RST~input_o\,
	datad => \done~1_combout\,
	combout => \done~1_combout\);

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

-- Location: LCCOMB_X1_Y8_N28
\done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~3_combout\ = \done~1_combout\ $ (((!\i_ENABLE_START~input_o\ & \done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~1_combout\,
	datac => \i_ENABLE_START~input_o\,
	datad => \done~2_combout\,
	combout => \done~3_combout\);

-- Location: LCCOMB_X1_Y8_N24
\done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\done~6_combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \done~6_combout\,
	combout => \done~0_combout\);

-- Location: FF_X1_Y8_N29
\done~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \done~3_combout\,
	clrn => \ALT_INV_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~_emulated_q\);

-- Location: LCCOMB_X1_Y8_N2
\done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~2_combout\ = (\i_RST~input_o\ & ((\done~6_combout\) # (\done~1_combout\ $ (\done~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~1_combout\,
	datab => \done~6_combout\,
	datac => \i_RST~input_o\,
	datad => \done~_emulated_q\,
	combout => \done~2_combout\);

-- Location: LCCOMB_X1_Y8_N22
\o_CTRL_START~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_START~1_combout\ = (!\i_ENABLE_START~input_o\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \i_ENABLE_START~input_o\,
	combout => \o_CTRL_START~1_combout\);

-- Location: LCCOMB_X1_Y8_N20
o_SDA_46 : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA_46~combout\ = (!\o_CTRL_START~1_combout\ & ((\o_SDA_46~combout\) # (!\done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \done~2_combout\,
	datac => \o_CTRL_START~1_combout\,
	datad => \o_SDA_46~combout\,
	combout => \o_SDA_46~combout\);

-- Location: LCCOMB_X1_Y8_N16
\o_CTRL_START~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_START~0_combout\ = (\o_CTRL_START~reg0_q\) # (\done~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \o_CTRL_START~reg0_q\,
	datad => \done~2_combout\,
	combout => \o_CTRL_START~0_combout\);

-- Location: FF_X1_Y8_N17
\o_CTRL_START~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_SCL~inputclkctrl_outclk\,
	d => \o_CTRL_START~0_combout\,
	clrn => \ALT_INV_o_CTRL_START~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_CTRL_START~reg0_q\);

ww_o_CTRL_START <= \o_CTRL_START~output_o\;

ww_o_SDA <= \o_SDA~output_o\;
END structure;


