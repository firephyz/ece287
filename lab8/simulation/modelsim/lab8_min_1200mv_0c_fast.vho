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

-- DATE "11/03/2016 15:29:12"

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

ENTITY 	lab8 IS
    PORT (
	green : OUT std_logic;
	yellow : OUT std_logic;
	red : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END lab8;

-- Design Ports Information
-- green	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \green~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~81_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \counter[1]~27_combout\ : std_logic;
SIGNAL \counter[1]~28\ : std_logic;
SIGNAL \counter[2]~29_combout\ : std_logic;
SIGNAL \counter[2]~30\ : std_logic;
SIGNAL \counter[3]~31_combout\ : std_logic;
SIGNAL \counter[3]~32\ : std_logic;
SIGNAL \counter[4]~33_combout\ : std_logic;
SIGNAL \counter[4]~34\ : std_logic;
SIGNAL \counter[5]~35_combout\ : std_logic;
SIGNAL \counter[5]~36\ : std_logic;
SIGNAL \counter[6]~37_combout\ : std_logic;
SIGNAL \counter[6]~38\ : std_logic;
SIGNAL \counter[7]~39_combout\ : std_logic;
SIGNAL \counter[7]~40\ : std_logic;
SIGNAL \counter[8]~41_combout\ : std_logic;
SIGNAL \counter[8]~42\ : std_logic;
SIGNAL \counter[9]~43_combout\ : std_logic;
SIGNAL \counter[9]~44\ : std_logic;
SIGNAL \counter[10]~45_combout\ : std_logic;
SIGNAL \counter[10]~46\ : std_logic;
SIGNAL \counter[11]~47_combout\ : std_logic;
SIGNAL \counter[11]~48\ : std_logic;
SIGNAL \counter[12]~49_combout\ : std_logic;
SIGNAL \counter[12]~50\ : std_logic;
SIGNAL \counter[13]~51_combout\ : std_logic;
SIGNAL \counter[13]~52\ : std_logic;
SIGNAL \counter[14]~53_combout\ : std_logic;
SIGNAL \counter[14]~54\ : std_logic;
SIGNAL \counter[15]~55_combout\ : std_logic;
SIGNAL \counter[15]~56\ : std_logic;
SIGNAL \counter[16]~57_combout\ : std_logic;
SIGNAL \counter[16]~58\ : std_logic;
SIGNAL \counter[17]~59_combout\ : std_logic;
SIGNAL \counter[17]~60\ : std_logic;
SIGNAL \counter[18]~61_combout\ : std_logic;
SIGNAL \counter[18]~62\ : std_logic;
SIGNAL \counter[19]~63_combout\ : std_logic;
SIGNAL \counter[19]~64\ : std_logic;
SIGNAL \counter[20]~65_combout\ : std_logic;
SIGNAL \counter[20]~66\ : std_logic;
SIGNAL \counter[21]~67_combout\ : std_logic;
SIGNAL \counter[21]~68\ : std_logic;
SIGNAL \counter[22]~69_combout\ : std_logic;
SIGNAL \counter[22]~70\ : std_logic;
SIGNAL \counter[23]~71_combout\ : std_logic;
SIGNAL \counter[23]~72\ : std_logic;
SIGNAL \counter[24]~73_combout\ : std_logic;
SIGNAL \counter[24]~74\ : std_logic;
SIGNAL \counter[25]~75_combout\ : std_logic;
SIGNAL \counter[25]~76\ : std_logic;
SIGNAL \counter[26]~77_combout\ : std_logic;
SIGNAL \counter[26]~78\ : std_logic;
SIGNAL \counter[27]~79_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \yellow~0_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_red~0_combout\ : std_logic;
SIGNAL \ALT_INV_yellow~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;

BEGIN

green <= ww_green;
yellow <= ww_yellow;
red <= ww_red;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_red~0_combout\ <= NOT \red~0_combout\;
\ALT_INV_yellow~0_combout\ <= NOT \yellow~0_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;

-- Location: IOOBUF_X69_Y73_N16
\green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~7_combout\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_yellow~0_combout\,
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_red~0_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

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

-- Location: LCCOMB_X69_Y13_N0
\counter[0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~81_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~81_combout\);

-- Location: IOIBUF_X115_Y14_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X69_Y13_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~81_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X69_Y13_N6
\counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~27_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~28\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~27_combout\,
	cout => \counter[1]~28\);

