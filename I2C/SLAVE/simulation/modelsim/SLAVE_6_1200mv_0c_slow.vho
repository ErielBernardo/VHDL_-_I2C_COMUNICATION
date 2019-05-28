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

-- DATE "12/02/2018 07:01:14"

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

ENTITY 	SLAVE IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_SCL : IN std_logic;
	i_SDA : IN std_logic;
	o_ENABLE : BUFFER std_logic;
	o_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END SLAVE;

-- Design Ports Information
-- o_ENABLE	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SCL	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SDA	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SLAVE IS
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
SIGNAL ww_i_SCL : std_logic;
SIGNAL ww_i_SDA : std_logic;
SIGNAL ww_o_ENABLE : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_STM_SLAVE|Selector10~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \o_ENABLE~output_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_SCL~input_o\ : std_logic;
SIGNAL \i_SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SDA~input_o\ : std_logic;
SIGNAL \U_S2P|Add0~0_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_DET_FRAME|SCL_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \U_DET_FRAME|SCL_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \U_DET_FRAME|SCL_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \U_DET_FRAME|o_ENABLE~0_combout\ : std_logic;
SIGNAL \U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\ : std_logic;
SIGNAL \U_DET_FRAME|SDA_I2C|w_SINAL_R~q\ : std_logic;
SIGNAL \U_DET_FRAME|SDA_I2C|w_SINAL_S~q\ : std_logic;
SIGNAL \U_DET_FRAME|SDA_I2C|w_SINAL_T~q\ : std_logic;
SIGNAL \U_DET_FRAME|o_ENABLE~1_combout\ : std_logic;
SIGNAL \U_DET_FRAME|o_ENABLE~2_combout\ : std_logic;
SIGNAL \U_DET_FRAME|o_ENABLE~combout\ : std_logic;
SIGNAL \U_S2P|process_0~0_combout\ : std_logic;
SIGNAL \U_S2P|Add0~1\ : std_logic;
SIGNAL \U_S2P|Add0~2_combout\ : std_logic;
SIGNAL \U_S2P|Add0~3\ : std_logic;
SIGNAL \U_S2P|Add0~4_combout\ : std_logic;
SIGNAL \U_S2P|Add0~5\ : std_logic;
SIGNAL \U_S2P|Add0~6_combout\ : std_logic;
SIGNAL \U_S2P|Add0~7\ : std_logic;
SIGNAL \U_S2P|Add0~8_combout\ : std_logic;
SIGNAL \U_S2P|cont~0_combout\ : std_logic;
SIGNAL \U_S2P|Equal1~0_combout\ : std_logic;
SIGNAL \U_S2P|Equal0~0_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[15]~0_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \U_S2P|w_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \U_S2P|w_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \U_S2P|w_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[7]~reg0_q\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal0~2_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[8]~reg0feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[8]~reg0_q\ : std_logic;
SIGNAL \U_S2P|w_DATA[8]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[10]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[9]~reg0_q\ : std_logic;
SIGNAL \U_S2P|w_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[11]~reg0feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[11]~reg0_q\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal0~1_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[12]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|w_DATA[14]~feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[15]~reg0feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[15]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[14]~reg0feeder_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[14]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[12]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[13]~reg0_q\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal0~0_combout\ : std_logic;
SIGNAL \U_S2P|o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \U_S2P|o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal0~3_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal0~4_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_IDLE~0_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_IDLE~1_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_IDLE~2_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state~16_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_SND_DATA~q\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal1~0_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|Equal1~1_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state~17_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_NULL~q\ : std_logic;
SIGNAL \U_STM_SLAVE|Selector10~2_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|Selector10~3_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|stage~q\ : std_logic;
SIGNAL \U_STM_SLAVE|state~18_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state~19_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_IDLE~q\ : std_logic;
SIGNAL \U_STM_SLAVE|state~20_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state~21_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_ID~q\ : std_logic;
SIGNAL \U_STM_SLAVE|state~22_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_RW~q\ : std_logic;
SIGNAL \U_STM_SLAVE|state~23_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|state.st_RC_DATA~q\ : std_logic;
SIGNAL \U_STM_SLAVE|Selector10~1_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|Selector10~1clkctrl_outclk\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[1]_200~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \U_STM_SLAVE|Selector10~0_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|w_ENABLE~0_combout\ : std_logic;
SIGNAL \U_STM_SLAVE|w_ENABLE~combout\ : std_logic;
SIGNAL \U_S2P|w_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U_S2P|cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_S2P|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CLK~input_o\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_SCL <= i_SCL;
ww_i_SDA <= i_SDA;
o_ENABLE <= ww_o_ENABLE;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_SCL~input_o\);

\U_STM_SLAVE|Selector10~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_STM_SLAVE|Selector10~1_combout\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\U_S2P|ALT_INV_process_0~0_combout\ <= NOT \U_S2P|process_0~0_combout\;
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;
\ALT_INV_i_CLK~input_o\ <= NOT \i_CLK~input_o\;

