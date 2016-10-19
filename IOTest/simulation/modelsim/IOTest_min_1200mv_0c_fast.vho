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

-- DATE "10/19/2016 07:50:19"

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

ENTITY 	IOTest IS
    PORT (
	in_out : IN std_logic;
	io : INOUT std_logic_vector(1 DOWNTO 0);
	peaker : OUT std_logic_vector(1 DOWNTO 0)
	);
END IOTest;

-- Design Ports Information
-- peaker[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- peaker[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- io[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_out	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IOTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_out : std_logic;
SIGNAL ww_peaker : std_logic_vector(1 DOWNTO 0);
SIGNAL \io[0]~input_o\ : std_logic;
SIGNAL \io[1]~input_o\ : std_logic;
SIGNAL \io[0]~output_o\ : std_logic;
SIGNAL \io[1]~output_o\ : std_logic;
SIGNAL \peaker[0]~output_o\ : std_logic;
SIGNAL \peaker[1]~output_o\ : std_logic;
SIGNAL \in_out~input_o\ : std_logic;

BEGIN

ww_in_out <= in_out;
peaker <= ww_peaker;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y73_N2
\io[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \io[0]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\io[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_out~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \io[1]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\peaker[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \peaker[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\peaker[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in_out~input_o\,
	devoe => ww_devoe,
	o => \peaker[1]~output_o\);

-- Location: IOIBUF_X0_Y62_N15
\in_out~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_out,
	o => \in_out~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\io[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io(0),
	o => \io[0]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\io[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => io(1),
	o => \io[1]~input_o\);

ww_peaker(0) <= \peaker[0]~output_o\;

ww_peaker(1) <= \peaker[1]~output_o\;

io(0) <= \io[0]~output_o\;

io(1) <= \io[1]~output_o\;
END structure;


