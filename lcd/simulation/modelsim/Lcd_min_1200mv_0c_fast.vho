-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "10/19/2016 08:04:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lcd IS
    PORT (
	data_out_pin : INOUT std_logic_vector(7 DOWNTO 0);
	rw_pin : OUT std_logic;
	rs_pin : OUT std_logic;
	power_pin : OUT std_logic;
	enable_pin : OUT std_logic;
	clk : IN std_logic
	);
END Lcd;

-- Design Ports Information
-- rw_pin	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_pin	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- power_pin	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable_pin	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[7]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rw_pin : std_logic;
SIGNAL ww_rs_pin : std_logic;
SIGNAL ww_power_pin : std_logic;
SIGNAL ww_enable_pin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out_pin[0]~input_o\ : std_logic;
SIGNAL \data_out_pin[1]~input_o\ : std_logic;
SIGNAL \data_out_pin[2]~input_o\ : std_logic;
SIGNAL \data_out_pin[3]~input_o\ : std_logic;
SIGNAL \data_out_pin[4]~input_o\ : std_logic;
SIGNAL \data_out_pin[5]~input_o\ : std_logic;
SIGNAL \data_out_pin[6]~input_o\ : std_logic;
SIGNAL \data_out_pin[0]~output_o\ : std_logic;
SIGNAL \data_out_pin[1]~output_o\ : std_logic;
SIGNAL \data_out_pin[2]~output_o\ : std_logic;
SIGNAL \data_out_pin[3]~output_o\ : std_logic;
SIGNAL \data_out_pin[4]~output_o\ : std_logic;
SIGNAL \data_out_pin[5]~output_o\ : std_logic;
SIGNAL \data_out_pin[6]~output_o\ : std_logic;
SIGNAL \data_out_pin[7]~output_o\ : std_logic;
SIGNAL \rw_pin~output_o\ : std_logic;
SIGNAL \rs_pin~output_o\ : std_logic;
SIGNAL \power_pin~output_o\ : std_logic;
SIGNAL \enable_pin~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \busyTick~0_combout\ : std_logic;
SIGNAL \busyTick~q\ : std_logic;
SIGNAL \data_out_pin[7]~input_o\ : std_logic;
SIGNAL \rw~0_combout\ : std_logic;
SIGNAL \rw~q\ : std_logic;
SIGNAL \ALT_INV_busyTick~q\ : std_logic;

BEGIN

rw_pin <= ww_rw_pin;
rs_pin <= ww_rs_pin;
power_pin <= ww_power_pin;
enable_pin <= ww_enable_pin;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_busyTick~q\ <= NOT \busyTick~q\;

-- Location: IOOBUF_X1_Y73_N9
\data_out_pin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\data_out_pin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\data_out_pin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\data_out_pin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[3]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\data_out_pin[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\data_out_pin[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\data_out_pin[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[6]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\data_out_pin[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busyTick~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[7]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\rw_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rw~q\,
	devoe => ww_devoe,
	o => \rw_pin~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\rs_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rs_pin~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\power_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \power_pin~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\enable_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \enable_pin~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y72_N2
\busyTick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \busyTick~0_combout\ = !\busyTick~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \busyTick~q\,
	combout => \busyTick~0_combout\);

-- Location: FF_X2_Y72_N3
busyTick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \busyTick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busyTick~q\);

-- Location: IOIBUF_X1_Y73_N1
\data_out_pin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(7),
	o => \data_out_pin[7]~input_o\);

-- Location: LCCOMB_X2_Y72_N0
\rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rw~0_combout\ = (\busyTick~q\) # ((\data_out_pin[7]~input_o\ & \rw~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out_pin[7]~input_o\,
	datac => \rw~q\,
	datad => \busyTick~q\,
	combout => \rw~0_combout\);

-- Location: FF_X2_Y72_N1
rw : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw~q\);

-- Location: IOIBUF_X1_Y73_N8
\data_out_pin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(0),
	o => \data_out_pin[0]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\data_out_pin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(1),
	o => \data_out_pin[1]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\data_out_pin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(2),
	o => \data_out_pin[2]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\data_out_pin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(3),
	o => \data_out_pin[3]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\data_out_pin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(4),
	o => \data_out_pin[4]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\data_out_pin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(5),
	o => \data_out_pin[5]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\data_out_pin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_out_pin(6),
	o => \data_out_pin[6]~input_o\);

ww_rw_pin <= \rw_pin~output_o\;

ww_rs_pin <= \rs_pin~output_o\;

ww_power_pin <= \power_pin~output_o\;

ww_enable_pin <= \enable_pin~output_o\;

data_out_pin(0) <= \data_out_pin[0]~output_o\;

data_out_pin(1) <= \data_out_pin[1]~output_o\;

data_out_pin(2) <= \data_out_pin[2]~output_o\;

data_out_pin(3) <= \data_out_pin[3]~output_o\;

data_out_pin(4) <= \data_out_pin[4]~output_o\;

data_out_pin(5) <= \data_out_pin[5]~output_o\;

data_out_pin(6) <= \data_out_pin[6]~output_o\;

data_out_pin(7) <= \data_out_pin[7]~output_o\;
END structure;