-- Location: IOOBUF_X26_Y29_N30
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[0]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[1]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[2]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[3]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[4]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[5]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[6]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|o_DATA[7]$latch~combout\,
	oe => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_ENABLE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_STM_SLAVE|w_ENABLE~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE~output_o\);

-- Location: IOIBUF_X0_Y14_N15
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

-- Location: IOIBUF_X21_Y29_N29
\i_SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SDA,
	o => \i_SDA~input_o\);

-- Location: LCCOMB_X23_Y27_N18
\U_S2P|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Add0~0_combout\ = \U_S2P|cont\(0) $ (VCC)
-- \U_S2P|Add0~1\ = CARRY(\U_S2P|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_S2P|cont\(0),
	datad => VCC,
	combout => \U_S2P|Add0~0_combout\,
	cout => \U_S2P|Add0~1\);

-- Location: IOIBUF_X0_Y14_N8
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X23_Y16_N4
\U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\ = \i_SCL~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_SCL~input_o\,
	combout => \U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\);

-- Location: CLKCTRL_G1
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

-- Location: FF_X23_Y16_N5
\U_DET_FRAME|SCL_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_DET_FRAME|SCL_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SCL_I2C|w_SINAL_R~q\);

-- Location: FF_X23_Y27_N5
\U_DET_FRAME|SCL_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_DET_FRAME|SCL_I2C|w_SINAL_R~q\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SCL_I2C|w_SINAL_S~q\);

-- Location: FF_X23_Y27_N31
\U_DET_FRAME|SCL_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SCL_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X23_Y27_N30
\U_DET_FRAME|o_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|o_ENABLE~0_combout\ = (\i_SDA~input_o\) # ((\U_DET_FRAME|SCL_I2C|w_SINAL_S~q\) # (!\U_DET_FRAME|SCL_I2C|w_SINAL_T~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SDA~input_o\,
	datac => \U_DET_FRAME|SCL_I2C|w_SINAL_T~q\,
	datad => \U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	combout => \U_DET_FRAME|o_ENABLE~0_combout\);

-- Location: LCCOMB_X23_Y26_N30
\U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\ = \i_SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_SDA~input_o\,
	combout => \U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\);

-- Location: FF_X23_Y26_N31
\U_DET_FRAME|SDA_I2C|w_SINAL_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U_DET_FRAME|SDA_I2C|w_SINAL_R~feeder_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SDA_I2C|w_SINAL_R~q\);

-- Location: FF_X23_Y26_N5
\U_DET_FRAME|SDA_I2C|w_SINAL_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_DET_FRAME|SDA_I2C|w_SINAL_R~q\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SDA_I2C|w_SINAL_S~q\);

-- Location: FF_X23_Y26_N1
\U_DET_FRAME|SDA_I2C|w_SINAL_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	asdata => \U_DET_FRAME|SDA_I2C|w_SINAL_S~q\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DET_FRAME|SDA_I2C|w_SINAL_T~q\);

-- Location: LCCOMB_X23_Y26_N24
\U_DET_FRAME|o_ENABLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|o_ENABLE~1_combout\ = (\U_DET_FRAME|SDA_I2C|w_SINAL_S~q\ & (\i_SCL~input_o\ & ((\U_DET_FRAME|SCL_I2C|w_SINAL_S~q\) # (!\U_DET_FRAME|SCL_I2C|w_SINAL_T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DET_FRAME|SCL_I2C|w_SINAL_S~q\,
	datab => \U_DET_FRAME|SCL_I2C|w_SINAL_T~q\,
	datac => \U_DET_FRAME|SDA_I2C|w_SINAL_S~q\,
	datad => \i_SCL~input_o\,
	combout => \U_DET_FRAME|o_ENABLE~1_combout\);

-- Location: LCCOMB_X23_Y26_N0
\U_DET_FRAME|o_ENABLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|o_ENABLE~2_combout\ = (((!\U_DET_FRAME|SDA_I2C|w_SINAL_T~q\ & \U_DET_FRAME|o_ENABLE~1_combout\)) # (!\i_RST~input_o\)) # (!\U_DET_FRAME|o_ENABLE~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DET_FRAME|o_ENABLE~0_combout\,
	datab => \i_RST~input_o\,
	datac => \U_DET_FRAME|SDA_I2C|w_SINAL_T~q\,
	datad => \U_DET_FRAME|o_ENABLE~1_combout\,
	combout => \U_DET_FRAME|o_ENABLE~2_combout\);

-- Location: LCCOMB_X23_Y27_N2
\U_DET_FRAME|o_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_DET_FRAME|o_ENABLE~combout\ = (\U_DET_FRAME|o_ENABLE~2_combout\ & ((!\U_DET_FRAME|o_ENABLE~0_combout\))) # (!\U_DET_FRAME|o_ENABLE~2_combout\ & (\U_DET_FRAME|o_ENABLE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DET_FRAME|o_ENABLE~combout\,
	datac => \U_DET_FRAME|o_ENABLE~0_combout\,
	datad => \U_DET_FRAME|o_ENABLE~2_combout\,
	combout => \U_DET_FRAME|o_ENABLE~combout\);

-- Location: LCCOMB_X23_Y27_N12
\U_S2P|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|process_0~0_combout\ = (!\U_DET_FRAME|o_ENABLE~combout\) # (!\i_RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_S2P|process_0~0_combout\);

-- Location: FF_X23_Y27_N19
\U_S2P|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|Add0~0_combout\,
	clrn => \U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|cont\(0));

