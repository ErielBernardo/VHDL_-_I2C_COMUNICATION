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

-- DATE "12/03/2018 08:09:07"

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

ENTITY 	STM_MASTER IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_BT_A : IN std_logic;
	i_BT_B : IN std_logic;
	i_BT_C : IN std_logic;
	i_DATA_SW : IN std_logic_vector(7 DOWNTO 0);
	i_CTRL_START : IN std_logic;
	i_CTRL_P2S : IN std_logic;
	i_CTRL_STOP : IN std_logic;
	o_ENABLE_START : OUT std_logic;
	o_ENABLE_P2S : OUT std_logic;
	o_ENABLE_STOP : OUT std_logic;
	o_ENABLE : OUT std_logic;
	o_DATA : OUT std_logic_vector(15 DOWNTO 0)
	);
END STM_MASTER;

-- Design Ports Information
-- o_ENABLE_START	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ENABLE_P2S	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ENABLE_STOP	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ENABLE	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[9]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[11]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[14]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[15]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CTRL_START	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CTRL_P2S	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CTRL_STOP	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_C	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_A	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_BT_B	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_SW[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF STM_MASTER IS
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
SIGNAL ww_i_BT_A : std_logic;
SIGNAL ww_i_BT_B : std_logic;
SIGNAL ww_i_BT_C : std_logic;
SIGNAL ww_i_DATA_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_CTRL_START : std_logic;
SIGNAL ww_i_CTRL_P2S : std_logic;
SIGNAL ww_i_CTRL_STOP : std_logic;
SIGNAL ww_o_ENABLE_START : std_logic;
SIGNAL ww_o_ENABLE_P2S : std_logic;
SIGNAL ww_o_ENABLE_STOP : std_logic;
SIGNAL ww_o_ENABLE : std_logic;
SIGNAL ww_o_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.st_READ_SW~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \o_ENABLE_START~output_o\ : std_logic;
SIGNAL \o_ENABLE_P2S~output_o\ : std_logic;
SIGNAL \o_ENABLE_STOP~output_o\ : std_logic;
SIGNAL \o_ENABLE~output_o\ : std_logic;
SIGNAL \i_DATA_SW[0]~input_o\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_BT_C~input_o\ : std_logic;
SIGNAL \i_BT_B~input_o\ : std_logic;
SIGNAL \i_BT_A~input_o\ : std_logic;
SIGNAL \i_CTRL_STOP~input_o\ : std_logic;
SIGNAL \i_CTRL_START~input_o\ : std_logic;
SIGNAL \state.st_IDLE~0_combout\ : std_logic;
SIGNAL \state.st_IDLE~1_combout\ : std_logic;
SIGNAL \state.st_IDLE~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.st_START_COM~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.st_SND_DATA~q\ : std_logic;
SIGNAL \i_CTRL_P2S~input_o\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.st_CLOSE_COM~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.st_IDLE~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.st_READ_SW~q\ : std_logic;
SIGNAL \state.st_READ_SW~clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA[0]$latch~combout\ : std_logic;
SIGNAL \o_DATA[0]_221~combout\ : std_logic;
SIGNAL \i_DATA_SW[1]~input_o\ : std_logic;
SIGNAL \o_DATA[1]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[2]~input_o\ : std_logic;
SIGNAL \o_DATA[2]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[3]~input_o\ : std_logic;
SIGNAL \o_DATA[3]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[4]~input_o\ : std_logic;
SIGNAL \o_DATA[4]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[5]~input_o\ : std_logic;
SIGNAL \o_DATA[5]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[6]~input_o\ : std_logic;
SIGNAL \o_DATA[6]$latch~combout\ : std_logic;
SIGNAL \i_DATA_SW[7]~input_o\ : std_logic;
SIGNAL \o_DATA[7]$latch~combout\ : std_logic;
SIGNAL \o_DATA[8]_291~combout\ : std_logic;
SIGNAL \Selector0~1clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA[9]~16_combout\ : std_logic;
SIGNAL \o_DATA[9]$latch~combout\ : std_logic;
SIGNAL \o_DATA[10]~17_combout\ : std_logic;
SIGNAL \o_DATA[10]$latch~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \o_ENABLE_START$latch~combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \o_ENABLE_P2S$latch~combout\ : std_logic;
SIGNAL \state.st_START_COM~0_combout\ : std_logic;
SIGNAL \o_ENABLE_STOP$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \o_ENABLE$latch~combout\ : std_logic;
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_o_DATA[8]_291~combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_BT_A <= i_BT_A;
ww_i_BT_B <= i_BT_B;
ww_i_BT_C <= i_BT_C;
ww_i_DATA_SW <= i_DATA_SW;
ww_i_CTRL_START <= i_CTRL_START;
ww_i_CTRL_P2S <= i_CTRL_P2S;
ww_i_CTRL_STOP <= i_CTRL_STOP;
o_ENABLE_START <= ww_o_ENABLE_START;
o_ENABLE_P2S <= ww_o_ENABLE_P2S;
o_ENABLE_STOP <= ww_o_ENABLE_STOP;
o_ENABLE <= ww_o_ENABLE;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\state.st_READ_SW~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.st_READ_SW~q\);

