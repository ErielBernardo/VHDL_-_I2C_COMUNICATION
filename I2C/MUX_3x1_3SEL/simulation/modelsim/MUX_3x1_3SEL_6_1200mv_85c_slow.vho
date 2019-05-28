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

-- DATE "10/24/2018 19:24:32"

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

ENTITY 	MUX_3x1_3SEL IS
    PORT (
	i_A : IN std_logic_vector(7 DOWNTO 0);
	i_B : IN std_logic_vector(7 DOWNTO 0);
	i_C : IN std_logic_vector(7 DOWNTO 0);
	i_SELA : IN std_logic;
	i_SELB : IN std_logic;
	i_SELC : IN std_logic;
	o_ID : OUT std_logic_vector(7 DOWNTO 0);
	o_S : OUT std_logic_vector(7 DOWNTO 0)
	);
END MUX_3x1_3SEL;

-- Design Ports Information
-- o_ID[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ID[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[6]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[7]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELC	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELA	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELB	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX_3x1_3SEL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_SELA : std_logic;
SIGNAL ww_i_SELB : std_logic;
SIGNAL ww_i_SELC : std_logic;
SIGNAL ww_o_ID : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \o_ID[0]~output_o\ : std_logic;
SIGNAL \o_ID[1]~output_o\ : std_logic;
SIGNAL \o_ID[2]~output_o\ : std_logic;
SIGNAL \o_ID[3]~output_o\ : std_logic;
SIGNAL \o_ID[4]~output_o\ : std_logic;
SIGNAL \o_ID[5]~output_o\ : std_logic;
SIGNAL \o_ID[6]~output_o\ : std_logic;
SIGNAL \o_ID[7]~output_o\ : std_logic;
SIGNAL \o_S[0]~output_o\ : std_logic;
SIGNAL \o_S[1]~output_o\ : std_logic;
SIGNAL \o_S[2]~output_o\ : std_logic;
SIGNAL \o_S[3]~output_o\ : std_logic;
SIGNAL \o_S[4]~output_o\ : std_logic;
SIGNAL \o_S[5]~output_o\ : std_logic;
SIGNAL \o_S[6]~output_o\ : std_logic;
SIGNAL \o_S[7]~output_o\ : std_logic;
SIGNAL \i_SELC~input_o\ : std_logic;
SIGNAL \i_SELB~input_o\ : std_logic;
SIGNAL \i_SELA~input_o\ : std_logic;
SIGNAL \o_ID[7]~0_combout\ : std_logic;
SIGNAL \o_ID[7]~1_combout\ : std_logic;
SIGNAL \o_ID[7]~2_combout\ : std_logic;
SIGNAL \o_ID[7]~3_combout\ : std_logic;
SIGNAL \o_ID[7]~4_combout\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \o_S[0]~0_combout\ : std_logic;
SIGNAL \i_C[0]~input_o\ : std_logic;
SIGNAL \o_S[0]~1_combout\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \o_S[1]~2_combout\ : std_logic;
SIGNAL \i_C[1]~input_o\ : std_logic;
SIGNAL \o_S[1]~3_combout\ : std_logic;
SIGNAL \i_C[2]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \o_S[2]~4_combout\ : std_logic;
SIGNAL \o_S[2]~5_combout\ : std_logic;
SIGNAL \i_C[3]~input_o\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \o_S[3]~6_combout\ : std_logic;
SIGNAL \o_S[3]~7_combout\ : std_logic;
SIGNAL \i_C[4]~input_o\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \o_S[4]~8_combout\ : std_logic;
SIGNAL \o_S[4]~9_combout\ : std_logic;
SIGNAL \i_C[5]~input_o\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \o_S[5]~10_combout\ : std_logic;
SIGNAL \o_S[5]~11_combout\ : std_logic;
SIGNAL \i_C[6]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \o_S[6]~12_combout\ : std_logic;
SIGNAL \o_S[6]~13_combout\ : std_logic;
SIGNAL \i_C[7]~input_o\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \o_S[7]~14_combout\ : std_logic;
SIGNAL \o_S[7]~15_combout\ : std_logic;
SIGNAL w_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_o_ID[7]~4_combout\ : std_logic;
SIGNAL \ALT_INV_o_ID[7]~1_combout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_C <= i_C;
ww_i_SELA <= i_SELA;
ww_i_SELB <= i_SELB;
ww_i_SELC <= i_SELC;
o_ID <= ww_o_ID;
o_S <= ww_o_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_ID[7]~4_combout\ <= NOT \o_ID[7]~4_combout\;
\ALT_INV_o_ID[7]~1_combout\ <= NOT \o_ID[7]~1_combout\;

-- Location: IOOBUF_X0_Y12_N16
\o_ID[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ID[7]~0_combout\,
	devoe => ww_devoe,
	o => \o_ID[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\o_ID[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ID[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\o_ID[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ID[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\o_ID[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_ID[7]~1_combout\,
	devoe => ww_devoe,
	o => \o_ID[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\o_ID[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ID[7]~0_combout\,
	devoe => ww_devoe,
	o => \o_ID[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\o_ID[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ID[7]~2_combout\,
	devoe => ww_devoe,
	o => \o_ID[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\o_ID[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ID[7]~3_combout\,
	devoe => ww_devoe,
	o => \o_ID[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\o_ID[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_ID[7]~4_combout\,
	devoe => ww_devoe,
	o => \o_ID[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\o_S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[0]~1_combout\,
	devoe => ww_devoe,
	o => \o_S[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\o_S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[1]~3_combout\,
	devoe => ww_devoe,
	o => \o_S[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\o_S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[2]~5_combout\,
	devoe => ww_devoe,
	o => \o_S[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\o_S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[3]~7_combout\,
	devoe => ww_devoe,
	o => \o_S[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\o_S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[4]~9_combout\,
	devoe => ww_devoe,
	o => \o_S[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[5]~11_combout\,
	devoe => ww_devoe,
	o => \o_S[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\o_S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[6]~13_combout\,
	devoe => ww_devoe,
	o => \o_S[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\o_S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S[7]~15_combout\,
	devoe => ww_devoe,
	o => \o_S[7]~output_o\);

-- Location: IOIBUF_X0_Y10_N8
\i_SELC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELC,
	o => \i_SELC~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\i_SELB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELB,
	o => \i_SELB~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\i_SELA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELA,
	o => \i_SELA~input_o\);

-- Location: LCCOMB_X1_Y10_N8
\o_ID[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ID[7]~0_combout\ = (\i_SELC~input_o\ & (!\i_SELB~input_o\ & !\i_SELA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => \o_ID[7]~0_combout\);

-- Location: LCCOMB_X1_Y10_N26
\o_ID[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ID[7]~1_combout\ = (\i_SELC~input_o\) # ((\i_SELB~input_o\) # (!\i_SELA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => \o_ID[7]~1_combout\);

-- Location: LCCOMB_X1_Y10_N4
\o_ID[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ID[7]~2_combout\ = (!\i_SELA~input_o\ & (\i_SELC~input_o\ $ (\i_SELB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => \o_ID[7]~2_combout\);

-- Location: LCCOMB_X1_Y10_N30
\o_ID[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ID[7]~3_combout\ = (!\i_SELC~input_o\ & (\i_SELB~input_o\ & !\i_SELA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => \o_ID[7]~3_combout\);

-- Location: LCCOMB_X1_Y10_N16
\o_ID[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ID[7]~4_combout\ = (\i_SELC~input_o\ & ((\i_SELB~input_o\) # (\i_SELA~input_o\))) # (!\i_SELC~input_o\ & (\i_SELB~input_o\ $ (!\i_SELA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => \o_ID[7]~4_combout\);

-- Location: IOIBUF_X0_Y10_N1
\i_B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N2
\w_SEL[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- w_SEL(0) = (\i_SELB~input_o\) # (\i_SELC~input_o\ $ (!\i_SELA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => w_SEL(0));

-- Location: IOIBUF_X0_Y9_N15
\i_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N12
\w_SEL[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- w_SEL(1) = (\i_SELC~input_o\) # (\i_SELB~input_o\ $ (!\i_SELA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELC~input_o\,
	datab => \i_SELB~input_o\,
	datac => \i_SELA~input_o\,
	combout => w_SEL(1));

-- Location: LCCOMB_X1_Y10_N6
\o_S[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[0]~0_combout\ = (!w_SEL(1) & ((w_SEL(0) & (\i_B[0]~input_o\)) # (!w_SEL(0) & ((\i_A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[0]~input_o\,
	datab => w_SEL(0),
	datac => \i_A[0]~input_o\,
	datad => w_SEL(1),
	combout => \o_S[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\i_C[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(0),
	o => \i_C[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\o_S[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[0]~1_combout\ = (\o_S[0]~0_combout\) # ((\o_ID[7]~0_combout\ & \i_C[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_S[0]~0_combout\,
	datab => \o_ID[7]~0_combout\,
	datac => \i_C[0]~input_o\,
	combout => \o_S[0]~1_combout\);

-- Location: IOIBUF_X0_Y12_N8
\i_B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\i_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N10
\o_S[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[1]~2_combout\ = (!w_SEL(1) & ((w_SEL(0) & (\i_B[1]~input_o\)) # (!w_SEL(0) & ((\i_A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_SEL(1),
	datab => \i_B[1]~input_o\,
	datac => \i_A[1]~input_o\,
	datad => w_SEL(0),
	combout => \o_S[1]~2_combout\);

-- Location: IOIBUF_X0_Y11_N8
\i_C[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(1),
	o => \i_C[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N20
\o_S[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[1]~3_combout\ = (\o_S[1]~2_combout\) # ((\o_ID[7]~0_combout\ & \i_C[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_S[1]~2_combout\,
	datab => \o_ID[7]~0_combout\,
	datac => \i_C[1]~input_o\,
	combout => \o_S[1]~3_combout\);

-- Location: IOIBUF_X0_Y24_N22
\i_C[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(2),
	o => \i_C[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\i_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\i_B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: LCCOMB_X1_Y21_N0
\o_S[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[2]~4_combout\ = (!w_SEL(1) & ((w_SEL(0) & ((\i_B[2]~input_o\))) # (!w_SEL(0) & (\i_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[2]~input_o\,
	datab => \i_B[2]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \o_S[2]~4_combout\);

-- Location: LCCOMB_X1_Y21_N26
\o_S[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[2]~5_combout\ = (\o_S[2]~4_combout\) # ((\i_C[2]~input_o\ & \o_ID[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[2]~input_o\,
	datac => \o_ID[7]~0_combout\,
	datad => \o_S[2]~4_combout\,
	combout => \o_S[2]~5_combout\);

-- Location: IOIBUF_X0_Y22_N8
\i_C[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(3),
	o => \i_C[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\i_B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\i_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: LCCOMB_X1_Y21_N20
\o_S[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[3]~6_combout\ = (!w_SEL(1) & ((w_SEL(0) & (\i_B[3]~input_o\)) # (!w_SEL(0) & ((\i_A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[3]~input_o\,
	datab => \i_A[3]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \o_S[3]~6_combout\);

-- Location: LCCOMB_X1_Y21_N14
\o_S[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[3]~7_combout\ = (\o_S[3]~6_combout\) # ((\i_C[3]~input_o\ & \o_ID[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_C[3]~input_o\,
	datac => \o_ID[7]~0_combout\,
	datad => \o_S[3]~6_combout\,
	combout => \o_S[3]~7_combout\);

-- Location: IOIBUF_X0_Y23_N8
\i_C[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(4),
	o => \i_C[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\i_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\i_B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: LCCOMB_X1_Y21_N16
\o_S[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[4]~8_combout\ = (!w_SEL(1) & ((w_SEL(0) & ((\i_B[4]~input_o\))) # (!w_SEL(0) & (\i_A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[4]~input_o\,
	datab => w_SEL(1),
	datac => \i_B[4]~input_o\,
	datad => w_SEL(0),
	combout => \o_S[4]~8_combout\);

-- Location: LCCOMB_X1_Y21_N10
\o_S[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[4]~9_combout\ = (\o_S[4]~8_combout\) # ((\i_C[4]~input_o\ & \o_ID[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[4]~input_o\,
	datac => \o_ID[7]~0_combout\,
	datad => \o_S[4]~8_combout\,
	combout => \o_S[4]~9_combout\);

-- Location: IOIBUF_X0_Y26_N15
\i_C[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(5),
	o => \i_C[5]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\i_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\i_B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: LCCOMB_X1_Y21_N28
\o_S[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[5]~10_combout\ = (!w_SEL(1) & ((w_SEL(0) & ((\i_B[5]~input_o\))) # (!w_SEL(0) & (\i_A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[5]~input_o\,
	datab => \i_B[5]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \o_S[5]~10_combout\);

-- Location: LCCOMB_X1_Y21_N30
\o_S[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[5]~11_combout\ = (\o_S[5]~10_combout\) # ((\o_ID[7]~0_combout\ & \i_C[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_ID[7]~0_combout\,
	datac => \i_C[5]~input_o\,
	datad => \o_S[5]~10_combout\,
	combout => \o_S[5]~11_combout\);

-- Location: IOIBUF_X0_Y21_N15
\i_C[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(6),
	o => \i_C[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\i_B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\i_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: LCCOMB_X1_Y21_N24
\o_S[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[6]~12_combout\ = (!w_SEL(1) & ((w_SEL(0) & (\i_B[6]~input_o\)) # (!w_SEL(0) & ((\i_A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[6]~input_o\,
	datab => \i_A[6]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \o_S[6]~12_combout\);

-- Location: LCCOMB_X1_Y21_N18
\o_S[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[6]~13_combout\ = (\o_S[6]~12_combout\) # ((\i_C[6]~input_o\ & \o_ID[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_C[6]~input_o\,
	datac => \o_ID[7]~0_combout\,
	datad => \o_S[6]~12_combout\,
	combout => \o_S[6]~13_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_C[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(7),
	o => \i_C[7]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\i_B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: LCCOMB_X1_Y21_N12
\o_S[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[7]~14_combout\ = (!w_SEL(1) & ((w_SEL(0) & ((\i_B[7]~input_o\))) # (!w_SEL(0) & (\i_A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[7]~input_o\,
	datab => \i_B[7]~input_o\,
	datac => w_SEL(1),
	datad => w_SEL(0),
	combout => \o_S[7]~14_combout\);

-- Location: LCCOMB_X1_Y21_N22
\o_S[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_S[7]~15_combout\ = (\o_S[7]~14_combout\) # ((\i_C[7]~input_o\ & \o_ID[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[7]~input_o\,
	datac => \o_ID[7]~0_combout\,
	datad => \o_S[7]~14_combout\,
	combout => \o_S[7]~15_combout\);

ww_o_ID(0) <= \o_ID[0]~output_o\;

ww_o_ID(1) <= \o_ID[1]~output_o\;

ww_o_ID(2) <= \o_ID[2]~output_o\;

ww_o_ID(3) <= \o_ID[3]~output_o\;

ww_o_ID(4) <= \o_ID[4]~output_o\;

ww_o_ID(5) <= \o_ID[5]~output_o\;

ww_o_ID(6) <= \o_ID[6]~output_o\;

ww_o_ID(7) <= \o_ID[7]~output_o\;

ww_o_S(0) <= \o_S[0]~output_o\;

ww_o_S(1) <= \o_S[1]~output_o\;

ww_o_S(2) <= \o_S[2]~output_o\;

ww_o_S(3) <= \o_S[3]~output_o\;

ww_o_S(4) <= \o_S[4]~output_o\;

ww_o_S(5) <= \o_S[5]~output_o\;

ww_o_S(6) <= \o_S[6]~output_o\;

ww_o_S(7) <= \o_S[7]~output_o\;
END structure;