-- Location: LCCOMB_X23_Y27_N20
\U_S2P|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Add0~2_combout\ = (\U_S2P|cont\(1) & (!\U_S2P|Add0~1\)) # (!\U_S2P|cont\(1) & ((\U_S2P|Add0~1\) # (GND)))
-- \U_S2P|Add0~3\ = CARRY((!\U_S2P|Add0~1\) # (!\U_S2P|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(1),
	datad => VCC,
	cin => \U_S2P|Add0~1\,
	combout => \U_S2P|Add0~2_combout\,
	cout => \U_S2P|Add0~3\);

-- Location: FF_X23_Y27_N21
\U_S2P|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|Add0~2_combout\,
	clrn => \U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|cont\(1));

-- Location: LCCOMB_X23_Y27_N22
\U_S2P|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Add0~4_combout\ = (\U_S2P|cont\(2) & (\U_S2P|Add0~3\ $ (GND))) # (!\U_S2P|cont\(2) & (!\U_S2P|Add0~3\ & VCC))
-- \U_S2P|Add0~5\ = CARRY((\U_S2P|cont\(2) & !\U_S2P|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(2),
	datad => VCC,
	cin => \U_S2P|Add0~3\,
	combout => \U_S2P|Add0~4_combout\,
	cout => \U_S2P|Add0~5\);

-- Location: FF_X23_Y27_N23
\U_S2P|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|Add0~4_combout\,
	clrn => \U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|cont\(2));

-- Location: LCCOMB_X23_Y27_N24
\U_S2P|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Add0~6_combout\ = (\U_S2P|cont\(3) & (!\U_S2P|Add0~5\)) # (!\U_S2P|cont\(3) & ((\U_S2P|Add0~5\) # (GND)))
-- \U_S2P|Add0~7\ = CARRY((!\U_S2P|Add0~5\) # (!\U_S2P|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_S2P|cont\(3),
	datad => VCC,
	cin => \U_S2P|Add0~5\,
	combout => \U_S2P|Add0~6_combout\,
	cout => \U_S2P|Add0~7\);

-- Location: FF_X23_Y27_N25
\U_S2P|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|Add0~6_combout\,
	clrn => \U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|cont\(3));

-- Location: LCCOMB_X23_Y27_N26
\U_S2P|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Add0~8_combout\ = \U_S2P|cont\(4) $ (!\U_S2P|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_S2P|cont\(4),
	cin => \U_S2P|Add0~7\,
	combout => \U_S2P|Add0~8_combout\);

-- Location: LCCOMB_X23_Y27_N14
\U_S2P|cont~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|cont~0_combout\ = (\U_S2P|Add0~8_combout\ & ((!\U_S2P|Equal1~0_combout\) # (!\U_S2P|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(1),
	datac => \U_S2P|Add0~8_combout\,
	datad => \U_S2P|Equal1~0_combout\,
	combout => \U_S2P|cont~0_combout\);

-- Location: FF_X23_Y27_N15
\U_S2P|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|cont~0_combout\,
	clrn => \U_S2P|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|cont\(4));

-- Location: LCCOMB_X23_Y27_N8
\U_S2P|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Equal1~0_combout\ = (\U_S2P|cont\(2) & (\U_S2P|cont\(0) & (!\U_S2P|cont\(4) & \U_S2P|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(2),
	datab => \U_S2P|cont\(0),
	datac => \U_S2P|cont\(4),
	datad => \U_S2P|cont\(3),
	combout => \U_S2P|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y27_N10
\U_S2P|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|Equal0~0_combout\ = (!\U_S2P|cont\(2) & (!\U_S2P|cont\(3) & (!\U_S2P|cont\(4) & !\U_S2P|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(2),
	datab => \U_S2P|cont\(3),
	datac => \U_S2P|cont\(4),
	datad => \U_S2P|cont\(0),
	combout => \U_S2P|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y27_N0
\U_S2P|o_DATA[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|o_DATA[15]~0_combout\ = (\U_S2P|cont\(1) & (\U_S2P|Equal1~0_combout\)) # (!\U_S2P|cont\(1) & ((\U_S2P|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|cont\(1),
	datac => \U_S2P|Equal1~0_combout\,
	datad => \U_S2P|Equal0~0_combout\,
	combout => \U_S2P|o_DATA[15]~0_combout\);

-- Location: FF_X24_Y27_N17
\U_S2P|o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \i_SDA~input_o\,
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[0]~reg0_q\);

-- Location: FF_X24_Y27_N7
\U_S2P|w_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \i_SDA~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(0));

-- Location: LCCOMB_X24_Y27_N4
\U_S2P|w_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[1]~feeder_combout\ = \U_S2P|w_DATA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(0),
	combout => \U_S2P|w_DATA[1]~feeder_combout\);

-- Location: FF_X24_Y27_N5
\U_S2P|w_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(1));

-- Location: LCCOMB_X24_Y27_N8
\U_S2P|w_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[2]~feeder_combout\ = \U_S2P|w_DATA\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(1),
	combout => \U_S2P|w_DATA[2]~feeder_combout\);

-- Location: FF_X24_Y27_N9
\U_S2P|w_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(2));

