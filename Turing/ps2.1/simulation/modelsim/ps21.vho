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

-- DATE "11/10/2016 20:40:54"

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

ENTITY 	ps21 IS
    PORT (
	keycode : OUT std_logic_vector(7 DOWNTO 0);
	PS2_DATA : IN std_logic;
	PS2_CLOCK : IN std_logic
	);
END ps21;

-- Design Ports Information
-- keycode[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keycode[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLOCK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DATA	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ps21 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_keycode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PS2_DATA : std_logic;
SIGNAL ww_PS2_CLOCK : std_logic;
SIGNAL \PS2_CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keycode[0]~output_o\ : std_logic;
SIGNAL \keycode[1]~output_o\ : std_logic;
SIGNAL \keycode[2]~output_o\ : std_logic;
SIGNAL \keycode[3]~output_o\ : std_logic;
SIGNAL \keycode[4]~output_o\ : std_logic;
SIGNAL \keycode[5]~output_o\ : std_logic;
SIGNAL \keycode[6]~output_o\ : std_logic;
SIGNAL \keycode[7]~output_o\ : std_logic;
SIGNAL \PS2_CLOCK~input_o\ : std_logic;
SIGNAL \PS2_CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.PARITY~q\ : std_logic;
SIGNAL \state.DONE~feeder_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \state.READY~0_combout\ : std_logic;
SIGNAL \state.READY~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.GRAB~q\ : std_logic;
SIGNAL \PS2_DATA~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \keycode[0]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[0]~reg0_q\ : std_logic;
SIGNAL \keycode[1]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[1]~reg0_q\ : std_logic;
SIGNAL \keycode[2]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[2]~reg0_q\ : std_logic;
SIGNAL \keycode[3]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[3]~reg0_q\ : std_logic;
SIGNAL \keycode[4]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[4]~reg0_q\ : std_logic;
SIGNAL \keycode[5]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[5]~reg0_q\ : std_logic;
SIGNAL \keycode[6]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[6]~reg0_q\ : std_logic;
SIGNAL \keycode[7]~reg0feeder_combout\ : std_logic;
SIGNAL \keycode[7]~reg0_q\ : std_logic;
SIGNAL index : std_logic_vector(2 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\ : std_logic;

BEGIN

keycode <= ww_keycode;
ww_PS2_DATA <= PS2_DATA;
ww_PS2_CLOCK <= PS2_CLOCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PS2_CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PS2_CLOCK~input_o\);
\ALT_INV_PS2_CLOCK~inputclkctrl_outclk\ <= NOT \PS2_CLOCK~inputclkctrl_outclk\;

-- Location: IOOBUF_X54_Y73_N9
\keycode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[0]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\keycode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[1]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\keycode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[2]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\keycode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[3]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\keycode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[4]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\keycode[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[5]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\keycode[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[6]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\keycode[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keycode[7]~reg0_q\,
	devoe => ww_devoe,
	o => \keycode[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\PS2_CLOCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_CLOCK,
	o => \PS2_CLOCK~input_o\);

-- Location: CLKCTRL_G2
\PS2_CLOCK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PS2_CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PS2_CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y42_N2
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (index(0) & ((\state.PARITY~q\) # ((!\state.READY~q\)))) # (!index(0) & (((\state.GRAB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PARITY~q\,
	datab => \state.READY~q\,
	datac => index(0),
	datad => \state.GRAB~q\,
	combout => \Selector13~1_combout\);

-- Location: FF_X59_Y42_N3
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LCCOMB_X59_Y42_N4
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.PARITY~q\) # (!\state.READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.PARITY~q\,
	datad => \state.READY~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X59_Y42_N0
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (index(1) & ((\Selector13~0_combout\) # ((\state.GRAB~q\ & !index(0))))) # (!index(1) & (\state.GRAB~q\ & (index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => index(0),
	datac => index(1),
	datad => \Selector13~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X59_Y42_N1
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LCCOMB_X59_Y42_N10
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.GRAB~q\ & (index(2) $ (((index(0) & index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => index(0),
	datac => index(2),
	datad => index(1),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X59_Y42_N26
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((index(2) & ((\state.PARITY~q\) # (!\state.READY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PARITY~q\,
	datab => \state.READY~q\,
	datac => index(2),
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X59_Y42_N27
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LCCOMB_X59_Y42_N8
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\state.GRAB~q\ & (index(0) & (index(2) & index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => index(0),
	datac => index(2),
	datad => index(1),
	combout => \state~12_combout\);

-- Location: FF_X59_Y42_N9
\state.PARITY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.PARITY~q\);

-- Location: LCCOMB_X58_Y42_N20
\state.DONE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.DONE~feeder_combout\ = \state.PARITY~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.PARITY~q\,
	combout => \state.DONE~feeder_combout\);

-- Location: FF_X58_Y42_N21
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \state.DONE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X59_Y42_N6
\state.READY~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.READY~0_combout\ = !\state.DONE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.DONE~q\,
	combout => \state.READY~0_combout\);

-- Location: FF_X59_Y42_N7
\state.READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \state.READY~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READY~q\);

-- Location: LCCOMB_X59_Y42_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.GRAB~q\ & (((!index(1)) # (!index(0))) # (!index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => index(2),
	datab => index(0),
	datac => \state.GRAB~q\,
	datad => index(1),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X59_Y42_N30
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # (!\state.READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.READY~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X59_Y42_N31
\state.GRAB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.GRAB~q\);

-- Location: IOIBUF_X60_Y73_N1
\PS2_DATA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_DATA,
	o => \PS2_DATA~input_o\);

-- Location: LCCOMB_X59_Y42_N12
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.GRAB~q\ & ((\PS2_DATA~input_o\) # ((data(7) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(7) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => \PS2_DATA~input_o\,
	datac => data(7),
	datad => \Selector13~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X59_Y42_N13
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: LCCOMB_X59_Y42_N22
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.GRAB~q\ & ((data(7)) # ((data(6) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(6) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(7),
	datac => data(6),
	datad => \Selector13~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X59_Y42_N23
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: LCCOMB_X59_Y42_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.GRAB~q\ & ((data(6)) # ((data(5) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(5) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(6),
	datac => data(5),
	datad => \Selector13~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X59_Y42_N17
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: LCCOMB_X59_Y42_N14
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.GRAB~q\ & ((data(5)) # ((data(4) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(4) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(5),
	datac => data(4),
	datad => \Selector13~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X59_Y42_N15
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: LCCOMB_X58_Y42_N18
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.GRAB~q\ & ((data(4)) # ((data(3) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(3) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(4),
	datac => data(3),
	datad => \Selector13~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X58_Y42_N19
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X59_Y42_N24
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.GRAB~q\ & ((data(3)) # ((data(2) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(2) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(3),
	datac => data(2),
	datad => \Selector13~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X59_Y42_N25
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X59_Y42_N18
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.GRAB~q\ & ((data(2)) # ((data(1) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(1) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(2),
	datac => data(1),
	datad => \Selector13~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X59_Y42_N19
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X59_Y42_N28
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.GRAB~q\ & ((data(1)) # ((data(0) & \Selector13~0_combout\)))) # (!\state.GRAB~q\ & (((data(0) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.GRAB~q\,
	datab => data(1),
	datac => data(0),
	datad => \Selector13~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X59_Y42_N29
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X58_Y42_N16
\keycode[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[0]~reg0feeder_combout\ = data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \keycode[0]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N17
\keycode[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[0]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[0]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N14
\keycode[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(1),
	combout => \keycode[1]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N15
\keycode[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[1]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[1]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N28
\keycode[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \keycode[2]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N29
\keycode[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[2]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[2]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N6
\keycode[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \keycode[3]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N7
\keycode[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[3]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[3]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N12
\keycode[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[4]~reg0feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(4),
	combout => \keycode[4]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N13
\keycode[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[4]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[4]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N22
\keycode[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[5]~reg0feeder_combout\ = data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \keycode[5]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N23
\keycode[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[5]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[5]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N24
\keycode[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[6]~reg0feeder_combout\ = data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \keycode[6]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N25
\keycode[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[6]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[6]~reg0_q\);

-- Location: LCCOMB_X58_Y42_N10
\keycode[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[7]~reg0feeder_combout\ = data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(7),
	combout => \keycode[7]~reg0feeder_combout\);

-- Location: FF_X58_Y42_N11
\keycode[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_PS2_CLOCK~inputclkctrl_outclk\,
	d => \keycode[7]~reg0feeder_combout\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keycode[7]~reg0_q\);

ww_keycode(0) <= \keycode[0]~output_o\;

ww_keycode(1) <= \keycode[1]~output_o\;

ww_keycode(2) <= \keycode[2]~output_o\;

ww_keycode(3) <= \keycode[3]~output_o\;

ww_keycode(4) <= \keycode[4]~output_o\;

ww_keycode(5) <= \keycode[5]~output_o\;

ww_keycode(6) <= \keycode[6]~output_o\;

ww_keycode(7) <= \keycode[7]~output_o\;
END structure;