\Selector0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~1_combout\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;
\ALT_INV_i_CLK~input_o\ <= NOT \i_CLK~input_o\;
\ALT_INV_o_DATA[8]_291~combout\ <= NOT \o_DATA[8]_291~combout\;

-- Location: IOOBUF_X23_Y0_N2
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[0]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[1]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[2]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[3]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[4]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[5]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[6]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[7]$latch~combout\,
	oe => \o_DATA[0]_221~combout\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_DATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\o_DATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[9]$latch~combout\,
	oe => \o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_DATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[10]$latch~combout\,
	oe => \o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_DATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_DATA[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_DATA[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\o_DATA[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_DATA[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA[8]_291~combout\,
	devoe => ww_devoe,
	o => \o_DATA[15]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_ENABLE_START~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ENABLE_START$latch~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE_START~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_ENABLE_P2S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ENABLE_P2S$latch~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE_P2S~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\o_ENABLE_STOP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ENABLE_STOP$latch~combout\,
	devoe => ww_devoe,
	o => \o_ENABLE_STOP~output_o\);

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOIBUF_X16_Y0_N1
\i_DATA_SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(0),
	o => \i_DATA_SW[0]~input_o\);

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

-- Location: IOIBUF_X14_Y0_N15
\i_BT_C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_C,
	o => \i_BT_C~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\i_BT_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_B,
	o => \i_BT_B~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\i_BT_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_BT_A,
	o => \i_BT_A~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\i_CTRL_STOP~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CTRL_STOP,
	o => \i_CTRL_STOP~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\i_CTRL_START~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CTRL_START,
	o => \i_CTRL_START~input_o\);

-- Location: LCCOMB_X17_Y1_N10
\state.st_IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~0_combout\ = (\state.st_CLOSE_COM~q\ & (!\state.st_SND_DATA~q\ & !\state.st_READ_SW~q\)) # (!\state.st_CLOSE_COM~q\ & (\state.st_SND_DATA~q\ $ (\state.st_READ_SW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_CLOSE_COM~q\,
	datab => \state.st_SND_DATA~q\,
	datad => \state.st_READ_SW~q\,
	combout => \state.st_IDLE~0_combout\);

