-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "10/12/2016 11:08:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Test IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out_pin : BUFFER std_logic_vector(7 DOWNTO 0);
	enable : BUFFER std_logic;
	rw_pin : BUFFER std_logic;
	rs_pin : BUFFER std_logic;
	power : BUFFER std_logic;
	display_out : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Test;

-- Design Ports Information
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[7]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw_pin	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_pin	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- power	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_out[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out_pin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_rw_pin : std_logic;
SIGNAL ww_rs_pin : std_logic;
SIGNAL ww_power : std_logic;
SIGNAL ww_display_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_out_pin[0]~output_o\ : std_logic;
SIGNAL \data_out_pin[1]~output_o\ : std_logic;
SIGNAL \data_out_pin[2]~output_o\ : std_logic;
SIGNAL \data_out_pin[3]~output_o\ : std_logic;
SIGNAL \data_out_pin[4]~output_o\ : std_logic;
SIGNAL \data_out_pin[5]~output_o\ : std_logic;
SIGNAL \data_out_pin[6]~output_o\ : std_logic;
SIGNAL \data_out_pin[7]~output_o\ : std_logic;
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \rw_pin~output_o\ : std_logic;
SIGNAL \rs_pin~output_o\ : std_logic;
SIGNAL \power~output_o\ : std_logic;
SIGNAL \display_out[0]~output_o\ : std_logic;
SIGNAL \display_out[1]~output_o\ : std_logic;
SIGNAL \display_out[2]~output_o\ : std_logic;
SIGNAL \display_out[3]~output_o\ : std_logic;
SIGNAL \display_out[4]~output_o\ : std_logic;
SIGNAL \display_out[5]~output_o\ : std_logic;
SIGNAL \display_out[6]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out_pin <= ww_data_out_pin;
enable <= ww_enable;
rw_pin <= ww_rw_pin;
rs_pin <= ww_rs_pin;
power <= ww_power;
display_out <= ww_display_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X67_Y0_N16
\data_out_pin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\data_out_pin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\data_out_pin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\data_out_pin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \data_out_pin[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\data_out_pin[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\data_out_pin[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_out_pin[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\data_out_pin[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \enable~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\rw_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \rw_pin~output_o\);

-- Location: IOOBUF_X0_Y44_N16
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

-- Location: IOOBUF_X0_Y58_N16
\power~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \power~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_out[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_out[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_out[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_out[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_out[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_out[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_out[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

ww_data_out_pin(0) <= \data_out_pin[0]~output_o\;

ww_data_out_pin(1) <= \data_out_pin[1]~output_o\;

ww_data_out_pin(2) <= \data_out_pin[2]~output_o\;

ww_data_out_pin(3) <= \data_out_pin[3]~output_o\;

ww_data_out_pin(4) <= \data_out_pin[4]~output_o\;

ww_data_out_pin(5) <= \data_out_pin[5]~output_o\;

ww_data_out_pin(6) <= \data_out_pin[6]~output_o\;

ww_data_out_pin(7) <= \data_out_pin[7]~output_o\;

ww_enable <= \enable~output_o\;

ww_rw_pin <= \rw_pin~output_o\;

ww_rs_pin <= \rs_pin~output_o\;

ww_power <= \power~output_o\;

ww_display_out(0) <= \display_out[0]~output_o\;

ww_display_out(1) <= \display_out[1]~output_o\;

ww_display_out(2) <= \display_out[2]~output_o\;

ww_display_out(3) <= \display_out[3]~output_o\;

ww_display_out(4) <= \display_out[4]~output_o\;

ww_display_out(5) <= \display_out[5]~output_o\;

ww_display_out(6) <= \display_out[6]~output_o\;
END structure;


