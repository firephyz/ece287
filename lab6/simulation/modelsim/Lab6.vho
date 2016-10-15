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

-- DATE "10/13/2016 14:47:58"

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

ENTITY 	lab_verilog_example IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	g : IN std_logic_vector(1 DOWNTO 0);
	out1 : OUT std_logic;
	out2 : OUT std_logic;
	out3 : OUT std_logic_vector(1 DOWNTO 0)
	);
END lab_verilog_example;

-- Design Ports Information
-- out1	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_verilog_example IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_g : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL ww_out3 : std_logic_vector(1 DOWNTO 0);
SIGNAL \g[1]~input_o\ : std_logic;
SIGNAL \out1~output_o\ : std_logic;
SIGNAL \out2~output_o\ : std_logic;
SIGNAL \out3[0]~output_o\ : std_logic;
SIGNAL \out3[1]~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \out1~0_combout\ : std_logic;
SIGNAL \g[0]~input_o\ : std_logic;
SIGNAL \out2~0_combout\ : std_logic;
SIGNAL \out3~0_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \out3~1_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_g <= g;
out1 <= ww_out1;
out2 <= ww_out2;
out3 <= ww_out3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y53_N2
\out1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~0_combout\,
	devoe => ww_devoe,
	o => \out1~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\out2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~0_combout\,
	devoe => ww_devoe,
	o => \out2~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\out3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~0_combout\,
	devoe => ww_devoe,
	o => \out3[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\out3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~1_combout\,
	devoe => ww_devoe,
	o => \out3[1]~output_o\);

-- Location: IOIBUF_X0_Y49_N8
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\c~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X1_Y52_N0
\out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~0_combout\ = (\a~input_o\ & (!\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \b~input_o\,
	datad => \c~input_o\,
	combout => \out1~0_combout\);

-- Location: IOIBUF_X0_Y50_N15
\g[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(0),
	o => \g[0]~input_o\);

-- Location: LCCOMB_X1_Y52_N18
\out2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2~0_combout\ = (!\a~input_o\ & \g[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \g[0]~input_o\,
	combout => \out2~0_combout\);

-- Location: LCCOMB_X1_Y52_N20
\out3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~0_combout\ = (\a~input_o\ & (\b~input_o\)) # (!\a~input_o\ & ((\c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \b~input_o\,
	datad => \c~input_o\,
	combout => \out3~0_combout\);

-- Location: IOIBUF_X0_Y49_N1
\d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: LCCOMB_X1_Y52_N14
\out3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~1_combout\ = (\a~input_o\ & (\d~input_o\)) # (!\a~input_o\ & ((\e~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \d~input_o\,
	datad => \e~input_o\,
	combout => \out3~1_combout\);

-- Location: IOIBUF_X85_Y73_N1
\g[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g(1),
	o => \g[1]~input_o\);

ww_out1 <= \out1~output_o\;

ww_out2 <= \out2~output_o\;

ww_out3(0) <= \out3[0]~output_o\;

ww_out3(1) <= \out3[1]~output_o\;
END structure;


