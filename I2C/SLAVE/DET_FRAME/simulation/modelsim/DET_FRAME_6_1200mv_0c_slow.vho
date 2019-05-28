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

-- DATE "11/28/2018 21:47:16"

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

ENTITY 	DET_FRAME IS
    PORT (
	i_SDA : IN std_logic;
	i_SCL : IN std_logic;
	i_RST : IN std_logic;
	i_CLK : IN std_logic;
	o_ENABLE : OUT std_logic
	);
END DET_FRAME;

-- Design Ports Information
-- o_ENABLE	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SDA	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DET_FRAME IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_SDA : std_logic;
SIGNAL ww_i_SCL : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_o_ENABLE : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_ENABLE~output_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_SDA~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_S~feeder_combout\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_T~feeder_combout\ : std_logic;
SIGNAL \SCL_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \o_ENABLE~0_combout\ : std_logic;
SIGNAL \SDA_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \SDA_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \SDA_I2C|w_SINAL_S~feeder_combout\ : std_logic;
SIGNAL \SDA_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \SDA_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \o_ENABLE~1_combout\ : std_logic;
SIGNAL \o_ENABLE~2_combout\ : std_logic;
SIGNAL \o_ENABLE$latch~combout\ : std_logic;

BEGIN

ww_i_SDA <= i_SDA;
ww_i_SCL <= i_SCL;
ww_i_RST <= i_RST;
ww_i_CLK <= i_CLK;
o_ENABLE <= ww_o_ENABLE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X0_Y13_N16
\o_ENABLE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ENABLE$latch~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE~output_o\);

-- Location: IOIBUF_X0_Y13_N8
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\i_SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SDA,
	o => \i_SDA~input_o\);

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

-- Location: IOIBUF_X0_Y13_N1
\i_SCL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SCL,
	o => \i_SCL~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\SCL_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCL_I2C|w_SINAL_R~feeder_combout\ = \i_SCL~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SCL~input_o\,
	combout => \SCL_I2C|w_SINAL_R~feeder_combout\);

-- Location: FF_X1_Y13_N17
\SCL_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \SCL_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL_I2C|w_SINAL_R~q\);

-- Location: LCCOMB_X1_Y13_N14
\SCL_I2C|w_SINAL_S~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCL_I2C|w_SINAL_S~feeder_combout\ = \SCL_I2C|w_SINAL_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCL_I2C|w_SINAL_R~q\,
	combout => \SCL_I2C|w_SINAL_S~feeder_combout\);

-- Location: FF_X1_Y13_N15
\SCL_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \SCL_I2C|w_SINAL_S~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL_I2C|w_SINAL_S~q\);

-- Location: LCCOMB_X1_Y13_N24
\SCL_I2C|w_SINAL_T~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCL_I2C|w_SINAL_T~feeder_combout\ = \SCL_I2C|w_SINAL_S~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SCL_I2C|w_SINAL_S~q\,
	combout => \SCL_I2C|w_SINAL_T~feeder_combout\);

-- Location: FF_X1_Y13_N25
\SCL_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \SCL_I2C|w_SINAL_T~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X1_Y13_N20
\o_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE~0_combout\ = (\i_SDA~input_o\) # ((\SCL_I2C|w_SINAL_S~q\) # (!\SCL_I2C|w_SINAL_T~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SDA~input_o\,
	datac => \SCL_I2C|w_SINAL_S~q\,
	datad => \SCL_I2C|w_SINAL_T~q\,
	combout => \o_ENABLE~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\SDA_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA_I2C|w_SINAL_R~feeder_combout\ = \i_SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SDA~input_o\,
	combout => \SDA_I2C|w_SINAL_R~feeder_combout\);

-- Location: FF_X1_Y13_N19
\SDA_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \SDA_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA_I2C|w_SINAL_R~q\);

-- Location: LCCOMB_X1_Y13_N26
\SDA_I2C|w_SINAL_S~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SDA_I2C|w_SINAL_S~feeder_combout\ = \SDA_I2C|w_SINAL_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA_I2C|w_SINAL_R~q\,
	combout => \SDA_I2C|w_SINAL_S~feeder_combout\);

-- Location: FF_X1_Y13_N27
\SDA_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \SDA_I2C|w_SINAL_S~feeder_combout\,
	clrn => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA_I2C|w_SINAL_S~q\);

-- Location: FF_X1_Y13_N23
\SDA_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \SDA_I2C|w_SINAL_S~q\,
	clrn => \i_RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X1_Y13_N28
\o_ENABLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE~1_combout\ = (\SDA_I2C|w_SINAL_S~q\ & (\i_SCL~input_o\ & ((\SCL_I2C|w_SINAL_S~q\) # (!\SCL_I2C|w_SINAL_T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA_I2C|w_SINAL_S~q\,
	datab => \i_SCL~input_o\,
	datac => \SCL_I2C|w_SINAL_S~q\,
	datad => \SCL_I2C|w_SINAL_T~q\,
	combout => \o_ENABLE~1_combout\);

-- Location: LCCOMB_X1_Y13_N22
\o_ENABLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE~2_combout\ = (((!\SDA_I2C|w_SINAL_T~q\ & \o_ENABLE~1_combout\)) # (!\o_ENABLE~0_combout\)) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \o_ENABLE~0_combout\,
	datac => \SDA_I2C|w_SINAL_T~q\,
	datad => \o_ENABLE~1_combout\,
	combout => \o_ENABLE~2_combout\);

-- Location: LCCOMB_X1_Y13_N30
\o_ENABLE$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE$latch~combout\ = (\o_ENABLE~2_combout\ & ((!\o_ENABLE~0_combout\))) # (!\o_ENABLE~2_combout\ & (\o_ENABLE$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_ENABLE$latch~combout\,
	datac => \o_ENABLE~2_combout\,
	datad => \o_ENABLE~0_combout\,
	combout => \o_ENABLE$latch~combout\);

ww_o_ENABLE <= \o_ENABLE~output_o\;
END structure;