-- Location: LCCOMB_X17_Y1_N20
\state.st_IDLE~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~1_combout\ = (\state.st_CLOSE_COM~q\ & ((\state.st_SND_DATA~q\) # (\state.st_READ_SW~q\))) # (!\state.st_CLOSE_COM~q\ & (\state.st_SND_DATA~q\ & \state.st_READ_SW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_CLOSE_COM~q\,
	datab => \state.st_SND_DATA~q\,
	datad => \state.st_READ_SW~q\,
	combout => \state.st_IDLE~1_combout\);

-- Location: LCCOMB_X17_Y1_N12
\state.st_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_IDLE~2_combout\ = (\state.st_IDLE~0_combout\ & ((\state.st_IDLE~1_combout\ & (\state.st_IDLE~q\ $ (!\state.st_START_COM~q\))) # (!\state.st_IDLE~1_combout\ & (\state.st_IDLE~q\ & !\state.st_START_COM~q\)))) # (!\state.st_IDLE~0_combout\ & 
-- (!\state.st_IDLE~1_combout\ & (\state.st_IDLE~q\ $ (!\state.st_START_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_IDLE~0_combout\,
	datab => \state.st_IDLE~1_combout\,
	datac => \state.st_IDLE~q\,
	datad => \state.st_START_COM~q\,
	combout => \state.st_IDLE~2_combout\);

-- Location: LCCOMB_X16_Y1_N24
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.st_CLOSE_COM~q\ & \i_CTRL_STOP~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.st_CLOSE_COM~q\,
	datac => \i_CTRL_STOP~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X17_Y1_N28
\state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (!\Selector0~1_combout\ & (\state.st_START_COM~q\ & (!\Selector0~0_combout\ & \state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \state.st_START_COM~q\,
	datac => \Selector0~0_combout\,
	datad => \state~19_combout\,
	combout => \state~22_combout\);

-- Location: LCCOMB_X17_Y1_N16
\state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\state.st_IDLE~2_combout\ & ((\state~22_combout\) # ((\state.st_READ_SW~q\ & !\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_IDLE~2_combout\,
	datab => \state.st_READ_SW~q\,
	datac => \Selector1~2_combout\,
	datad => \state~22_combout\,
	combout => \state~23_combout\);

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

-- Location: FF_X17_Y1_N17
\state.st_START_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~input_o\,
	d => \state~23_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_START_COM~q\);

-- Location: LCCOMB_X16_Y1_N10
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\i_CTRL_START~input_o\ & \state.st_START_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_CTRL_START~input_o\,
	datad => \state.st_START_COM~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X16_Y1_N2
\state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!\Selector0~0_combout\ & (!\Selector0~1_combout\ & (\state~19_combout\ & \state.st_SND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector0~1_combout\,
	datac => \state~19_combout\,
	datad => \state.st_SND_DATA~q\,
	combout => \state~20_combout\);

-- Location: LCCOMB_X16_Y1_N22
\state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state.st_IDLE~2_combout\ & ((\state~20_combout\) # ((\Selector0~2_combout\ & !\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \state.st_IDLE~2_combout\,
	datac => \Selector1~2_combout\,
	datad => \state~20_combout\,
	combout => \state~21_combout\);

-- Location: FF_X16_Y1_N23
\state.st_SND_DATA\ : dffeas
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
	q => \state.st_SND_DATA~q\);

-- Location: IOIBUF_X21_Y0_N1
\i_CTRL_P2S~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CTRL_P2S,
	o => \i_CTRL_P2S~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\i_CTRL_P2S~input_o\) # (!\state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_SND_DATA~q\,
	datac => \i_CTRL_P2S~input_o\,
	combout => \state~18_combout\);

-- Location: LCCOMB_X17_Y1_N14
\state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\state.st_READ_SW~q\ & (\state~18_combout\ & ((!\state.st_START_COM~q\) # (!\i_CTRL_START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_CTRL_START~input_o\,
	datab => \state.st_READ_SW~q\,
	datac => \state~18_combout\,
	datad => \state.st_START_COM~q\,
	combout => \state~19_combout\);

-- Location: LCCOMB_X17_Y1_N6
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector0~1_combout\ & (\i_CTRL_STOP~input_o\ & ((\state.st_CLOSE_COM~q\)))) # (!\Selector0~1_combout\ & ((\state~19_combout\) # ((\i_CTRL_STOP~input_o\ & \state.st_CLOSE_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \i_CTRL_STOP~input_o\,
	datac => \state~19_combout\,
	datad => \state.st_CLOSE_COM~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X17_Y1_N30
\state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (!\Selector0~1_combout\ & (!\i_CTRL_STOP~input_o\ & (\state.st_CLOSE_COM~q\ & \state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \i_CTRL_STOP~input_o\,
	datac => \state.st_CLOSE_COM~q\,
	datad => \state~19_combout\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\i_CTRL_P2S~input_o\ & \state.st_SND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_CTRL_P2S~input_o\,
	datad => \state.st_SND_DATA~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X17_Y1_N26
\state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state.st_IDLE~2_combout\ & ((\state~26_combout\) # ((!\Selector1~2_combout\ & \Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \state.st_IDLE~2_combout\,
	datac => \state~26_combout\,
	datad => \Selector0~3_combout\,
	combout => \state~24_combout\);

-- Location: FF_X17_Y1_N27
\state.st_CLOSE_COM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_CLOSE_COM~q\);

-- Location: LCCOMB_X16_Y1_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\i_BT_C~input_o\ & (!\state.st_IDLE~q\ & (\i_BT_B~input_o\ & \i_BT_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_C~input_o\,
	datab => \state.st_IDLE~q\,
	datac => \i_BT_B~input_o\,
	datad => \i_BT_A~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X17_Y1_N22
\state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (!\process_0~0_combout\ & (\state.st_IDLE~2_combout\ & ((!\state.st_CLOSE_COM~q\) # (!\i_CTRL_STOP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_CTRL_STOP~input_o\,
	datab => \state.st_CLOSE_COM~q\,
	datac => \process_0~0_combout\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~27_combout\);

-- Location: FF_X17_Y1_N21
\state.st_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \state~27_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_IDLE~q\);

-- Location: LCCOMB_X17_Y1_N18
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state.st_IDLE~q\ & (((!\i_BT_A~input_o\) # (!\i_BT_B~input_o\)) # (!\i_BT_C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_C~input_o\,
	datab => \i_BT_B~input_o\,
	datac => \i_BT_A~input_o\,
	datad => \state.st_IDLE~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X17_Y1_N4
\state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\Selector0~1_combout\ & (!\Selector0~0_combout\ & (\state~19_combout\ & \state.st_IDLE~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~0_combout\,
	datac => \state~19_combout\,
	datad => \state.st_IDLE~2_combout\,
	combout => \state~25_combout\);

-- Location: FF_X17_Y1_N25
\state.st_READ_SW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \state~25_combout\,
	clrn => \i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.st_READ_SW~q\);

-- Location: CLKCTRL_G19
\state.st_READ_SW~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.st_READ_SW~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.st_READ_SW~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y1_N20
\o_DATA[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[0]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[0]~input_o\,
	datab => \o_DATA[0]$latch~combout\,
	datac => \i_RST~input_o\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[0]$latch~combout\);

-- Location: LCCOMB_X20_Y1_N18
\o_DATA[0]_221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]_221~combout\ = (\i_RST~input_o\ & ((\state.st_READ_SW~q\) # (\o_DATA[0]_221~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.st_READ_SW~q\,
	datac => \i_RST~input_o\,
	datad => \o_DATA[0]_221~combout\,
	combout => \o_DATA[0]_221~combout\);

-- Location: IOIBUF_X21_Y0_N29
\i_DATA_SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(1),
	o => \i_DATA_SW[1]~input_o\);

-- Location: LCCOMB_X20_Y1_N12
\o_DATA[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\i_DATA_SW[1]~input_o\))) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\o_DATA[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[1]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \i_DATA_SW[1]~input_o\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[1]$latch~combout\);

-- Location: IOIBUF_X23_Y0_N22
\i_DATA_SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(2),
	o => \i_DATA_SW[2]~input_o\);

-- Location: LCCOMB_X20_Y1_N30
\o_DATA[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[2]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[2]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[2]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[2]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[2]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N29
\i_DATA_SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(3),
	o => \i_DATA_SW[3]~input_o\);

-- Location: LCCOMB_X20_Y1_N8
\o_DATA[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[3]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[3]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[3]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[3]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[3]$latch~combout\);

-- Location: IOIBUF_X14_Y0_N8
\i_DATA_SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(4),
	o => \i_DATA_SW[4]~input_o\);

-- Location: LCCOMB_X20_Y1_N14
\o_DATA[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[4]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[4]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[4]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[4]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[4]$latch~combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_DATA_SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(5),
	o => \i_DATA_SW[5]~input_o\);

-- Location: LCCOMB_X20_Y1_N4
\o_DATA[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[5]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[5]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[5]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[5]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[5]$latch~combout\);

-- Location: IOIBUF_X23_Y0_N8
\i_DATA_SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(6),
	o => \i_DATA_SW[6]~input_o\);

-- Location: LCCOMB_X20_Y1_N26
\o_DATA[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[6]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[6]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[6]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[6]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[6]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N8
\i_DATA_SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_SW(7),
	o => \i_DATA_SW[7]~input_o\);

-- Location: LCCOMB_X20_Y1_N28
\o_DATA[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[7]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & (\i_DATA_SW[7]~input_o\)) # (!GLOBAL(\state.st_READ_SW~clkctrl_outclk\) & ((\o_DATA[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DATA_SW[7]~input_o\,
	datab => \i_RST~input_o\,
	datac => \o_DATA[7]$latch~combout\,
	datad => \state.st_READ_SW~clkctrl_outclk\,
	combout => \o_DATA[7]$latch~combout\);

-- Location: LCCOMB_X16_Y1_N18
\o_DATA[8]_291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[8]_291~combout\ = (\i_RST~input_o\ & ((\Selector0~1_combout\) # (\o_DATA[8]_291~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~1_combout\,
	datac => \i_RST~input_o\,
	datad => \o_DATA[8]_291~combout\,
	combout => \o_DATA[8]_291~combout\);

-- Location: CLKCTRL_G18
\Selector0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~1clkctrl_outclk\);

-- Location: LCCOMB_X16_Y1_N8
\o_DATA[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[9]~16_combout\ = (\i_BT_B~input_o\) # (!\i_BT_A~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_A~input_o\,
	datac => \i_BT_B~input_o\,
	combout => \o_DATA[9]~16_combout\);

-- Location: LCCOMB_X16_Y1_N30
\o_DATA[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[9]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector0~1clkctrl_outclk\) & ((!\o_DATA[9]~16_combout\))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (\o_DATA[9]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[9]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \Selector0~1clkctrl_outclk\,
	datad => \o_DATA[9]~16_combout\,
	combout => \o_DATA[9]$latch~combout\);

-- Location: LCCOMB_X16_Y1_N4
\o_DATA[10]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[10]~17_combout\ = (\i_BT_A~input_o\ & \i_BT_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BT_A~input_o\,
	datac => \i_BT_B~input_o\,
	combout => \o_DATA[10]~17_combout\);

-- Location: LCCOMB_X16_Y1_N26
\o_DATA[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[10]$latch~combout\ = (\i_RST~input_o\ & ((GLOBAL(\Selector0~1clkctrl_outclk\) & ((\o_DATA[10]~17_combout\))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (\o_DATA[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA[10]$latch~combout\,
	datab => \i_RST~input_o\,
	datac => \Selector0~1clkctrl_outclk\,
	datad => \o_DATA[10]~17_combout\,
	combout => \o_DATA[10]$latch~combout\);

-- Location: LCCOMB_X16_Y1_N12
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\state.st_SND_DATA~q\) # (\state.st_START_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.st_SND_DATA~q\,
	datad => \state.st_START_COM~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X16_Y1_N14
\o_ENABLE_START$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE_START$latch~combout\ = (\i_RST~input_o\ & ((\WideOr2~0_combout\ & ((!\state.st_SND_DATA~q\))) # (!\WideOr2~0_combout\ & (\o_ENABLE_START$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \o_ENABLE_START$latch~combout\,
	datac => \state.st_SND_DATA~q\,
	datad => \WideOr2~0_combout\,
	combout => \o_ENABLE_START$latch~combout\);

-- Location: LCCOMB_X16_Y1_N20
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\state.st_SND_DATA~q\) # (\state.st_CLOSE_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.st_SND_DATA~q\,
	datad => \state.st_CLOSE_COM~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X17_Y1_N8
\o_ENABLE_P2S$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE_P2S$latch~combout\ = (\i_RST~input_o\ & ((\WideOr3~0_combout\ & (!\state.st_CLOSE_COM~q\)) # (!\WideOr3~0_combout\ & ((\o_ENABLE_P2S$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_CLOSE_COM~q\,
	datab => \i_RST~input_o\,
	datac => \o_ENABLE_P2S$latch~combout\,
	datad => \WideOr3~0_combout\,
	combout => \o_ENABLE_P2S$latch~combout\);

-- Location: LCCOMB_X16_Y1_N6
\state.st_START_COM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.st_START_COM~0_combout\ = (\state.st_IDLE~q\ & !\state.st_CLOSE_COM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.st_IDLE~q\,
	datad => \state.st_CLOSE_COM~q\,
	combout => \state.st_START_COM~0_combout\);

-- Location: LCCOMB_X17_Y1_N2
\o_ENABLE_STOP$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE_STOP$latch~combout\ = (\i_RST~input_o\ & ((\state.st_START_COM~0_combout\ & ((\o_ENABLE_STOP$latch~combout\))) # (!\state.st_START_COM~0_combout\ & (\state.st_CLOSE_COM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \state.st_CLOSE_COM~q\,
	datac => \state.st_START_COM~0_combout\,
	datad => \o_ENABLE_STOP$latch~combout\,
	combout => \o_ENABLE_STOP$latch~combout\);

-- Location: LCCOMB_X17_Y1_N24
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state.st_START_COM~q\) # (!\state.st_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.st_IDLE~q\,
	datad => \state.st_START_COM~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X17_Y1_N0
\o_ENABLE$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ENABLE$latch~combout\ = (\i_RST~input_o\ & ((\WideOr1~0_combout\ & ((\state.st_START_COM~q\))) # (!\WideOr1~0_combout\ & (\o_ENABLE$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RST~input_o\,
	datab => \o_ENABLE$latch~combout\,
	datac => \WideOr1~0_combout\,
	datad => \state.st_START_COM~q\,
	combout => \o_ENABLE$latch~combout\);

ww_o_ENABLE_START <= \o_ENABLE_START~output_o\;

ww_o_ENABLE_P2S <= \o_ENABLE_P2S~output_o\;

ww_o_ENABLE_STOP <= \o_ENABLE_STOP~output_o\;

ww_o_ENABLE <= \o_ENABLE~output_o\;

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


