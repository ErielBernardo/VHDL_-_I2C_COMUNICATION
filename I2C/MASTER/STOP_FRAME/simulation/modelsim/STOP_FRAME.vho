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

-- DATE "12/03/2018 04:54:04"

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

ENTITY 	STOP_FRAME IS
    PORT (
	i_RST : IN std_logic;
	i_SCL : IN std_logic;
	i_ENABLE_STOP : IN std_logic;
	o_CTRL_STOP : BUFFER std_logic;
	o_SDA : BUFFER std_logic
	);
END STOP_FRAME;

-- Design Ports Information
-- o_CTRL_STOP	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_SDA	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE_STOP	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF STOP_FRAME IS
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
SIGNAL ww_i_ENABLE_STOP : std_logic;
SIGNAL ww_o_CTRL_STOP : std_logic;
SIGNAL ww_o_SDA : std_logic;
SIGNAL \i_SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_CTRL_STOP~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_SDA~output_o\ : std_logic;
SIGNAL \o_CTRL_STOP~output_o\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \o_SDA~reg0feeder_combout\ : std_logic;
SIGNAL \i_ENABLE_STOP~input_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \o_CTRL_STOP~0_combout\ : std_logic;
SIGNAL \o_CTRL_STOP~0clkctrl_outclk\ : std_logic;
SIGNAL \o_SDA~reg0_q\ : std_logic;
SIGNAL \o_SDA~enfeeder_combout\ : std_logic;
SIGNAL \o_SDA~en_q\ : std_logic;
SIGNAL \o_CTRL_STOP~reg0feeder_combout\ : std_logic;
SIGNAL \o_CTRL_STOP~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_CTRL_STOP~0clkctrl_outclk\ : std_logic;

BEGIN

ww_i_RST <= i_RST;
ww_i_SCL <= i_SCL;
ww_i_ENABLE_STOP <= i_ENABLE_STOP;
o_CTRL_STOP <= ww_o_CTRL_STOP;
o_SDA <= ww_o_SDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_SCL~input_o\);

\o_CTRL_STOP~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \o_CTRL_STOP~0_combout\);
\ALT_INV_o_CTRL_STOP~0clkctrl_outclk\ <= NOT \o_CTRL_STOP~0clkctrl_outclk\;

-- Location: IOOBUF_X35_Y29_N16
\o_SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_SDA~reg0_q\,
	oe => \o_SDA~en_q\,
	devoe => ww_devoe,
	o => \o_SDA~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\o_CTRL_STOP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_CTRL_STOP~reg0_q\,
	devoe => ww_devoe,
	o => \o_CTRL_STOP~output_o\);

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

-- Location: LCCOMB_X35_Y28_N0
\o_SDA~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \o_SDA~reg0feeder_combout\);

-- Location: IOIBUF_X5_Y29_N1
\i_ENABLE_STOP~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE_STOP,
	o => \i_ENABLE_STOP~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X8_Y28_N8
\o_CTRL_STOP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_STOP~0_combout\ = (!\i_RST~input_o\) # (!\i_ENABLE_STOP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ENABLE_STOP~input_o\,
	datad => \i_RST~input_o\,
	combout => \o_CTRL_STOP~0_combout\);

-- Location: CLKCTRL_G17
\o_CTRL_STOP~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \o_CTRL_STOP~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \o_CTRL_STOP~0clkctrl_outclk\);

-- Location: FF_X35_Y28_N1
\o_SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_SDA~reg0feeder_combout\,
	clrn => \ALT_INV_o_CTRL_STOP~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_SDA~reg0_q\);

-- Location: LCCOMB_X35_Y28_N2
\o_SDA~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_SDA~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \o_SDA~enfeeder_combout\);

-- Location: FF_X35_Y28_N3
\o_SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_SDA~enfeeder_combout\,
	clrn => \ALT_INV_o_CTRL_STOP~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_SDA~en_q\);

-- Location: LCCOMB_X1_Y23_N16
\o_CTRL_STOP~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_CTRL_STOP~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \o_CTRL_STOP~reg0feeder_combout\);

-- Location: FF_X1_Y23_N17
\o_CTRL_STOP~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \o_CTRL_STOP~reg0feeder_combout\,
	clrn => \ALT_INV_o_CTRL_STOP~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_CTRL_STOP~reg0_q\);

ww_o_CTRL_STOP <= \o_CTRL_STOP~output_o\;

ww_o_SDA <= \o_SDA~output_o\;
END structure;