-- Location: LCCOMB_X24_Y27_N30
\U_S2P|w_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[3]~feeder_combout\ = \U_S2P|w_DATA\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(2),
	combout => \U_S2P|w_DATA[3]~feeder_combout\);

-- Location: FF_X24_Y27_N31
\U_S2P|w_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(3));

-- Location: LCCOMB_X24_Y27_N26
\U_S2P|w_DATA[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[4]~feeder_combout\ = \U_S2P|w_DATA\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(3),
	combout => \U_S2P|w_DATA[4]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\U_S2P|w_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(4));

-- Location: FF_X24_Y27_N11
\U_S2P|o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(4),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[5]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N22
\U_S2P|w_DATA[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[5]~feeder_combout\ = \U_S2P|w_DATA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(4),
	combout => \U_S2P|w_DATA[5]~feeder_combout\);

-- Location: FF_X24_Y27_N23
\U_S2P|w_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(5));

-- Location: FF_X24_Y27_N19
\U_S2P|o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(5),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[6]~reg0_q\);

-- Location: FF_X24_Y27_N29
\U_S2P|o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(3),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[4]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N14
\U_S2P|w_DATA[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[6]~feeder_combout\ = \U_S2P|w_DATA\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(5),
	combout => \U_S2P|w_DATA[6]~feeder_combout\);

-- Location: FF_X24_Y27_N15
\U_S2P|w_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(6));

-- Location: FF_X24_Y27_N25
\U_S2P|o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(6),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[7]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N20
\U_STM_SLAVE|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal0~2_combout\ = (!\U_S2P|o_DATA[5]~reg0_q\ & (!\U_S2P|o_DATA[6]~reg0_q\ & (!\U_S2P|o_DATA[4]~reg0_q\ & !\U_S2P|o_DATA[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[5]~reg0_q\,
	datab => \U_S2P|o_DATA[6]~reg0_q\,
	datac => \U_S2P|o_DATA[4]~reg0_q\,
	datad => \U_S2P|o_DATA[7]~reg0_q\,
	combout => \U_STM_SLAVE|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y27_N18
\U_S2P|w_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[7]~feeder_combout\ = \U_S2P|w_DATA\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(6),
	combout => \U_S2P|w_DATA[7]~feeder_combout\);

-- Location: FF_X22_Y27_N19
\U_S2P|w_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(7));

-- Location: LCCOMB_X22_Y27_N12
\U_S2P|o_DATA[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|o_DATA[8]~reg0feeder_combout\ = \U_S2P|w_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(7),
	combout => \U_S2P|o_DATA[8]~reg0feeder_combout\);

-- Location: FF_X22_Y27_N13
\U_S2P|o_DATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|o_DATA[8]~reg0feeder_combout\,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[8]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N4
\U_S2P|w_DATA[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[8]~feeder_combout\ = \U_S2P|w_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(7),
	combout => \U_S2P|w_DATA[8]~feeder_combout\);

-- Location: FF_X22_Y27_N5
\U_S2P|w_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(8));

-- Location: LCCOMB_X22_Y27_N22
\U_S2P|w_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[9]~feeder_combout\ = \U_S2P|w_DATA\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(8),
	combout => \U_S2P|w_DATA[9]~feeder_combout\);

-- Location: FF_X22_Y27_N23
\U_S2P|w_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(9));

-- Location: FF_X22_Y27_N1
\U_S2P|o_DATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(9),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[10]~reg0_q\);

-- Location: FF_X22_Y27_N7
\U_S2P|o_DATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(8),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[9]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N28
\U_S2P|w_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[10]~feeder_combout\ = \U_S2P|w_DATA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(9),
	combout => \U_S2P|w_DATA[10]~feeder_combout\);

-- Location: FF_X22_Y27_N29
\U_S2P|w_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(10));

-- Location: LCCOMB_X22_Y27_N14
\U_S2P|o_DATA[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|o_DATA[11]~reg0feeder_combout\ = \U_S2P|w_DATA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(10),
	combout => \U_S2P|o_DATA[11]~reg0feeder_combout\);

