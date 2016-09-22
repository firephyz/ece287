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

-- DATE "09/22/2016 15:56:17"

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

ENTITY 	lab5 IS
    PORT (
	x0 : IN std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	y0 : IN std_logic;
	y1 : IN std_logic;
	y2 : IN std_logic;
	y3 : IN std_logic;
	s0 : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s2 : BUFFER std_logic;
	s3 : BUFFER std_logic;
	cout : BUFFER std_logic
	);
END lab5;

-- Design Ports Information
-- s0	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y3	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s3~9_combout\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \s3~11_combout\ : std_logic;
SIGNAL \s3~8_combout\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \s3~10_combout\ : std_logic;
SIGNAL \y3~input_o\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;

BEGIN

ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_y0 <= y0;
ww_y1 <= y1;
ww_y2 <= y2;
ww_y3 <= y3;
s0 <= ww_s0;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X107_Y73_N9
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s0~0_combout\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s2~0_combout\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s3~11_combout\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\x1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\y1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y1,
	o => \y1~input_o\);

-- Location: LCCOMB_X114_Y18_N16
\s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s0~0_combout\ = \x1~input_o\ $ (\y1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datac => \y1~input_o\,
	combout => \s0~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\x0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\y0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y0,
	o => \y0~input_o\);

-- Location: LCCOMB_X114_Y18_N2
\s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = \x0~input_o\ $ (\y0~input_o\ $ (((\x1~input_o\ & \y1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x0~input_o\,
	datac => \y1~input_o\,
	datad => \y0~input_o\,
	combout => \s1~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = (\x0~input_o\ & ((\y0~input_o\) # ((\x1~input_o\ & \y1~input_o\)))) # (!\x0~input_o\ & (\x1~input_o\ & (\y1~input_o\ & \y0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x0~input_o\,
	datac => \y1~input_o\,
	datad => \y0~input_o\,
	combout => \s2~0_combout\);

-- Location: LCCOMB_X114_Y18_N24
\s3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3~9_combout\ = (\x0~input_o\ & ((\y0~input_o\) # ((\x1~input_o\ & \y1~input_o\)))) # (!\x0~input_o\ & (\x1~input_o\ & (\y1~input_o\ & \y0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~input_o\,
	datab => \x0~input_o\,
	datac => \y1~input_o\,
	datad => \y0~input_o\,
	combout => \s3~9_combout\);

-- Location: IOIBUF_X115_Y10_N1
\y2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y2,
	o => \y2~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\x2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: LCCOMB_X114_Y18_N22
\s3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3~11_combout\ = (\s3~9_combout\ & (\y2~input_o\ & \x2~input_o\)) # (!\s3~9_combout\ & ((\y2~input_o\) # (\x2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s3~9_combout\,
	datac => \y2~input_o\,
	datad => \x2~input_o\,
	combout => \s3~11_combout\);

-- Location: LCCOMB_X114_Y18_N6
\s3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3~8_combout\ = \y2~input_o\ $ (\x2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y2~input_o\,
	datad => \x2~input_o\,
	combout => \s3~8_combout\);

-- Location: IOIBUF_X115_Y13_N8
\x3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

-- Location: LCCOMB_X114_Y18_N26
\s3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s3~10_combout\ = (\s3~9_combout\ & ((\y2~input_o\) # (\x2~input_o\))) # (!\s3~9_combout\ & (\y2~input_o\ & \x2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s3~9_combout\,
	datac => \y2~input_o\,
	datad => \x2~input_o\,
	combout => \s3~10_combout\);

-- Location: IOIBUF_X115_Y15_N1
\y3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y3,
	o => \y3~input_o\);

-- Location: LCCOMB_X114_Y18_N4
\cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\x3~input_o\ & ((\y3~input_o\ & (!\s3~8_combout\)) # (!\y3~input_o\ & ((\s3~10_combout\))))) # (!\x3~input_o\ & ((\y3~input_o\ & ((\s3~10_combout\))) # (!\y3~input_o\ & (\s3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s3~8_combout\,
	datab => \x3~input_o\,
	datac => \s3~10_combout\,
	datad => \y3~input_o\,
	combout => \cout~0_combout\);

ww_s0 <= \s0~output_o\;

ww_s1 <= \s1~output_o\;

ww_s2 <= \s2~output_o\;

ww_s3 <= \s3~output_o\;

ww_cout <= \cout~output_o\;
END structure;