-- Location: FF_X69_Y13_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X69_Y13_N8
\counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~29_combout\ = (counter(2) & (!\counter[1]~28\)) # (!counter(2) & ((\counter[1]~28\) # (GND)))
-- \counter[2]~30\ = CARRY((!\counter[1]~28\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~28\,
	combout => \counter[2]~29_combout\,
	cout => \counter[2]~30\);

-- Location: FF_X69_Y13_N9
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X69_Y13_N10
\counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~31_combout\ = (counter(3) & (\counter[2]~30\ $ (GND))) # (!counter(3) & (!\counter[2]~30\ & VCC))
-- \counter[3]~32\ = CARRY((counter(3) & !\counter[2]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~30\,
	combout => \counter[3]~31_combout\,
	cout => \counter[3]~32\);

-- Location: FF_X69_Y13_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~31_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X69_Y13_N12
\counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~33_combout\ = (counter(4) & (!\counter[3]~32\)) # (!counter(4) & ((\counter[3]~32\) # (GND)))
-- \counter[4]~34\ = CARRY((!\counter[3]~32\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~32\,
	combout => \counter[4]~33_combout\,
	cout => \counter[4]~34\);

-- Location: FF_X69_Y13_N13
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X69_Y13_N14
\counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~35_combout\ = (counter(5) & (\counter[4]~34\ $ (GND))) # (!counter(5) & (!\counter[4]~34\ & VCC))
-- \counter[5]~36\ = CARRY((counter(5) & !\counter[4]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~34\,
	combout => \counter[5]~35_combout\,
	cout => \counter[5]~36\);

-- Location: FF_X69_Y13_N15
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~35_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X69_Y13_N16
\counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~37_combout\ = (counter(6) & (!\counter[5]~36\)) # (!counter(6) & ((\counter[5]~36\) # (GND)))
-- \counter[6]~38\ = CARRY((!\counter[5]~36\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~36\,
	combout => \counter[6]~37_combout\,
	cout => \counter[6]~38\);

-- Location: FF_X69_Y13_N17
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~37_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X69_Y13_N18
\counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~39_combout\ = (counter(7) & (\counter[6]~38\ $ (GND))) # (!counter(7) & (!\counter[6]~38\ & VCC))
-- \counter[7]~40\ = CARRY((counter(7) & !\counter[6]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~38\,
	combout => \counter[7]~39_combout\,
	cout => \counter[7]~40\);

-- Location: FF_X69_Y13_N19
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~39_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X69_Y13_N20
\counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~41_combout\ = (counter(8) & (!\counter[7]~40\)) # (!counter(8) & ((\counter[7]~40\) # (GND)))
-- \counter[8]~42\ = CARRY((!\counter[7]~40\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~40\,
	combout => \counter[8]~41_combout\,
	cout => \counter[8]~42\);

-- Location: FF_X69_Y13_N21
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~41_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X69_Y13_N22
\counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~43_combout\ = (counter(9) & (\counter[8]~42\ $ (GND))) # (!counter(9) & (!\counter[8]~42\ & VCC))
-- \counter[9]~44\ = CARRY((counter(9) & !\counter[8]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~42\,
	combout => \counter[9]~43_combout\,
	cout => \counter[9]~44\);

-- Location: FF_X69_Y13_N23
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~43_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X69_Y13_N24
\counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~45_combout\ = (counter(10) & (!\counter[9]~44\)) # (!counter(10) & ((\counter[9]~44\) # (GND)))
-- \counter[10]~46\ = CARRY((!\counter[9]~44\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~44\,
	combout => \counter[10]~45_combout\,
	cout => \counter[10]~46\);

-- Location: FF_X69_Y13_N25
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~45_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X69_Y13_N26
\counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~47_combout\ = (counter(11) & (\counter[10]~46\ $ (GND))) # (!counter(11) & (!\counter[10]~46\ & VCC))
-- \counter[11]~48\ = CARRY((counter(11) & !\counter[10]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~46\,
	combout => \counter[11]~47_combout\,
	cout => \counter[11]~48\);

-- Location: FF_X69_Y13_N27
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~47_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X69_Y13_N28
\counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~49_combout\ = (counter(12) & (!\counter[11]~48\)) # (!counter(12) & ((\counter[11]~48\) # (GND)))
-- \counter[12]~50\ = CARRY((!\counter[11]~48\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~48\,
	combout => \counter[12]~49_combout\,
	cout => \counter[12]~50\);

-- Location: FF_X69_Y13_N29
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~49_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X69_Y13_N30
\counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~51_combout\ = (counter(13) & (\counter[12]~50\ $ (GND))) # (!counter(13) & (!\counter[12]~50\ & VCC))
-- \counter[13]~52\ = CARRY((counter(13) & !\counter[12]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~50\,
	combout => \counter[13]~51_combout\,
	cout => \counter[13]~52\);

-- Location: FF_X69_Y13_N31
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~51_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X69_Y12_N0
\counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~53_combout\ = (counter(14) & (!\counter[13]~52\)) # (!counter(14) & ((\counter[13]~52\) # (GND)))
-- \counter[14]~54\ = CARRY((!\counter[13]~52\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~52\,
	combout => \counter[14]~53_combout\,
	cout => \counter[14]~54\);

-- Location: FF_X69_Y12_N1
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~53_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X69_Y12_N2
\counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~55_combout\ = (counter(15) & (\counter[14]~54\ $ (GND))) # (!counter(15) & (!\counter[14]~54\ & VCC))
-- \counter[15]~56\ = CARRY((counter(15) & !\counter[14]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~54\,
	combout => \counter[15]~55_combout\,
	cout => \counter[15]~56\);

-- Location: FF_X69_Y12_N3
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~55_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X69_Y12_N4
\counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~57_combout\ = (counter(16) & (!\counter[15]~56\)) # (!counter(16) & ((\counter[15]~56\) # (GND)))
-- \counter[16]~58\ = CARRY((!\counter[15]~56\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~56\,
	combout => \counter[16]~57_combout\,
	cout => \counter[16]~58\);

-- Location: FF_X69_Y12_N5
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~57_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X69_Y12_N6
\counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~59_combout\ = (counter(17) & (\counter[16]~58\ $ (GND))) # (!counter(17) & (!\counter[16]~58\ & VCC))
-- \counter[17]~60\ = CARRY((counter(17) & !\counter[16]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~58\,
	combout => \counter[17]~59_combout\,
	cout => \counter[17]~60\);

-- Location: FF_X69_Y12_N7
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~59_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X69_Y12_N8
\counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~61_combout\ = (counter(18) & (!\counter[17]~60\)) # (!counter(18) & ((\counter[17]~60\) # (GND)))
-- \counter[18]~62\ = CARRY((!\counter[17]~60\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~60\,
	combout => \counter[18]~61_combout\,
	cout => \counter[18]~62\);

-- Location: FF_X69_Y12_N9
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~61_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X69_Y12_N10
\counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~63_combout\ = (counter(19) & (\counter[18]~62\ $ (GND))) # (!counter(19) & (!\counter[18]~62\ & VCC))
-- \counter[19]~64\ = CARRY((counter(19) & !\counter[18]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~62\,
	combout => \counter[19]~63_combout\,
	cout => \counter[19]~64\);

-- Location: FF_X69_Y12_N11
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~63_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X69_Y12_N12
\counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~65_combout\ = (counter(20) & (!\counter[19]~64\)) # (!counter(20) & ((\counter[19]~64\) # (GND)))
-- \counter[20]~66\ = CARRY((!\counter[19]~64\) # (!counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~64\,
	combout => \counter[20]~65_combout\,
	cout => \counter[20]~66\);

-- Location: FF_X69_Y12_N13
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~65_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X69_Y12_N14
\counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~67_combout\ = (counter(21) & (\counter[20]~66\ $ (GND))) # (!counter(21) & (!\counter[20]~66\ & VCC))
-- \counter[21]~68\ = CARRY((counter(21) & !\counter[20]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~66\,
	combout => \counter[21]~67_combout\,
	cout => \counter[21]~68\);

-- Location: FF_X69_Y12_N15
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~67_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X69_Y12_N16
\counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~69_combout\ = (counter(22) & (!\counter[21]~68\)) # (!counter(22) & ((\counter[21]~68\) # (GND)))
-- \counter[22]~70\ = CARRY((!\counter[21]~68\) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~68\,
	combout => \counter[22]~69_combout\,
	cout => \counter[22]~70\);

-- Location: FF_X69_Y12_N17
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~69_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X69_Y12_N18
\counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~71_combout\ = (counter(23) & (\counter[22]~70\ $ (GND))) # (!counter(23) & (!\counter[22]~70\ & VCC))
-- \counter[23]~72\ = CARRY((counter(23) & !\counter[22]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~70\,
	combout => \counter[23]~71_combout\,
	cout => \counter[23]~72\);

-- Location: FF_X69_Y12_N19
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~71_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X69_Y12_N20
\counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~73_combout\ = (counter(24) & (!\counter[23]~72\)) # (!counter(24) & ((\counter[23]~72\) # (GND)))
-- \counter[24]~74\ = CARRY((!\counter[23]~72\) # (!counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~72\,
	combout => \counter[24]~73_combout\,
	cout => \counter[24]~74\);

-- Location: FF_X69_Y12_N21
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~73_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X69_Y12_N22
\counter[25]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~75_combout\ = (counter(25) & (\counter[24]~74\ $ (GND))) # (!counter(25) & (!\counter[24]~74\ & VCC))
-- \counter[25]~76\ = CARRY((counter(25) & !\counter[24]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datad => VCC,
	cin => \counter[24]~74\,
	combout => \counter[25]~75_combout\,
	cout => \counter[25]~76\);

-- Location: FF_X69_Y12_N23
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~75_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X69_Y12_N24
\counter[26]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[26]~77_combout\ = (counter(26) & (!\counter[25]~76\)) # (!counter(26) & ((\counter[25]~76\) # (GND)))
-- \counter[26]~78\ = CARRY((!\counter[25]~76\) # (!counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~76\,
	combout => \counter[26]~77_combout\,
	cout => \counter[26]~78\);

-- Location: FF_X69_Y12_N25
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[26]~77_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X69_Y12_N26
\counter[27]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[27]~79_combout\ = counter(27) $ (!\counter[26]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	cin => \counter[26]~78\,
	combout => \counter[27]~79_combout\);

-- Location: FF_X69_Y12_N27
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[27]~79_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X70_Y12_N22
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(16) & (!counter(14) & ((!counter(12)) # (!counter(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(16),
	datac => counter(14),
	datad => counter(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X70_Y12_N26
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(14) & (!counter(16) & (!counter(11) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(16),
	datac => counter(11),
	datad => counter(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X70_Y12_N16
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\ & (((!counter(8) & !counter(7))) # (!counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => \LessThan0~2_combout\,
	datad => counter(7),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X70_Y12_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!counter(16) & !counter(15))) # (!counter(17))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(17),
	datac => counter(16),
	datad => counter(15),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X70_Y12_N28
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(20) & (!counter(24) & !counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(24),
	datad => counter(19),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X70_Y12_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~1_combout\ & ((\LessThan0~4_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X72_Y12_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (counter(25) & counter(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(25),
	datad => counter(26),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X69_Y12_N28
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(24)) # ((counter(22) & (counter(23) & counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(23),
	datac => counter(21),
	datad => counter(24),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X70_Y12_N0
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter(27) & (!\LessThan0~6_combout\ & (\LessThan1~0_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datab => \LessThan0~6_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X69_Y12_N30
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\ & (counter(22) & (counter(21) & counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => counter(22),
	datac => counter(21),
	datad => counter(23),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X70_Y12_N12
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (\LessThan1~2_combout\ & ((counter(20)) # (counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => \LessThan1~2_combout\,
	datad => counter(19),
	combout => \LessThan1~11_combout\);

-- Location: LCCOMB_X69_Y13_N2
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (counter(0)) # ((counter(1)) # ((counter(3)) # (counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(3),
	datad => counter(2),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X69_Y13_N4
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (counter(4)) # ((counter(5)) # (counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => counter(5),
	datad => counter(6),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X70_Y12_N24
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (counter(13) & (counter(7) & (counter(15) & counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(7),
	datac => counter(15),
	datad => counter(12),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X70_Y12_N6
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (counter(9) & (\LessThan1~3_combout\ & ((\LessThan1~4_combout\) # (\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => counter(9),
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X70_Y12_N20
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (counter(10)) # ((counter(9) & counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datad => counter(8),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X70_Y12_N10
\LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (counter(13) & (counter(12) & ((\LessThan1~7_combout\) # (counter(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => \LessThan1~7_combout\,
	datac => counter(11),
	datad => counter(12),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X70_Y12_N8
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (counter(16)) # ((counter(15) & ((counter(14)) # (\LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(16),
	datac => counter(14),
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X70_Y12_N30
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counter(17) & counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(17),
	datad => counter(18),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X70_Y12_N18
\LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & ((\LessThan1~6_combout\) # (\LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => \LessThan1~9_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X70_Y12_N14
\LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = (\LessThan1~11_combout\) # ((\LessThan1~10_combout\) # ((counter(24) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~11_combout\,
	datab => counter(24),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~10_combout\,
	combout => \LessThan1~12_combout\);

-- Location: LCCOMB_X94_Y69_N4
\yellow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \yellow~0_combout\ = (!\LessThan1~12_combout\) # (!\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~7_combout\,
	datad => \LessThan1~12_combout\,
	combout => \yellow~0_combout\);

-- Location: LCCOMB_X94_Y69_N2
\red~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\LessThan1~12_combout\) # (!\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~7_combout\,
	datad => \LessThan1~12_combout\,
	combout => \red~0_combout\);

ww_green <= \green~output_o\;

ww_yellow <= \yellow~output_o\;

ww_red <= \red~output_o\;
END structure;