-- Location: FF_X22_Y27_N15
\U_S2P|o_DATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|o_DATA[11]~reg0feeder_combout\,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[11]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N6
\U_STM_SLAVE|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal0~1_combout\ = (!\U_S2P|o_DATA[8]~reg0_q\ & (!\U_S2P|o_DATA[10]~reg0_q\ & (!\U_S2P|o_DATA[9]~reg0_q\ & !\U_S2P|o_DATA[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[8]~reg0_q\,
	datab => \U_S2P|o_DATA[10]~reg0_q\,
	datac => \U_S2P|o_DATA[9]~reg0_q\,
	datad => \U_S2P|o_DATA[11]~reg0_q\,
	combout => \U_STM_SLAVE|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y27_N8
\U_S2P|w_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[11]~feeder_combout\ = \U_S2P|w_DATA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(10),
	combout => \U_S2P|w_DATA[11]~feeder_combout\);

-- Location: FF_X22_Y27_N9
\U_S2P|w_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(11));

-- Location: LCCOMB_X22_Y27_N30
\U_S2P|w_DATA[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[12]~feeder_combout\ = \U_S2P|w_DATA\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(11),
	combout => \U_S2P|w_DATA[12]~feeder_combout\);

-- Location: FF_X22_Y27_N31
\U_S2P|w_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(12));

-- Location: LCCOMB_X22_Y27_N26
\U_S2P|w_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[13]~feeder_combout\ = \U_S2P|w_DATA\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(12),
	combout => \U_S2P|w_DATA[13]~feeder_combout\);

-- Location: FF_X22_Y27_N27
\U_S2P|w_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(13));

-- Location: LCCOMB_X22_Y27_N20
\U_S2P|w_DATA[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|w_DATA[14]~feeder_combout\ = \U_S2P|w_DATA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(13),
	combout => \U_S2P|w_DATA[14]~feeder_combout\);

-- Location: FF_X22_Y27_N21
\U_S2P|w_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|w_DATA[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|w_DATA\(14));

-- Location: LCCOMB_X22_Y27_N10
\U_S2P|o_DATA[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|o_DATA[15]~reg0feeder_combout\ = \U_S2P|w_DATA\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_S2P|w_DATA\(14),
	combout => \U_S2P|o_DATA[15]~reg0feeder_combout\);

