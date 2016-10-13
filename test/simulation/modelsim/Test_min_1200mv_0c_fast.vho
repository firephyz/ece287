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

-- DATE "10/12/2016 23:01:56"

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

ENTITY 	Test IS
    PORT (
	instr_in : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	exec : IN std_logic;
	data_out_pin : BUFFER std_logic_vector(7 DOWNTO 0);
	rw_pin : BUFFER std_logic;
	rs_pin : BUFFER std_logic;
	power_pin : BUFFER std_logic;
	enable : BUFFER std_logic;
	clk : IN std_logic
	);
END Test;

-- Design Ports Information
-- instr_in[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr_in[7]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exec	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_pin[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw_pin	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs_pin	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- power_pin	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_instr_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_exec : std_logic;
SIGNAL ww_data_out_pin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rw_pin : std_logic;
SIGNAL ww_rs_pin : std_logic;
SIGNAL ww_power_pin : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instr_in[0]~input_o\ : std_logic;
SIGNAL \instr_in[1]~input_o\ : std_logic;
SIGNAL \instr_in[2]~input_o\ : std_logic;
SIGNAL \instr_in[3]~input_o\ : std_logic;
SIGNAL \instr_in[4]~input_o\ : std_logic;
SIGNAL \instr_in[5]~input_o\ : std_logic;
SIGNAL \instr_in[6]~input_o\ : std_logic;
SIGNAL \instr_in[7]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \exec~input_o\ : std_logic;
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
SIGNAL \enable~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \has_init[1]~feeder_combout\ : std_logic;
SIGNAL \has_init[0]~feeder_combout\ : std_logic;
SIGNAL \power~0_combout\ : std_logic;
SIGNAL \power~q\ : std_logic;
SIGNAL has_init : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_instr_in <= instr_in;
ww_data_in <= data_in;
ww_exec <= exec;
data_out_pin <= ww_data_out_pin;
rw_pin <= ww_rw_pin;
rs_pin <= ww_rs_pin;
power_pin <= ww_power_pin;
enable <= ww_enable;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y52_N16
\data_out_pin[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\data_out_pin[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\data_out_pin[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\data_out_pin[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_pin[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X0_Y55_N23
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

-- Location: IOOBUF_X0_Y51_N16
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

-- Location: IOOBUF_X0_Y47_N2
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
\power_pin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \power~q\,
	devoe => ww_devoe,
	o => \power_pin~output_o\);

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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X1_Y58_N18
\has_init[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \has_init[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \has_init[1]~feeder_combout\);

-- Location: FF_X1_Y58_N19
\has_init[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \has_init[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => has_init(1));

-- Location: LCCOMB_X1_Y58_N28
\has_init[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \has_init[0]~feeder_combout\ = has_init(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => has_init(1),
	combout => \has_init[0]~feeder_combout\);

-- Location: FF_X1_Y58_N29
\has_init[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \has_init[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => has_init(0));

-- Location: LCCOMB_X1_Y58_N16
\power~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \power~0_combout\ = (has_init(1) & ((\power~q\) # (!has_init(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => has_init(0),
	datac => \power~q\,
	datad => has_init(1),
	combout => \power~0_combout\);

-- Location: FF_X1_Y58_N17
power : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \power~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \power~q\);

-- Location: IOIBUF_X81_Y0_N15
\instr_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(0),
	o => \instr_in[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\instr_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(1),
	o => \instr_in[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\instr_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(2),
	o => \instr_in[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\instr_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(3),
	o => \instr_in[3]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\instr_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(4),
	o => \instr_in[4]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\instr_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(5),
	o => \instr_in[5]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\instr_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(6),
	o => \instr_in[6]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\instr_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr_in(7),
	o => \instr_in[7]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\exec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_exec,
	o => \exec~input_o\);

ww_data_out_pin(0) <= \data_out_pin[0]~output_o\;

ww_data_out_pin(1) <= \data_out_pin[1]~output_o\;

ww_data_out_pin(2) <= \data_out_pin[2]~output_o\;

ww_data_out_pin(3) <= \data_out_pin[3]~output_o\;

ww_data_out_pin(4) <= \data_out_pin[4]~output_o\;

ww_data_out_pin(5) <= \data_out_pin[5]~output_o\;

ww_data_out_pin(6) <= \data_out_pin[6]~output_o\;

ww_data_out_pin(7) <= \data_out_pin[7]~output_o\;

ww_rw_pin <= \rw_pin~output_o\;

ww_rs_pin <= \rs_pin~output_o\;

ww_power_pin <= \power_pin~output_o\;

ww_enable <= \enable~output_o\;
END structure;


