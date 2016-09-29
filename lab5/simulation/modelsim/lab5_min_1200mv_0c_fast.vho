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

-- DATE "09/29/2016 15:09:06"

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
	aors : IN std_logic;
	x0 : IN std_logic;
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	y0 : IN std_logic;
	y1 : IN std_logic;
	y2 : IN std_logic;
	y3 : IN std_logic;
	a : BUFFER std_logic;
	b : BUFFER std_logic;
	c : BUFFER std_logic;
	d : BUFFER std_logic;
	e : BUFFER std_logic;
	f : BUFFER std_logic;
	g : BUFFER std_logic
	);
END lab5;

-- Design Ports Information
-- a	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aors	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_aors : std_logic;
SIGNAL ww_x0 : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \x0~input_o\ : std_logic;
SIGNAL \aors~input_o\ : std_logic;
SIGNAL \y0~input_o\ : std_logic;
SIGNAL \adder0|cout~0_combout\ : std_logic;
SIGNAL \y1~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \adder1|cout~0_combout\ : std_logic;
SIGNAL \y2~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \adder2|sum~0_combout\ : std_logic;
SIGNAL \y3~input_o\ : std_logic;
SIGNAL \adder2|cout~0_combout\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \adder3|sum~0_combout\ : std_logic;
SIGNAL \adder1|sum~combout\ : std_logic;
SIGNAL \adder0|sum~0_combout\ : std_logic;
SIGNAL \answer|a~0_combout\ : std_logic;
SIGNAL \answer|b~0_combout\ : std_logic;
SIGNAL \answer|c~0_combout\ : std_logic;
SIGNAL \answer|d~0_combout\ : std_logic;
SIGNAL \answer|e~0_combout\ : std_logic;
SIGNAL \answer|f~0_combout\ : std_logic;
SIGNAL \answer|g~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_g~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_f~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_e~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_d~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_c~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \answer|ALT_INV_a~0_combout\ : std_logic;

BEGIN

ww_aors <= aors;
ww_x0 <= x0;
ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_y0 <= y0;
ww_y1 <= y1;
ww_y2 <= y2;
ww_y3 <= y3;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\answer|ALT_INV_g~0_combout\ <= NOT \answer|g~0_combout\;
\answer|ALT_INV_f~0_combout\ <= NOT \answer|f~0_combout\;
\answer|ALT_INV_e~0_combout\ <= NOT \answer|e~0_combout\;
\answer|ALT_INV_d~0_combout\ <= NOT \answer|d~0_combout\;
\answer|ALT_INV_c~0_combout\ <= NOT \answer|c~0_combout\;
\answer|ALT_INV_b~0_combout\ <= NOT \answer|b~0_combout\;
\answer|ALT_INV_a~0_combout\ <= NOT \answer|a~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_a~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_b~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_c~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_e~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_f~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \answer|ALT_INV_g~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\x0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x0,
	o => \x0~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\aors~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aors,
	o => \aors~input_o\);

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

-- Location: LCCOMB_X114_Y18_N16
\adder0|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder0|cout~0_combout\ = (\y0~input_o\ & (\x0~input_o\)) # (!\y0~input_o\ & ((\aors~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0~input_o\,
	datac => \aors~input_o\,
	datad => \y0~input_o\,
	combout => \adder0|cout~0_combout\);

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