-- Location: FF_X22_Y27_N11
\U_S2P|o_DATA[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|o_DATA[15]~reg0feeder_combout\,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[15]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N2
\U_S2P|o_DATA[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_S2P|o_DATA[14]~reg0feeder_combout\ = \U_S2P|w_DATA\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_S2P|w_DATA\(13),
	combout => \U_S2P|o_DATA[14]~reg0feeder_combout\);

-- Location: FF_X22_Y27_N3
\U_S2P|o_DATA[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	d => \U_S2P|o_DATA[14]~reg0feeder_combout\,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[14]~reg0_q\);

-- Location: FF_X22_Y27_N17
\U_S2P|o_DATA[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(11),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[12]~reg0_q\);

-- Location: FF_X22_Y27_N25
\U_S2P|o_DATA[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(12),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[13]~reg0_q\);

-- Location: LCCOMB_X22_Y27_N16
\U_STM_SLAVE|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal0~0_combout\ = (!\U_S2P|o_DATA[15]~reg0_q\ & (!\U_S2P|o_DATA[14]~reg0_q\ & (!\U_S2P|o_DATA[12]~reg0_q\ & !\U_S2P|o_DATA[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[15]~reg0_q\,
	datab => \U_S2P|o_DATA[14]~reg0_q\,
	datac => \U_S2P|o_DATA[12]~reg0_q\,
	datad => \U_S2P|o_DATA[13]~reg0_q\,
	combout => \U_STM_SLAVE|Equal0~0_combout\);

-- Location: FF_X24_Y27_N3
\U_S2P|o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(0),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[1]~reg0_q\);

-- Location: FF_X24_Y27_N1
\U_S2P|o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(1),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[2]~reg0_q\);

-- Location: FF_X24_Y27_N13
\U_S2P|o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_SCL~inputclkctrl_outclk\,
	asdata => \U_S2P|w_DATA\(2),
	sload => VCC,
	ena => \U_S2P|o_DATA[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_S2P|o_DATA[3]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N6
\U_STM_SLAVE|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal0~3_combout\ = (!\U_S2P|o_DATA[1]~reg0_q\ & (!\U_S2P|o_DATA[2]~reg0_q\ & (!\U_S2P|o_DATA[3]~reg0_q\ & !\U_S2P|o_DATA[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[1]~reg0_q\,
	datab => \U_S2P|o_DATA[2]~reg0_q\,
	datac => \U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_S2P|o_DATA[0]~reg0_q\,
	combout => \U_STM_SLAVE|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y27_N28
\U_STM_SLAVE|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal0~4_combout\ = (\U_STM_SLAVE|Equal0~2_combout\ & (\U_STM_SLAVE|Equal0~1_combout\ & (\U_STM_SLAVE|Equal0~0_combout\ & \U_STM_SLAVE|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|Equal0~2_combout\,
	datab => \U_STM_SLAVE|Equal0~1_combout\,
	datac => \U_STM_SLAVE|Equal0~0_combout\,
	datad => \U_STM_SLAVE|Equal0~3_combout\,
	combout => \U_STM_SLAVE|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y27_N26
\U_STM_SLAVE|state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state.st_IDLE~0_combout\ = (!\U_STM_SLAVE|state.st_RC_DATA~q\ & (!\U_STM_SLAVE|state.st_ID~q\ & (!\U_STM_SLAVE|state.st_RW~q\ & \U_STM_SLAVE|state.st_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_RC_DATA~q\,
	datab => \U_STM_SLAVE|state.st_ID~q\,
	datac => \U_STM_SLAVE|state.st_RW~q\,
	datad => \U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_STM_SLAVE|state.st_IDLE~0_combout\);

-- Location: LCCOMB_X26_Y27_N18
\U_STM_SLAVE|state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state.st_IDLE~1_combout\ = (\U_STM_SLAVE|state.st_RC_DATA~q\ & ((\U_STM_SLAVE|state.st_ID~q\) # ((\U_STM_SLAVE|state.st_RW~q\) # (!\U_STM_SLAVE|state.st_IDLE~q\)))) # (!\U_STM_SLAVE|state.st_RC_DATA~q\ & ((\U_STM_SLAVE|state.st_ID~q\ & 
-- ((\U_STM_SLAVE|state.st_RW~q\) # (!\U_STM_SLAVE|state.st_IDLE~q\))) # (!\U_STM_SLAVE|state.st_ID~q\ & (\U_STM_SLAVE|state.st_RW~q\ & !\U_STM_SLAVE|state.st_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_RC_DATA~q\,
	datab => \U_STM_SLAVE|state.st_ID~q\,
	datac => \U_STM_SLAVE|state.st_RW~q\,
	datad => \U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_STM_SLAVE|state.st_IDLE~1_combout\);

-- Location: LCCOMB_X26_Y27_N4
\U_STM_SLAVE|state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state.st_IDLE~2_combout\ = (\U_STM_SLAVE|state.st_SND_DATA~q\ & (!\U_STM_SLAVE|state.st_NULL~q\ & (\U_STM_SLAVE|state.st_IDLE~0_combout\ & !\U_STM_SLAVE|state.st_IDLE~1_combout\))) # (!\U_STM_SLAVE|state.st_SND_DATA~q\ & 
-- ((\U_STM_SLAVE|state.st_NULL~q\ & (\U_STM_SLAVE|state.st_IDLE~0_combout\ & !\U_STM_SLAVE|state.st_IDLE~1_combout\)) # (!\U_STM_SLAVE|state.st_NULL~q\ & (\U_STM_SLAVE|state.st_IDLE~0_combout\ $ (!\U_STM_SLAVE|state.st_IDLE~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_SND_DATA~q\,
	datab => \U_STM_SLAVE|state.st_NULL~q\,
	datac => \U_STM_SLAVE|state.st_IDLE~0_combout\,
	datad => \U_STM_SLAVE|state.st_IDLE~1_combout\,
	combout => \U_STM_SLAVE|state.st_IDLE~2_combout\);

-- Location: LCCOMB_X26_Y27_N12
\U_STM_SLAVE|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~16_combout\ = (\U_STM_SLAVE|state.st_IDLE~2_combout\ & (\U_STM_SLAVE|state.st_RW~q\ & \U_S2P|o_DATA[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datab => \U_STM_SLAVE|state.st_RW~q\,
	datad => \U_S2P|o_DATA[8]~reg0_q\,
	combout => \U_STM_SLAVE|state~16_combout\);

-- Location: FF_X26_Y27_N13
\U_STM_SLAVE|state.st_SND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_STM_SLAVE|state~16_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_SND_DATA~q\);

-- Location: LCCOMB_X22_Y27_N24
\U_STM_SLAVE|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal1~0_combout\ = (\U_S2P|o_DATA[15]~reg0_q\ & (\U_S2P|o_DATA[14]~reg0_q\ & (\U_S2P|o_DATA[13]~reg0_q\ & \U_S2P|o_DATA[12]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[15]~reg0_q\,
	datab => \U_S2P|o_DATA[14]~reg0_q\,
	datac => \U_S2P|o_DATA[13]~reg0_q\,
	datad => \U_S2P|o_DATA[12]~reg0_q\,
	combout => \U_STM_SLAVE|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y27_N0
\U_STM_SLAVE|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Equal1~1_combout\ = (\U_S2P|o_DATA[9]~reg0_q\ & (\U_STM_SLAVE|Equal1~0_combout\ & (\U_S2P|o_DATA[10]~reg0_q\ & \U_S2P|o_DATA[11]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_S2P|o_DATA[9]~reg0_q\,
	datab => \U_STM_SLAVE|Equal1~0_combout\,
	datac => \U_S2P|o_DATA[10]~reg0_q\,
	datad => \U_S2P|o_DATA[11]~reg0_q\,
	combout => \U_STM_SLAVE|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y27_N24
\U_STM_SLAVE|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~17_combout\ = (\U_STM_SLAVE|state.st_IDLE~2_combout\ & ((\U_STM_SLAVE|state.st_SND_DATA~q\) # ((\U_STM_SLAVE|state.st_ID~q\ & !\U_STM_SLAVE|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_ID~q\,
	datab => \U_STM_SLAVE|state.st_SND_DATA~q\,
	datac => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_STM_SLAVE|Equal1~1_combout\,
	combout => \U_STM_SLAVE|state~17_combout\);

-- Location: FF_X26_Y27_N25
\U_STM_SLAVE|state.st_NULL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_SLAVE|state~17_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_NULL~q\);

-- Location: LCCOMB_X26_Y27_N22
\U_STM_SLAVE|Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Selector10~2_combout\ = (!\U_STM_SLAVE|state.st_RC_DATA~q\ & (\U_STM_SLAVE|state.st_IDLE~q\ & (!\U_STM_SLAVE|state.st_ID~q\ & !\U_STM_SLAVE|state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_RC_DATA~q\,
	datab => \U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_STM_SLAVE|state.st_ID~q\,
	datad => \U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_STM_SLAVE|Selector10~2_combout\);

-- Location: LCCOMB_X27_Y27_N0
\U_STM_SLAVE|Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Selector10~3_combout\ = (\U_STM_SLAVE|Selector10~2_combout\) # ((\U_STM_SLAVE|stage~q\ & ((\U_STM_SLAVE|state.st_IDLE~q\) # (\U_DET_FRAME|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_IDLE~q\,
	datab => \U_STM_SLAVE|Selector10~2_combout\,
	datac => \U_STM_SLAVE|stage~q\,
	datad => \U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_STM_SLAVE|Selector10~3_combout\);

-- Location: FF_X27_Y27_N1
\U_STM_SLAVE|stage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_SLAVE|Selector10~3_combout\,
	ena => \i_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|stage~q\);

-- Location: LCCOMB_X23_Y27_N16
\U_STM_SLAVE|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~18_combout\ = (!\U_STM_SLAVE|state.st_IDLE~q\ & ((\U_STM_SLAVE|stage~q\) # ((\U_STM_SLAVE|Equal0~4_combout\) # (!\U_DET_FRAME|o_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|stage~q\,
	datab => \U_DET_FRAME|o_ENABLE~combout\,
	datac => \U_STM_SLAVE|state.st_IDLE~q\,
	datad => \U_STM_SLAVE|Equal0~4_combout\,
	combout => \U_STM_SLAVE|state~18_combout\);

-- Location: LCCOMB_X26_Y27_N16
\U_STM_SLAVE|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~19_combout\ = (!\U_STM_SLAVE|state.st_NULL~q\ & (\U_STM_SLAVE|state.st_IDLE~2_combout\ & (!\U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_STM_SLAVE|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_NULL~q\,
	datab => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datac => \U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_STM_SLAVE|state~18_combout\,
	combout => \U_STM_SLAVE|state~19_combout\);

-- Location: FF_X26_Y27_N17
\U_STM_SLAVE|state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \U_STM_SLAVE|state~19_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_IDLE~q\);

-- Location: LCCOMB_X23_Y27_N4
\U_STM_SLAVE|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~20_combout\ = (!\U_STM_SLAVE|stage~q\ & \U_DET_FRAME|o_ENABLE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_SLAVE|stage~q\,
	datad => \U_DET_FRAME|o_ENABLE~combout\,
	combout => \U_STM_SLAVE|state~20_combout\);

-- Location: LCCOMB_X26_Y27_N14
\U_STM_SLAVE|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~21_combout\ = (!\U_STM_SLAVE|Equal0~4_combout\ & (!\U_STM_SLAVE|state.st_IDLE~q\ & (\U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_STM_SLAVE|state~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|Equal0~4_combout\,
	datab => \U_STM_SLAVE|state.st_IDLE~q\,
	datac => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_STM_SLAVE|state~20_combout\,
	combout => \U_STM_SLAVE|state~21_combout\);

-- Location: FF_X26_Y27_N15
\U_STM_SLAVE|state.st_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_SLAVE|state~21_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_ID~q\);

-- Location: LCCOMB_X26_Y27_N8
\U_STM_SLAVE|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~22_combout\ = (\U_STM_SLAVE|state.st_ID~q\ & (\U_STM_SLAVE|state.st_IDLE~2_combout\ & \U_STM_SLAVE|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|state.st_ID~q\,
	datac => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_STM_SLAVE|Equal1~1_combout\,
	combout => \U_STM_SLAVE|state~22_combout\);

-- Location: FF_X26_Y27_N9
\U_STM_SLAVE|state.st_RW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_SLAVE|state~22_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_RW~q\);

-- Location: LCCOMB_X26_Y27_N0
\U_STM_SLAVE|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|state~23_combout\ = (\U_STM_SLAVE|state.st_RW~q\ & (\U_STM_SLAVE|state.st_IDLE~2_combout\ & !\U_S2P|o_DATA[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_SLAVE|state.st_RW~q\,
	datac => \U_STM_SLAVE|state.st_IDLE~2_combout\,
	datad => \U_S2P|o_DATA[8]~reg0_q\,
	combout => \U_STM_SLAVE|state~23_combout\);

-- Location: FF_X26_Y27_N1
\U_STM_SLAVE|state.st_RC_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \U_STM_SLAVE|state~23_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_STM_SLAVE|state.st_RC_DATA~q\);

-- Location: LCCOMB_X26_Y27_N20
\U_STM_SLAVE|Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Selector10~1_combout\ = (!\U_STM_SLAVE|state.st_RC_DATA~q\ & !\U_STM_SLAVE|state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_SLAVE|state.st_RC_DATA~q\,
	datad => \U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_STM_SLAVE|Selector10~1_combout\);

-- Location: CLKCTRL_G11
\U_STM_SLAVE|Selector10~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_STM_SLAVE|Selector10~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_STM_SLAVE|Selector10~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y27_N16
\U_STM_SLAVE|o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[0]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|o_DATA[0]$latch~combout\,
	datac => \U_S2P|o_DATA[0]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X26_Y27_N6
\U_STM_SLAVE|o_DATA[1]_200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[1]_200~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[1]_200~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((!\U_STM_SLAVE|state.st_SND_DATA~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|o_DATA[1]_200~combout\,
	datab => \i_RST~input_o\,
	datac => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	datad => \U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_STM_SLAVE|o_DATA[1]_200~combout\);

-- Location: LCCOMB_X24_Y27_N2
\U_STM_SLAVE|o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[1]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[1]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|o_DATA[1]$latch~combout\,
	datac => \U_S2P|o_DATA[1]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[1]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N0
\U_STM_SLAVE|o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[2]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|o_DATA[2]$latch~combout\,
	datac => \U_S2P|o_DATA[2]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[2]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N12
\U_STM_SLAVE|o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[3]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[3]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|o_DATA[3]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_S2P|o_DATA[3]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[3]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N28
\U_STM_SLAVE|o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[4]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[4]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|o_DATA[4]$latch~combout\,
	datac => \U_S2P|o_DATA[4]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[4]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N10
\U_STM_SLAVE|o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[5]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[5]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|o_DATA[5]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_S2P|o_DATA[5]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[5]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N18
\U_STM_SLAVE|o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[6]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[6]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_STM_SLAVE|o_DATA[6]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \U_S2P|o_DATA[6]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[6]$latch~combout\);

-- Location: LCCOMB_X24_Y27_N24
\U_STM_SLAVE|o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & (\U_STM_SLAVE|o_DATA[7]$latch~combout\)) # (!GLOBAL(\U_STM_SLAVE|Selector10~1clkctrl_outclk\) & ((\U_S2P|o_DATA[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|o_DATA[7]$latch~combout\,
	datac => \U_S2P|o_DATA[7]~reg0_q\,
	datad => \U_STM_SLAVE|Selector10~1clkctrl_outclk\,
	combout => \U_STM_SLAVE|o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X26_Y27_N30
\U_STM_SLAVE|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|Selector10~0_combout\ = (!\U_STM_SLAVE|state.st_ID~q\ & \U_STM_SLAVE|state.st_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_STM_SLAVE|state.st_ID~q\,
	datad => \U_STM_SLAVE|state.st_IDLE~q\,
	combout => \U_STM_SLAVE|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y27_N28
\U_STM_SLAVE|w_ENABLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|w_ENABLE~0_combout\ = (\U_STM_SLAVE|state.st_NULL~q\) # (\U_STM_SLAVE|state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_STM_SLAVE|state.st_NULL~q\,
	datad => \U_STM_SLAVE|state.st_SND_DATA~q\,
	combout => \U_STM_SLAVE|w_ENABLE~0_combout\);

-- Location: LCCOMB_X26_Y27_N10
\U_STM_SLAVE|w_ENABLE\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_STM_SLAVE|w_ENABLE~combout\ = (\i_RST~input_o\ & ((\U_STM_SLAVE|Selector10~0_combout\ & ((!\U_STM_SLAVE|w_ENABLE~0_combout\))) # (!\U_STM_SLAVE|Selector10~0_combout\ & (\U_STM_SLAVE|w_ENABLE~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \U_STM_SLAVE|w_ENABLE~combout\,
	datac => \U_STM_SLAVE|Selector10~0_combout\,
	datad => \U_STM_SLAVE|w_ENABLE~0_combout\,
	combout => \U_STM_SLAVE|w_ENABLE~combout\);

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


