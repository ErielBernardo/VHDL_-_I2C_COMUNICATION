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

-- DATE "12/02/2018 00:13:18"

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

ENTITY 	REG_EN IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_ENABLE : IN std_logic;
	i_D : IN std_logic;
	o_Q : OUT std_logic
	);
END REG_EN;

-- Design Ports Information
-- o_Q	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ENABLE	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_D	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF REG_EN IS
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
SIGNAL ww_i_D : std_logic;
SIGNAL ww_o_Q : std_logic;
SIGNAL \o_Q~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_D~input_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_ENABLE~input_o\ : std_logic;
SIGNAL \o_Q~0_combout\ : std_logic;
SIGNAL \o_Q~reg0_q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_ENABLE <= i_ENABLE;
ww_i_D <= i_D;
o_Q <= ww_o_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N2
\o_Q~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Q~reg0_q\,
	devoe => ww_devoe,
	o => \o_Q~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\i_D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_D,
	o => \i_D~input_o\);

-- Location: IOIBUF_X3_Y29_N1
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\i_ENABLE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ENABLE,
	o => \i_ENABLE~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\o_Q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_Q~0_combout\ = (\i_D~input_o\) # ((\i_ENABLE~input_o\) # (!\i_RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_D~input_o\,
	datab => \i_RST~input_o\,
	datac => \i_ENABLE~input_o\,
	combout => \o_Q~0_combout\);

-- Location: FF_X1_Y26_N1
\o_Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \o_Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Q~reg0_q\);

ww_o_Q <= \o_Q~output_o\;
END structure;