-- Location: IOIBUF_X115_Y14_N1
\x1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: LCCOMB_X114_Y18_N12
\adder1|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|cout~0_combout\ = (\adder0|cout~0_combout\ & ((\x1~input_o\) # (\y1~input_o\ $ (\aors~input_o\)))) # (!\adder0|cout~0_combout\ & (\x1~input_o\ & (\y1~input_o\ $ (\aors~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|cout~0_combout\,
	datab => \y1~input_o\,
	datac => \aors~input_o\,
	datad => \x1~input_o\,
	combout => \adder1|cout~0_combout\);

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

-- Location: LCCOMB_X114_Y18_N6
\adder2|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|sum~0_combout\ = \adder1|cout~0_combout\ $ (\aors~input_o\ $ (\y2~input_o\ $ (\x2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|cout~0_combout\,
	datab => \aors~input_o\,
	datac => \y2~input_o\,
	datad => \x2~input_o\,
	combout => \adder2|sum~0_combout\);

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

-- Location: LCCOMB_X114_Y18_N24
\adder2|cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder2|cout~0_combout\ = (\adder1|cout~0_combout\ & ((\x2~input_o\) # (\aors~input_o\ $ (\y2~input_o\)))) # (!\adder1|cout~0_combout\ & (\x2~input_o\ & (\aors~input_o\ $ (\y2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder1|cout~0_combout\,
	datab => \aors~input_o\,
	datac => \y2~input_o\,
	datad => \x2~input_o\,
	combout => \adder2|cout~0_combout\);

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

-- Location: LCCOMB_X114_Y18_N18
\adder3|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder3|sum~0_combout\ = \y3~input_o\ $ (\adder2|cout~0_combout\ $ (\aors~input_o\ $ (\x3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y3~input_o\,
	datab => \adder2|cout~0_combout\,
	datac => \aors~input_o\,
	datad => \x3~input_o\,
	combout => \adder3|sum~0_combout\);

-- Location: LCCOMB_X114_Y18_N26
\adder1|sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder1|sum~combout\ = \adder0|cout~0_combout\ $ (\y1~input_o\ $ (\aors~input_o\ $ (\x1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder0|cout~0_combout\,
	datab => \y1~input_o\,
	datac => \aors~input_o\,
	datad => \x1~input_o\,
	combout => \adder1|sum~combout\);

-- Location: LCCOMB_X114_Y18_N20
\adder0|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder0|sum~0_combout\ = \x0~input_o\ $ (\y0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x0~input_o\,
	datad => \y0~input_o\,
	combout => \adder0|sum~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\answer|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|a~0_combout\ = (\adder2|sum~0_combout\ & ((\adder1|sum~combout\) # (\adder3|sum~0_combout\ $ (\adder0|sum~0_combout\)))) # (!\adder2|sum~0_combout\ & ((\adder3|sum~0_combout\ $ (\adder1|sum~combout\)) # (!\adder0|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|a~0_combout\);

-- Location: LCCOMB_X114_Y18_N8
\answer|b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|b~0_combout\ = (\adder3|sum~0_combout\ & ((\adder0|sum~0_combout\ & ((!\adder1|sum~combout\))) # (!\adder0|sum~0_combout\ & (!\adder2|sum~0_combout\)))) # (!\adder3|sum~0_combout\ & ((\adder1|sum~combout\ $ (!\adder0|sum~0_combout\)) # 
-- (!\adder2|sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|b~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\answer|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|c~0_combout\ = (\adder2|sum~0_combout\ & (((!\adder1|sum~combout\ & \adder0|sum~0_combout\)) # (!\adder3|sum~0_combout\))) # (!\adder2|sum~0_combout\ & ((\adder3|sum~0_combout\) # ((\adder0|sum~0_combout\) # (!\adder1|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|c~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\answer|d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|d~0_combout\ = (\adder0|sum~0_combout\ & (\adder2|sum~0_combout\ $ (((\adder1|sum~combout\))))) # (!\adder0|sum~0_combout\ & ((\adder2|sum~0_combout\ & ((\adder3|sum~0_combout\) # (\adder1|sum~combout\))) # (!\adder2|sum~0_combout\ & 
-- ((!\adder1|sum~combout\) # (!\adder3|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|d~0_combout\);

-- Location: LCCOMB_X114_Y18_N14
\answer|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|e~0_combout\ = (\adder1|sum~combout\ & (((\adder3|sum~0_combout\) # (!\adder0|sum~0_combout\)))) # (!\adder1|sum~combout\ & ((\adder2|sum~0_combout\ & (\adder3|sum~0_combout\)) # (!\adder2|sum~0_combout\ & ((!\adder0|sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|e~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\answer|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|f~0_combout\ = (\adder2|sum~0_combout\ & ((\adder3|sum~0_combout\ $ (!\adder1|sum~combout\)) # (!\adder0|sum~0_combout\))) # (!\adder2|sum~0_combout\ & ((\adder3|sum~0_combout\) # ((!\adder1|sum~combout\ & !\adder0|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|f~0_combout\);

-- Location: LCCOMB_X114_Y18_N10
\answer|g~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \answer|g~0_combout\ = (\adder0|sum~0_combout\ & ((\adder3|sum~0_combout\) # (\adder2|sum~0_combout\ $ (\adder1|sum~combout\)))) # (!\adder0|sum~0_combout\ & ((\adder1|sum~combout\) # (\adder2|sum~0_combout\ $ (\adder3|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder2|sum~0_combout\,
	datab => \adder3|sum~0_combout\,
	datac => \adder1|sum~combout\,
	datad => \adder0|sum~0_combout\,
	combout => \answer|g~0_combout\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;
END structure;


