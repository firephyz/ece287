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

-- DATE "12/04/2016 13:27:49"

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

ENTITY 	Super IS
    PORT (
	lcd_data : BUFFER std_logic;
	lcd_enable : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	key_clock : IN std_logic;
	key_data : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END Super;

-- Design Ports Information
-- lcd_enable	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_data	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_clock	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Super IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_data : std_logic;
SIGNAL ww_lcd_enable : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_key_clock : std_logic;
SIGNAL ww_key_data : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_data~input_o\ : std_logic;
SIGNAL \key_clock~input_o\ : std_logic;
SIGNAL \lcd_data~input_o\ : std_logic;
SIGNAL \lcd_data~output_o\ : std_logic;
SIGNAL \lcd_enable~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[0]~32_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|WideOr3~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|timer_target[7]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux4~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|timer_target[3]~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Selector10~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|always0~4_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|timer_start~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|is_ready~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|timer_start~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[26]~85\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[27]~86_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[27]~87\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[28]~88_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[28]~89\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[29]~90_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[29]~91\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[30]~92_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[30]~93\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[31]~94_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~6_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~3_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|always0~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|always0~3_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[0]~33\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[1]~34_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[1]~35\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[2]~36_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[2]~37\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[3]~38_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[3]~39\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[4]~40_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[4]~41\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[5]~42_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[5]~43\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[6]~44_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[6]~45\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[7]~46_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[7]~47\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[8]~48_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[8]~49\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[9]~50_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[9]~51\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[10]~52_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[10]~53\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[11]~54_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[11]~55\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[12]~56_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[12]~57\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[13]~58_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[13]~59\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[14]~60_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[14]~61\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[15]~62_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[15]~63\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[16]~64_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[16]~65\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[17]~66_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[17]~67\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[18]~68_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[18]~69\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[19]~70_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[19]~71\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[20]~72_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[20]~73\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[21]~74_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[21]~75\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[22]~76_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[22]~77\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[23]~78_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[23]~79\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[24]~80_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[24]~81\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[25]~82_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[25]~83\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count[26]~84_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~5_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~7_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~9_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~10_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux5~5_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux5~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|state[1]~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux5~5_wirecell_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Decoder0~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|has_init~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|has_init~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux6~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux6~4_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux6~3_combout\ : std_logic;
SIGNAL \lcd_interface|execute~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux5~3_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux5~4_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Equal0~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux8~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux8~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux8~2_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Mux8~3_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|is_ready~q\ : std_logic;
SIGNAL \lcd_interface|rs_sel~0_combout\ : std_logic;
SIGNAL \lcd_interface|rs_sel~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|io_reg[0]~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|io_reg[0]~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Equal0~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Selector10~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|en_reg~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|en_reg~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|rw_reg~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|rw_reg~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|rw_reg~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Selector0~0_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|Selector0~1_combout\ : std_logic;
SIGNAL \lcd_interface|lcd_module|rs_reg~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|time_keeper|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_interface|lcd_module|timer_target\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_interface|lcd_module|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_interface|lcd_module|io_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_interface|lcd_module|ALT_INV_rw_reg~q\ : std_logic;
SIGNAL \lcd_interface|lcd_module|ALT_INV_state\ : std_logic_vector(1 DOWNTO 1);

BEGIN

lcd_data <= ww_lcd_data;
lcd_enable <= ww_lcd_enable;
lcd_rw <= ww_lcd_rw;
lcd_rs <= ww_lcd_rs;
ww_key_clock <= key_clock;
ww_key_data <= key_data;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\lcd_interface|lcd_module|ALT_INV_rw_reg~q\ <= NOT \lcd_interface|lcd_module|rw_reg~q\;
\lcd_interface|lcd_module|ALT_INV_state\(1) <= NOT \lcd_interface|lcd_module|state\(1);

-- Location: IOOBUF_X85_Y73_N23
\lcd_data~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_interface|lcd_module|io_reg\(0),
	oe => \lcd_interface|lcd_module|Equal0~1_combout\,
	devoe => ww_devoe,
	o => \lcd_data~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\lcd_enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_interface|lcd_module|en_reg~q\,
	devoe => ww_devoe,
	o => \lcd_enable~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_interface|lcd_module|ALT_INV_rw_reg~q\,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_interface|lcd_module|rs_reg~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

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

-- Location: LCCOMB_X83_Y72_N0
\lcd_interface|lcd_module|time_keeper|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[0]~32_combout\ = \lcd_interface|lcd_module|time_keeper|count\(0) $ (VCC)
-- \lcd_interface|lcd_module|time_keeper|count[0]~33\ = CARRY(\lcd_interface|lcd_module|time_keeper|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(0),
	datad => VCC,
	combout => \lcd_interface|lcd_module|time_keeper|count[0]~32_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[0]~33\);

-- Location: LCCOMB_X81_Y72_N10
\lcd_interface|lcd_module|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|WideOr3~0_combout\ = \lcd_interface|lcd_module|state\(3) $ (((\lcd_interface|lcd_module|state\(2)) # ((\lcd_interface|lcd_module|state\(1)) # (!\lcd_interface|lcd_module|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(2),
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|WideOr3~0_combout\);

-- Location: LCCOMB_X82_Y72_N26
\lcd_interface|lcd_module|timer_target[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|timer_target[7]~0_combout\ = (\lcd_interface|lcd_module|timer_target\(7)) # (\lcd_interface|lcd_module|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_interface|lcd_module|timer_target\(7),
	datad => \lcd_interface|lcd_module|WideOr3~0_combout\,
	combout => \lcd_interface|lcd_module|timer_target[7]~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X82_Y72_N27
\lcd_interface|lcd_module|timer_target[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|timer_target[7]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|timer_target\(7));

-- Location: LCCOMB_X82_Y72_N22
\lcd_interface|lcd_module|time_keeper|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|LessThan0~1_combout\ = (!\lcd_interface|lcd_module|timer_target\(7) & ((!\lcd_interface|lcd_module|time_keeper|count\(6)) # (!\lcd_interface|lcd_module|time_keeper|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|timer_target\(7),
	datac => \lcd_interface|lcd_module|time_keeper|count\(7),
	datad => \lcd_interface|lcd_module|time_keeper|count\(6),
	combout => \lcd_interface|lcd_module|time_keeper|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y72_N28
\lcd_interface|lcd_module|time_keeper|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\ = (\lcd_interface|lcd_module|timer_target\(7) & (!\lcd_interface|lcd_module|time_keeper|count\(7) & !\lcd_interface|lcd_module|time_keeper|count\(6))) # 
-- (!\lcd_interface|lcd_module|timer_target\(7) & (\lcd_interface|lcd_module|time_keeper|count\(7) & \lcd_interface|lcd_module|time_keeper|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|timer_target\(7),
	datac => \lcd_interface|lcd_module|time_keeper|count\(7),
	datad => \lcd_interface|lcd_module|time_keeper|count\(6),
	combout => \lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\);

-- Location: LCCOMB_X84_Y72_N14
\lcd_interface|lcd_module|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux4~0_combout\ = (!\lcd_interface|lcd_module|state\(3) & ((\lcd_interface|lcd_module|state\(1)) # (!\lcd_interface|lcd_module|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(0),
	combout => \lcd_interface|lcd_module|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y72_N30
\lcd_interface|lcd_module|timer_target[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|timer_target[3]~1_combout\ = \lcd_interface|lcd_module|state\(3) $ ((((\lcd_interface|lcd_module|state\(1)) # (\lcd_interface|lcd_module|state\(2))) # (!\lcd_interface|lcd_module|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(0),
	datab => \lcd_interface|lcd_module|state\(1),
	datac => \lcd_interface|lcd_module|state\(2),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|timer_target[3]~1_combout\);

-- Location: FF_X84_Y72_N15
\lcd_interface|lcd_module|timer_target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|Mux4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \lcd_interface|lcd_module|timer_target[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|timer_target\(1));

-- Location: LCCOMB_X84_Y72_N12
\lcd_interface|lcd_module|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Selector10~0_combout\ = ((\lcd_interface|lcd_module|state\(3)) # (!\lcd_interface|lcd_module|state\(1))) # (!\lcd_interface|lcd_module|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(0),
	datab => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|Selector10~0_combout\);

-- Location: FF_X84_Y72_N21
\lcd_interface|lcd_module|timer_target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|Selector10~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \lcd_interface|lcd_module|timer_target[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|timer_target\(3));

-- Location: FF_X84_Y72_N13
\lcd_interface|lcd_module|timer_target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|Equal0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \lcd_interface|lcd_module|timer_target[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|timer_target\(2));

-- Location: LCCOMB_X84_Y72_N10
\lcd_interface|lcd_module|time_keeper|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\ = (\lcd_interface|lcd_module|timer_target\(2) & (!\lcd_interface|lcd_module|timer_target\(1) & (!\lcd_interface|lcd_module|time_keeper|count\(2) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(1)))) # (!\lcd_interface|lcd_module|timer_target\(2) & (((!\lcd_interface|lcd_module|timer_target\(1) & !\lcd_interface|lcd_module|time_keeper|count\(1))) # (!\lcd_interface|lcd_module|time_keeper|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|timer_target\(2),
	datab => \lcd_interface|lcd_module|timer_target\(1),
	datac => \lcd_interface|lcd_module|time_keeper|count\(2),
	datad => \lcd_interface|lcd_module|time_keeper|count\(1),
	combout => \lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\);

-- Location: LCCOMB_X84_Y72_N16
\lcd_interface|lcd_module|time_keeper|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(4) & (!\lcd_interface|lcd_module|timer_target\(3) & ((\lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\) # 
-- (!\lcd_interface|lcd_module|time_keeper|count\(3))))) # (!\lcd_interface|lcd_module|time_keeper|count\(4) & (((!\lcd_interface|lcd_module|time_keeper|count\(3) & \lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\)) # 
-- (!\lcd_interface|lcd_module|timer_target\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(4),
	datab => \lcd_interface|lcd_module|timer_target\(3),
	datac => \lcd_interface|lcd_module|time_keeper|count\(3),
	datad => \lcd_interface|lcd_module|time_keeper|LessThan0~2_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\);

-- Location: LCCOMB_X84_Y72_N22
\lcd_interface|lcd_module|time_keeper|always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|always0~4_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(5) & ((\lcd_interface|lcd_module|timer_target\(1)) # (!\lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\))) # 
-- (!\lcd_interface|lcd_module|time_keeper|count\(5) & (\lcd_interface|lcd_module|timer_target\(1) & !\lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(5),
	datac => \lcd_interface|lcd_module|timer_target\(1),
	datad => \lcd_interface|lcd_module|time_keeper|LessThan0~3_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|always0~4_combout\);

-- Location: LCCOMB_X81_Y72_N28
\lcd_interface|lcd_module|timer_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|timer_start~0_combout\ = !\lcd_interface|lcd_module|state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_interface|lcd_module|state\(0),
	combout => \lcd_interface|lcd_module|timer_start~0_combout\);

-- Location: LCCOMB_X81_Y72_N30
\lcd_interface|lcd_module|is_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|is_ready~0_combout\ = (!\lcd_interface|lcd_module|state\(2) & (!\lcd_interface|lcd_module|state\(1) & !\lcd_interface|lcd_module|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(2),
	datab => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|is_ready~0_combout\);

-- Location: FF_X81_Y72_N29
\lcd_interface|lcd_module|timer_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|timer_start~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \lcd_interface|lcd_module|is_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|timer_start~q\);

-- Location: LCCOMB_X83_Y71_N20
\lcd_interface|lcd_module|time_keeper|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[26]~84_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(26) & (\lcd_interface|lcd_module|time_keeper|count[25]~83\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(26) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[25]~83\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[26]~85\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(26) & !\lcd_interface|lcd_module|time_keeper|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(26),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[25]~83\,
	combout => \lcd_interface|lcd_module|time_keeper|count[26]~84_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[26]~85\);

-- Location: LCCOMB_X83_Y71_N22
\lcd_interface|lcd_module|time_keeper|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[27]~86_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(27) & (!\lcd_interface|lcd_module|time_keeper|count[26]~85\)) # (!\lcd_interface|lcd_module|time_keeper|count\(27) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[26]~85\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[27]~87\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[26]~85\) # (!\lcd_interface|lcd_module|time_keeper|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(27),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[26]~85\,
	combout => \lcd_interface|lcd_module|time_keeper|count[27]~86_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[27]~87\);

-- Location: FF_X83_Y71_N23
\lcd_interface|lcd_module|time_keeper|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[27]~86_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(27));

-- Location: LCCOMB_X83_Y71_N24
\lcd_interface|lcd_module|time_keeper|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[28]~88_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(28) & (\lcd_interface|lcd_module|time_keeper|count[27]~87\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(28) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[27]~87\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[28]~89\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(28) & !\lcd_interface|lcd_module|time_keeper|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(28),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[27]~87\,
	combout => \lcd_interface|lcd_module|time_keeper|count[28]~88_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[28]~89\);

-- Location: FF_X83_Y71_N25
\lcd_interface|lcd_module|time_keeper|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[28]~88_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(28));

-- Location: LCCOMB_X83_Y71_N26
\lcd_interface|lcd_module|time_keeper|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[29]~90_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(29) & (!\lcd_interface|lcd_module|time_keeper|count[28]~89\)) # (!\lcd_interface|lcd_module|time_keeper|count\(29) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[28]~89\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[29]~91\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[28]~89\) # (!\lcd_interface|lcd_module|time_keeper|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(29),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[28]~89\,
	combout => \lcd_interface|lcd_module|time_keeper|count[29]~90_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[29]~91\);

-- Location: FF_X83_Y71_N27
\lcd_interface|lcd_module|time_keeper|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[29]~90_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(29));

-- Location: LCCOMB_X83_Y71_N28
\lcd_interface|lcd_module|time_keeper|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[30]~92_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(30) & (\lcd_interface|lcd_module|time_keeper|count[29]~91\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(30) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[29]~91\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[30]~93\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(30) & !\lcd_interface|lcd_module|time_keeper|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(30),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[29]~91\,
	combout => \lcd_interface|lcd_module|time_keeper|count[30]~92_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[30]~93\);

-- Location: FF_X83_Y71_N29
\lcd_interface|lcd_module|time_keeper|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[30]~92_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(30));

-- Location: LCCOMB_X83_Y71_N30
\lcd_interface|lcd_module|time_keeper|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[31]~94_combout\ = \lcd_interface|lcd_module|time_keeper|count\(31) $ (\lcd_interface|lcd_module|time_keeper|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(31),
	cin => \lcd_interface|lcd_module|time_keeper|count[30]~93\,
	combout => \lcd_interface|lcd_module|time_keeper|count[31]~94_combout\);

-- Location: FF_X83_Y71_N31
\lcd_interface|lcd_module|time_keeper|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[31]~94_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(31));

-- Location: LCCOMB_X82_Y72_N4
\lcd_interface|lcd_module|time_keeper|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~6_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(31) & (!\lcd_interface|lcd_module|time_keeper|count\(29) & (!\lcd_interface|lcd_module|time_keeper|count\(30) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(31),
	datab => \lcd_interface|lcd_module|time_keeper|count\(29),
	datac => \lcd_interface|lcd_module|time_keeper|count\(30),
	datad => \lcd_interface|lcd_module|time_keeper|count\(28),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y72_N10
\lcd_interface|lcd_module|time_keeper|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~0_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(10) & (!\lcd_interface|lcd_module|time_keeper|count\(8) & (!\lcd_interface|lcd_module|time_keeper|count\(11) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(10),
	datab => \lcd_interface|lcd_module|time_keeper|count\(8),
	datac => \lcd_interface|lcd_module|time_keeper|count\(11),
	datad => \lcd_interface|lcd_module|time_keeper|count\(9),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y72_N8
\lcd_interface|lcd_module|time_keeper|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~1_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(15) & (!\lcd_interface|lcd_module|time_keeper|count\(12) & (!\lcd_interface|lcd_module|time_keeper|count\(13) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(15),
	datab => \lcd_interface|lcd_module|time_keeper|count\(12),
	datac => \lcd_interface|lcd_module|time_keeper|count\(13),
	datad => \lcd_interface|lcd_module|time_keeper|count\(14),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y71_N22
\lcd_interface|lcd_module|time_keeper|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~2_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(19) & (!\lcd_interface|lcd_module|time_keeper|count\(16) & (!\lcd_interface|lcd_module|time_keeper|count\(17) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(19),
	datab => \lcd_interface|lcd_module|time_keeper|count\(16),
	datac => \lcd_interface|lcd_module|time_keeper|count\(17),
	datad => \lcd_interface|lcd_module|time_keeper|count\(18),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y71_N0
\lcd_interface|lcd_module|time_keeper|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~3_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(20) & (!\lcd_interface|lcd_module|time_keeper|count\(22) & (!\lcd_interface|lcd_module|time_keeper|count\(21) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(20),
	datab => \lcd_interface|lcd_module|time_keeper|count\(22),
	datac => \lcd_interface|lcd_module|time_keeper|count\(21),
	datad => \lcd_interface|lcd_module|time_keeper|count\(23),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y72_N6
\lcd_interface|lcd_module|time_keeper|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\ = (\lcd_interface|lcd_module|time_keeper|Equal0~0_combout\ & (\lcd_interface|lcd_module|time_keeper|Equal0~1_combout\ & (\lcd_interface|lcd_module|time_keeper|Equal0~2_combout\ & 
-- \lcd_interface|lcd_module|time_keeper|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|Equal0~0_combout\,
	datab => \lcd_interface|lcd_module|time_keeper|Equal0~1_combout\,
	datac => \lcd_interface|lcd_module|time_keeper|Equal0~2_combout\,
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~3_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y72_N16
\lcd_interface|lcd_module|time_keeper|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|always0~2_combout\ = (\lcd_interface|lcd_module|time_keeper|Equal0~5_combout\ & (\lcd_interface|lcd_module|timer_start~q\ & (\lcd_interface|lcd_module|time_keeper|Equal0~6_combout\ & 
-- \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|Equal0~5_combout\,
	datab => \lcd_interface|lcd_module|timer_start~q\,
	datac => \lcd_interface|lcd_module|time_keeper|Equal0~6_combout\,
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|always0~2_combout\);

-- Location: LCCOMB_X82_Y72_N30
\lcd_interface|lcd_module|time_keeper|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|always0~3_combout\ = ((!\lcd_interface|lcd_module|time_keeper|LessThan0~1_combout\ & ((\lcd_interface|lcd_module|time_keeper|always0~4_combout\) # (!\lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\)))) # 
-- (!\lcd_interface|lcd_module|time_keeper|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|LessThan0~1_combout\,
	datab => \lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\,
	datac => \lcd_interface|lcd_module|time_keeper|always0~4_combout\,
	datad => \lcd_interface|lcd_module|time_keeper|always0~2_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|always0~3_combout\);

-- Location: FF_X83_Y72_N1
\lcd_interface|lcd_module|time_keeper|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[0]~32_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(0));

-- Location: LCCOMB_X83_Y72_N2
\lcd_interface|lcd_module|time_keeper|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[1]~34_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(1) & (!\lcd_interface|lcd_module|time_keeper|count[0]~33\)) # (!\lcd_interface|lcd_module|time_keeper|count\(1) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[0]~33\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[1]~35\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[0]~33\) # (!\lcd_interface|lcd_module|time_keeper|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(1),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[0]~33\,
	combout => \lcd_interface|lcd_module|time_keeper|count[1]~34_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[1]~35\);

-- Location: FF_X83_Y72_N3
\lcd_interface|lcd_module|time_keeper|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[1]~34_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(1));

-- Location: LCCOMB_X83_Y72_N4
\lcd_interface|lcd_module|time_keeper|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[2]~36_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(2) & (\lcd_interface|lcd_module|time_keeper|count[1]~35\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(2) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[1]~35\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[2]~37\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(2) & !\lcd_interface|lcd_module|time_keeper|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(2),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[1]~35\,
	combout => \lcd_interface|lcd_module|time_keeper|count[2]~36_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[2]~37\);

-- Location: FF_X83_Y72_N5
\lcd_interface|lcd_module|time_keeper|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[2]~36_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(2));

-- Location: LCCOMB_X83_Y72_N6
\lcd_interface|lcd_module|time_keeper|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[3]~38_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(3) & (!\lcd_interface|lcd_module|time_keeper|count[2]~37\)) # (!\lcd_interface|lcd_module|time_keeper|count\(3) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[2]~37\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[3]~39\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[2]~37\) # (!\lcd_interface|lcd_module|time_keeper|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(3),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[2]~37\,
	combout => \lcd_interface|lcd_module|time_keeper|count[3]~38_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[3]~39\);

-- Location: FF_X83_Y72_N7
\lcd_interface|lcd_module|time_keeper|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[3]~38_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(3));

-- Location: LCCOMB_X83_Y72_N8
\lcd_interface|lcd_module|time_keeper|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[4]~40_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(4) & (\lcd_interface|lcd_module|time_keeper|count[3]~39\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(4) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[3]~39\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[4]~41\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(4) & !\lcd_interface|lcd_module|time_keeper|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(4),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[3]~39\,
	combout => \lcd_interface|lcd_module|time_keeper|count[4]~40_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[4]~41\);

-- Location: FF_X83_Y72_N9
\lcd_interface|lcd_module|time_keeper|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[4]~40_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(4));

-- Location: LCCOMB_X83_Y72_N10
\lcd_interface|lcd_module|time_keeper|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[5]~42_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(5) & (!\lcd_interface|lcd_module|time_keeper|count[4]~41\)) # (!\lcd_interface|lcd_module|time_keeper|count\(5) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[4]~41\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[5]~43\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[4]~41\) # (!\lcd_interface|lcd_module|time_keeper|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(5),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[4]~41\,
	combout => \lcd_interface|lcd_module|time_keeper|count[5]~42_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[5]~43\);

-- Location: FF_X83_Y72_N11
\lcd_interface|lcd_module|time_keeper|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[5]~42_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(5));

-- Location: LCCOMB_X83_Y72_N12
\lcd_interface|lcd_module|time_keeper|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[6]~44_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(6) & (\lcd_interface|lcd_module|time_keeper|count[5]~43\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(6) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[5]~43\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[6]~45\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(6) & !\lcd_interface|lcd_module|time_keeper|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(6),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[5]~43\,
	combout => \lcd_interface|lcd_module|time_keeper|count[6]~44_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[6]~45\);

-- Location: FF_X83_Y72_N13
\lcd_interface|lcd_module|time_keeper|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[6]~44_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(6));

-- Location: LCCOMB_X83_Y72_N14
\lcd_interface|lcd_module|time_keeper|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[7]~46_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(7) & (!\lcd_interface|lcd_module|time_keeper|count[6]~45\)) # (!\lcd_interface|lcd_module|time_keeper|count\(7) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[6]~45\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[7]~47\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[6]~45\) # (!\lcd_interface|lcd_module|time_keeper|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(7),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[6]~45\,
	combout => \lcd_interface|lcd_module|time_keeper|count[7]~46_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[7]~47\);

-- Location: FF_X83_Y72_N15
\lcd_interface|lcd_module|time_keeper|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[7]~46_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(7));

-- Location: LCCOMB_X83_Y72_N16
\lcd_interface|lcd_module|time_keeper|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[8]~48_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(8) & (\lcd_interface|lcd_module|time_keeper|count[7]~47\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(8) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[7]~47\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[8]~49\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(8) & !\lcd_interface|lcd_module|time_keeper|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(8),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[7]~47\,
	combout => \lcd_interface|lcd_module|time_keeper|count[8]~48_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[8]~49\);

-- Location: FF_X83_Y72_N17
\lcd_interface|lcd_module|time_keeper|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[8]~48_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(8));

-- Location: LCCOMB_X83_Y72_N18
\lcd_interface|lcd_module|time_keeper|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[9]~50_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(9) & (!\lcd_interface|lcd_module|time_keeper|count[8]~49\)) # (!\lcd_interface|lcd_module|time_keeper|count\(9) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[8]~49\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[9]~51\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[8]~49\) # (!\lcd_interface|lcd_module|time_keeper|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(9),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[8]~49\,
	combout => \lcd_interface|lcd_module|time_keeper|count[9]~50_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[9]~51\);

-- Location: FF_X83_Y72_N19
\lcd_interface|lcd_module|time_keeper|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[9]~50_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(9));

-- Location: LCCOMB_X83_Y72_N20
\lcd_interface|lcd_module|time_keeper|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[10]~52_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(10) & (\lcd_interface|lcd_module|time_keeper|count[9]~51\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(10) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[9]~51\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[10]~53\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(10) & !\lcd_interface|lcd_module|time_keeper|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(10),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[9]~51\,
	combout => \lcd_interface|lcd_module|time_keeper|count[10]~52_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[10]~53\);

-- Location: FF_X83_Y72_N21
\lcd_interface|lcd_module|time_keeper|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[10]~52_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(10));

-- Location: LCCOMB_X83_Y72_N22
\lcd_interface|lcd_module|time_keeper|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[11]~54_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(11) & (!\lcd_interface|lcd_module|time_keeper|count[10]~53\)) # (!\lcd_interface|lcd_module|time_keeper|count\(11) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[10]~53\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[11]~55\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[10]~53\) # (!\lcd_interface|lcd_module|time_keeper|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(11),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[10]~53\,
	combout => \lcd_interface|lcd_module|time_keeper|count[11]~54_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[11]~55\);

-- Location: FF_X83_Y72_N23
\lcd_interface|lcd_module|time_keeper|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[11]~54_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(11));

-- Location: LCCOMB_X83_Y72_N24
\lcd_interface|lcd_module|time_keeper|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[12]~56_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(12) & (\lcd_interface|lcd_module|time_keeper|count[11]~55\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(12) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[11]~55\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[12]~57\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(12) & !\lcd_interface|lcd_module|time_keeper|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(12),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[11]~55\,
	combout => \lcd_interface|lcd_module|time_keeper|count[12]~56_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[12]~57\);

-- Location: FF_X83_Y72_N25
\lcd_interface|lcd_module|time_keeper|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[12]~56_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(12));

-- Location: LCCOMB_X83_Y72_N26
\lcd_interface|lcd_module|time_keeper|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[13]~58_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(13) & (!\lcd_interface|lcd_module|time_keeper|count[12]~57\)) # (!\lcd_interface|lcd_module|time_keeper|count\(13) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[12]~57\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[13]~59\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[12]~57\) # (!\lcd_interface|lcd_module|time_keeper|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(13),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[12]~57\,
	combout => \lcd_interface|lcd_module|time_keeper|count[13]~58_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[13]~59\);

-- Location: FF_X83_Y72_N27
\lcd_interface|lcd_module|time_keeper|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[13]~58_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(13));

-- Location: LCCOMB_X83_Y72_N28
\lcd_interface|lcd_module|time_keeper|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[14]~60_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(14) & (\lcd_interface|lcd_module|time_keeper|count[13]~59\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(14) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[13]~59\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[14]~61\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(14) & !\lcd_interface|lcd_module|time_keeper|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(14),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[13]~59\,
	combout => \lcd_interface|lcd_module|time_keeper|count[14]~60_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[14]~61\);

-- Location: FF_X83_Y72_N29
\lcd_interface|lcd_module|time_keeper|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[14]~60_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(14));

-- Location: LCCOMB_X83_Y72_N30
\lcd_interface|lcd_module|time_keeper|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[15]~62_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(15) & (!\lcd_interface|lcd_module|time_keeper|count[14]~61\)) # (!\lcd_interface|lcd_module|time_keeper|count\(15) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[14]~61\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[15]~63\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[14]~61\) # (!\lcd_interface|lcd_module|time_keeper|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(15),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[14]~61\,
	combout => \lcd_interface|lcd_module|time_keeper|count[15]~62_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[15]~63\);

-- Location: FF_X83_Y72_N31
\lcd_interface|lcd_module|time_keeper|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[15]~62_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(15));

-- Location: LCCOMB_X83_Y71_N0
\lcd_interface|lcd_module|time_keeper|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[16]~64_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(16) & (\lcd_interface|lcd_module|time_keeper|count[15]~63\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(16) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[15]~63\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[16]~65\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(16) & !\lcd_interface|lcd_module|time_keeper|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(16),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[15]~63\,
	combout => \lcd_interface|lcd_module|time_keeper|count[16]~64_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[16]~65\);

-- Location: FF_X82_Y71_N21
\lcd_interface|lcd_module|time_keeper|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|time_keeper|count[16]~64_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(16));

-- Location: LCCOMB_X83_Y71_N2
\lcd_interface|lcd_module|time_keeper|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[17]~66_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(17) & (!\lcd_interface|lcd_module|time_keeper|count[16]~65\)) # (!\lcd_interface|lcd_module|time_keeper|count\(17) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[16]~65\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[17]~67\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[16]~65\) # (!\lcd_interface|lcd_module|time_keeper|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(17),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[16]~65\,
	combout => \lcd_interface|lcd_module|time_keeper|count[17]~66_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[17]~67\);

-- Location: FF_X82_Y71_N27
\lcd_interface|lcd_module|time_keeper|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|time_keeper|count[17]~66_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(17));

-- Location: LCCOMB_X83_Y71_N4
\lcd_interface|lcd_module|time_keeper|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[18]~68_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(18) & (\lcd_interface|lcd_module|time_keeper|count[17]~67\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(18) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[17]~67\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[18]~69\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(18) & !\lcd_interface|lcd_module|time_keeper|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(18),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[17]~67\,
	combout => \lcd_interface|lcd_module|time_keeper|count[18]~68_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[18]~69\);

-- Location: FF_X82_Y71_N25
\lcd_interface|lcd_module|time_keeper|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|time_keeper|count[18]~68_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(18));

-- Location: LCCOMB_X83_Y71_N6
\lcd_interface|lcd_module|time_keeper|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[19]~70_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(19) & (!\lcd_interface|lcd_module|time_keeper|count[18]~69\)) # (!\lcd_interface|lcd_module|time_keeper|count\(19) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[18]~69\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[19]~71\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[18]~69\) # (!\lcd_interface|lcd_module|time_keeper|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(19),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[18]~69\,
	combout => \lcd_interface|lcd_module|time_keeper|count[19]~70_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[19]~71\);

-- Location: FF_X82_Y71_N31
\lcd_interface|lcd_module|time_keeper|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|time_keeper|count[19]~70_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(19));

-- Location: LCCOMB_X83_Y71_N8
\lcd_interface|lcd_module|time_keeper|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[20]~72_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(20) & (\lcd_interface|lcd_module|time_keeper|count[19]~71\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(20) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[19]~71\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[20]~73\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(20) & !\lcd_interface|lcd_module|time_keeper|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(20),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[19]~71\,
	combout => \lcd_interface|lcd_module|time_keeper|count[20]~72_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[20]~73\);

-- Location: FF_X82_Y71_N13
\lcd_interface|lcd_module|time_keeper|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|time_keeper|count[20]~72_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(20));

-- Location: LCCOMB_X83_Y71_N10
\lcd_interface|lcd_module|time_keeper|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[21]~74_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(21) & (!\lcd_interface|lcd_module|time_keeper|count[20]~73\)) # (!\lcd_interface|lcd_module|time_keeper|count\(21) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[20]~73\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[21]~75\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[20]~73\) # (!\lcd_interface|lcd_module|time_keeper|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(21),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[20]~73\,
	combout => \lcd_interface|lcd_module|time_keeper|count[21]~74_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[21]~75\);

-- Location: FF_X83_Y71_N11
\lcd_interface|lcd_module|time_keeper|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[21]~74_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(21));

-- Location: LCCOMB_X83_Y71_N12
\lcd_interface|lcd_module|time_keeper|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[22]~76_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(22) & (\lcd_interface|lcd_module|time_keeper|count[21]~75\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(22) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[21]~75\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[22]~77\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(22) & !\lcd_interface|lcd_module|time_keeper|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(22),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[21]~75\,
	combout => \lcd_interface|lcd_module|time_keeper|count[22]~76_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[22]~77\);

-- Location: FF_X83_Y71_N13
\lcd_interface|lcd_module|time_keeper|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[22]~76_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(22));

-- Location: LCCOMB_X83_Y71_N14
\lcd_interface|lcd_module|time_keeper|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[23]~78_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(23) & (!\lcd_interface|lcd_module|time_keeper|count[22]~77\)) # (!\lcd_interface|lcd_module|time_keeper|count\(23) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[22]~77\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[23]~79\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[22]~77\) # (!\lcd_interface|lcd_module|time_keeper|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(23),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[22]~77\,
	combout => \lcd_interface|lcd_module|time_keeper|count[23]~78_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[23]~79\);

-- Location: FF_X83_Y71_N15
\lcd_interface|lcd_module|time_keeper|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[23]~78_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(23));

-- Location: LCCOMB_X83_Y71_N16
\lcd_interface|lcd_module|time_keeper|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[24]~80_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(24) & (\lcd_interface|lcd_module|time_keeper|count[23]~79\ $ (GND))) # (!\lcd_interface|lcd_module|time_keeper|count\(24) & 
-- (!\lcd_interface|lcd_module|time_keeper|count[23]~79\ & VCC))
-- \lcd_interface|lcd_module|time_keeper|count[24]~81\ = CARRY((\lcd_interface|lcd_module|time_keeper|count\(24) & !\lcd_interface|lcd_module|time_keeper|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(24),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[23]~79\,
	combout => \lcd_interface|lcd_module|time_keeper|count[24]~80_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[24]~81\);

-- Location: FF_X83_Y71_N17
\lcd_interface|lcd_module|time_keeper|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[24]~80_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(24));

-- Location: LCCOMB_X83_Y71_N18
\lcd_interface|lcd_module|time_keeper|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|count[25]~82_combout\ = (\lcd_interface|lcd_module|time_keeper|count\(25) & (!\lcd_interface|lcd_module|time_keeper|count[24]~81\)) # (!\lcd_interface|lcd_module|time_keeper|count\(25) & 
-- ((\lcd_interface|lcd_module|time_keeper|count[24]~81\) # (GND)))
-- \lcd_interface|lcd_module|time_keeper|count[25]~83\ = CARRY((!\lcd_interface|lcd_module|time_keeper|count[24]~81\) # (!\lcd_interface|lcd_module|time_keeper|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|time_keeper|count\(25),
	datad => VCC,
	cin => \lcd_interface|lcd_module|time_keeper|count[24]~81\,
	combout => \lcd_interface|lcd_module|time_keeper|count[25]~82_combout\,
	cout => \lcd_interface|lcd_module|time_keeper|count[25]~83\);

-- Location: FF_X83_Y71_N19
\lcd_interface|lcd_module|time_keeper|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[25]~82_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(25));

-- Location: FF_X83_Y71_N21
\lcd_interface|lcd_module|time_keeper|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|time_keeper|count[26]~84_combout\,
	sclr => \lcd_interface|lcd_module|time_keeper|always0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|time_keeper|count\(26));

-- Location: LCCOMB_X82_Y71_N18
\lcd_interface|lcd_module|time_keeper|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~5_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(26) & (!\lcd_interface|lcd_module|time_keeper|count\(25) & (!\lcd_interface|lcd_module|time_keeper|count\(24) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(26),
	datab => \lcd_interface|lcd_module|time_keeper|count\(25),
	datac => \lcd_interface|lcd_module|time_keeper|count\(24),
	datad => \lcd_interface|lcd_module|time_keeper|count\(27),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~5_combout\);

-- Location: LCCOMB_X84_Y72_N4
\lcd_interface|lcd_module|time_keeper|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~7_combout\ = (!\lcd_interface|lcd_module|time_keeper|count\(0) & ((\lcd_interface|lcd_module|timer_target\(3) & (!\lcd_interface|lcd_module|time_keeper|count\(3) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(4))) # (!\lcd_interface|lcd_module|timer_target\(3) & (\lcd_interface|lcd_module|time_keeper|count\(3) & \lcd_interface|lcd_module|time_keeper|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|timer_target\(3),
	datab => \lcd_interface|lcd_module|time_keeper|count\(3),
	datac => \lcd_interface|lcd_module|time_keeper|count\(0),
	datad => \lcd_interface|lcd_module|time_keeper|count\(4),
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y72_N2
\lcd_interface|lcd_module|time_keeper|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~9_combout\ = (\lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\ & (\lcd_interface|lcd_module|time_keeper|Equal0~7_combout\ & (\lcd_interface|lcd_module|time_keeper|count\(2) $ 
-- (\lcd_interface|lcd_module|timer_target\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|count\(2),
	datab => \lcd_interface|lcd_module|time_keeper|LessThan0~0_combout\,
	datac => \lcd_interface|lcd_module|timer_target\(2),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~7_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y72_N20
\lcd_interface|lcd_module|time_keeper|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~10_combout\ = (\lcd_interface|lcd_module|time_keeper|Equal0~9_combout\ & ((\lcd_interface|lcd_module|timer_target\(1) & (!\lcd_interface|lcd_module|time_keeper|count\(5) & 
-- !\lcd_interface|lcd_module|time_keeper|count\(1))) # (!\lcd_interface|lcd_module|timer_target\(1) & (\lcd_interface|lcd_module|time_keeper|count\(5) & \lcd_interface|lcd_module|time_keeper|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|timer_target\(1),
	datab => \lcd_interface|lcd_module|time_keeper|count\(5),
	datac => \lcd_interface|lcd_module|time_keeper|count\(1),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~9_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~10_combout\);

-- Location: LCCOMB_X82_Y72_N18
\lcd_interface|lcd_module|time_keeper|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\ = (\lcd_interface|lcd_module|time_keeper|Equal0~5_combout\ & (\lcd_interface|lcd_module|time_keeper|Equal0~6_combout\ & (\lcd_interface|lcd_module|time_keeper|Equal0~4_combout\ & 
-- \lcd_interface|lcd_module|time_keeper|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|time_keeper|Equal0~5_combout\,
	datab => \lcd_interface|lcd_module|time_keeper|Equal0~6_combout\,
	datac => \lcd_interface|lcd_module|time_keeper|Equal0~4_combout\,
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~10_combout\,
	combout => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\);

-- Location: LCCOMB_X82_Y72_N0
\lcd_interface|lcd_module|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux5~5_combout\ = (!\lcd_interface|lcd_module|state\(0) & (!\lcd_interface|lcd_module|state\(3) & \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(3),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\,
	combout => \lcd_interface|lcd_module|Mux5~5_combout\);

-- Location: LCCOMB_X82_Y72_N24
\lcd_interface|lcd_module|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux5~2_combout\ = (\lcd_interface|lcd_module|state\(3)) # ((!\lcd_interface|lcd_module|state\(0) & \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(3),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\,
	combout => \lcd_interface|lcd_module|Mux5~2_combout\);

-- Location: LCCOMB_X82_Y72_N12
\lcd_interface|lcd_module|state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|state[1]~0_combout\ = (\lcd_interface|lcd_module|state\(2) & ((\lcd_interface|lcd_module|Mux5~2_combout\))) # (!\lcd_interface|lcd_module|state\(2) & (\lcd_interface|lcd_module|Mux5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(2),
	datab => \lcd_interface|lcd_module|Mux5~5_combout\,
	datad => \lcd_interface|lcd_module|Mux5~2_combout\,
	combout => \lcd_interface|lcd_module|state[1]~0_combout\);

-- Location: LCCOMB_X82_Y72_N14
\lcd_interface|lcd_module|Mux5~5_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux5~5_wirecell_combout\ = !\lcd_interface|lcd_module|Mux5~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_interface|lcd_module|Mux5~5_combout\,
	combout => \lcd_interface|lcd_module|Mux5~5_wirecell_combout\);

-- Location: FF_X82_Y72_N13
\lcd_interface|lcd_module|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|state[1]~0_combout\,
	asdata => \lcd_interface|lcd_module|Mux5~5_wirecell_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \lcd_interface|lcd_module|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|state\(1));

-- Location: LCCOMB_X81_Y72_N8
\lcd_interface|lcd_module|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Decoder0~0_combout\ = (!\lcd_interface|lcd_module|state\(1) & !\lcd_interface|lcd_module|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(2),
	combout => \lcd_interface|lcd_module|Decoder0~0_combout\);

-- Location: LCCOMB_X81_Y72_N22
\lcd_interface|lcd_module|has_init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|has_init~0_combout\ = (\lcd_interface|lcd_module|has_init~q\) # ((!\lcd_interface|lcd_module|state\(3) & (\lcd_interface|lcd_module|state\(0) & \lcd_interface|lcd_module|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|has_init~q\,
	datad => \lcd_interface|lcd_module|Decoder0~0_combout\,
	combout => \lcd_interface|lcd_module|has_init~0_combout\);

-- Location: FF_X81_Y72_N23
\lcd_interface|lcd_module|has_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|has_init~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|has_init~q\);

-- Location: LCCOMB_X81_Y72_N0
\lcd_interface|lcd_module|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux6~2_combout\ = ((\lcd_interface|lcd_module|state\(0) & ((\lcd_interface|lcd_module|has_init~q\) # (\lcd_interface|lcd_module|state\(1)))) # (!\lcd_interface|lcd_module|state\(0) & ((!\lcd_interface|lcd_module|state\(1))))) # 
-- (!\lcd_interface|lcd_module|time_keeper|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|has_init~q\,
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\,
	combout => \lcd_interface|lcd_module|Mux6~2_combout\);

-- Location: LCCOMB_X81_Y72_N12
\lcd_interface|lcd_module|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux6~4_combout\ = (!\lcd_interface|lcd_module|state\(3) & (!\lcd_interface|lcd_module|state\(0) & (\lcd_interface|lcd_module|state\(1) & \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\,
	combout => \lcd_interface|lcd_module|Mux6~4_combout\);

-- Location: LCCOMB_X81_Y72_N16
\lcd_interface|lcd_module|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux6~3_combout\ = (\lcd_interface|lcd_module|state\(2) & (!\lcd_interface|lcd_module|state\(3) & (\lcd_interface|lcd_module|Mux6~2_combout\))) # (!\lcd_interface|lcd_module|state\(2) & 
-- (((\lcd_interface|lcd_module|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|Mux6~2_combout\,
	datac => \lcd_interface|lcd_module|state\(2),
	datad => \lcd_interface|lcd_module|Mux6~4_combout\,
	combout => \lcd_interface|lcd_module|Mux6~3_combout\);

-- Location: FF_X81_Y72_N17
\lcd_interface|lcd_module|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|Mux6~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|state\(2));

-- Location: FF_X81_Y72_N19
\lcd_interface|execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|is_ready~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|execute~q\);

-- Location: LCCOMB_X81_Y72_N18
\lcd_interface|lcd_module|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux5~3_combout\ = (\lcd_interface|lcd_module|state\(3) & (\lcd_interface|lcd_module|Decoder0~0_combout\ & ((\lcd_interface|lcd_module|state\(0)) # (\lcd_interface|execute~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|execute~q\,
	datad => \lcd_interface|lcd_module|Decoder0~0_combout\,
	combout => \lcd_interface|lcd_module|Mux5~3_combout\);

-- Location: LCCOMB_X81_Y72_N6
\lcd_interface|lcd_module|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux5~4_combout\ = (\lcd_interface|lcd_module|Mux5~3_combout\) # ((\lcd_interface|lcd_module|state\(2) & \lcd_interface|lcd_module|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(2),
	datac => \lcd_interface|lcd_module|Mux5~3_combout\,
	datad => \lcd_interface|lcd_module|Mux6~4_combout\,
	combout => \lcd_interface|lcd_module|Mux5~4_combout\);

-- Location: FF_X81_Y72_N7
\lcd_interface|lcd_module|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|Mux5~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|state\(3));

-- Location: LCCOMB_X81_Y72_N26
\lcd_interface|lcd_module|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Equal0~0_combout\ = (\lcd_interface|lcd_module|state\(0)) # (\lcd_interface|lcd_module|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|state\(0),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y72_N4
\lcd_interface|lcd_module|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux8~0_combout\ = (\lcd_interface|execute~q\ & (\lcd_interface|lcd_module|Decoder0~0_combout\ & (\lcd_interface|lcd_module|state\(3) $ (\lcd_interface|lcd_module|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|execute~q\,
	datac => \lcd_interface|lcd_module|Decoder0~0_combout\,
	datad => \lcd_interface|lcd_module|state\(0),
	combout => \lcd_interface|lcd_module|Mux8~0_combout\);

-- Location: LCCOMB_X81_Y72_N24
\lcd_interface|lcd_module|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux8~1_combout\ = (\lcd_interface|lcd_module|state\(2) & (!\lcd_interface|lcd_module|state\(3) & ((\lcd_interface|lcd_module|has_init~q\) # (\lcd_interface|lcd_module|state\(1))))) # (!\lcd_interface|lcd_module|state\(2) & 
-- ((\lcd_interface|lcd_module|state\(1) $ (\lcd_interface|lcd_module|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|has_init~q\,
	datab => \lcd_interface|lcd_module|state\(2),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|Mux8~1_combout\);

-- Location: LCCOMB_X81_Y72_N14
\lcd_interface|lcd_module|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux8~2_combout\ = (\lcd_interface|lcd_module|state\(0) & \lcd_interface|lcd_module|Mux8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|state\(0),
	datad => \lcd_interface|lcd_module|Mux8~1_combout\,
	combout => \lcd_interface|lcd_module|Mux8~2_combout\);

-- Location: LCCOMB_X81_Y72_N20
\lcd_interface|lcd_module|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Mux8~3_combout\ = (!\lcd_interface|lcd_module|Mux8~0_combout\ & ((\lcd_interface|lcd_module|time_keeper|Equal0~8_combout\ & ((!\lcd_interface|lcd_module|Mux8~2_combout\))) # 
-- (!\lcd_interface|lcd_module|time_keeper|Equal0~8_combout\ & (\lcd_interface|lcd_module|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|Equal0~0_combout\,
	datab => \lcd_interface|lcd_module|Mux8~0_combout\,
	datac => \lcd_interface|lcd_module|Mux8~2_combout\,
	datad => \lcd_interface|lcd_module|time_keeper|Equal0~8_combout\,
	combout => \lcd_interface|lcd_module|Mux8~3_combout\);

-- Location: FF_X81_Y72_N21
\lcd_interface|lcd_module|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|Mux8~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|state\(0));

-- Location: FF_X81_Y72_N31
\lcd_interface|lcd_module|is_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lcd_interface|lcd_module|state\(0),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \lcd_interface|lcd_module|is_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|is_ready~q\);

-- Location: LCCOMB_X84_Y72_N6
\lcd_interface|rs_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|rs_sel~0_combout\ = (\lcd_interface|rs_sel~q\) # (\lcd_interface|lcd_module|is_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_interface|rs_sel~q\,
	datad => \lcd_interface|lcd_module|is_ready~q\,
	combout => \lcd_interface|rs_sel~0_combout\);

-- Location: FF_X84_Y72_N7
\lcd_interface|rs_sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|rs_sel~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|rs_sel~q\);

-- Location: LCCOMB_X84_Y72_N24
\lcd_interface|lcd_module|io_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|io_reg[0]~0_combout\ = (\lcd_interface|lcd_module|state\(0) & ((\lcd_interface|lcd_module|state\(1) & (!\lcd_interface|lcd_module|state\(3) & \lcd_interface|lcd_module|state\(2))) # (!\lcd_interface|lcd_module|state\(1) & 
-- ((!\lcd_interface|lcd_module|state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(1),
	datac => \lcd_interface|lcd_module|state\(2),
	datad => \lcd_interface|lcd_module|state\(0),
	combout => \lcd_interface|lcd_module|io_reg[0]~0_combout\);

-- Location: LCCOMB_X84_Y72_N28
\lcd_interface|lcd_module|io_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|io_reg[0]~1_combout\ = (\lcd_interface|lcd_module|io_reg[0]~0_combout\ & (\lcd_interface|rs_sel~q\ & (\lcd_interface|lcd_module|state\(1)))) # (!\lcd_interface|lcd_module|io_reg[0]~0_combout\ & 
-- (((\lcd_interface|lcd_module|io_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|rs_sel~q\,
	datab => \lcd_interface|lcd_module|state\(1),
	datac => \lcd_interface|lcd_module|io_reg\(0),
	datad => \lcd_interface|lcd_module|io_reg[0]~0_combout\,
	combout => \lcd_interface|lcd_module|io_reg[0]~1_combout\);

-- Location: FF_X84_Y72_N29
\lcd_interface|lcd_module|io_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|io_reg[0]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|io_reg\(0));

-- Location: LCCOMB_X85_Y72_N4
\lcd_interface|lcd_module|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Equal0~1_combout\ = (\lcd_interface|lcd_module|state\(3)) # ((\lcd_interface|lcd_module|state\(0)) # ((\lcd_interface|lcd_module|state\(2)) # (!\lcd_interface|lcd_module|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(0),
	datac => \lcd_interface|lcd_module|state\(1),
	datad => \lcd_interface|lcd_module|state\(2),
	combout => \lcd_interface|lcd_module|Equal0~1_combout\);

-- Location: LCCOMB_X84_Y72_N18
\lcd_interface|lcd_module|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Selector10~1_combout\ = (\lcd_interface|lcd_module|state\(3)) # ((!\lcd_interface|lcd_module|state\(1) & ((\lcd_interface|lcd_module|state\(2)) # (!\lcd_interface|lcd_module|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(1),
	datac => \lcd_interface|lcd_module|state\(2),
	datad => \lcd_interface|lcd_module|state\(0),
	combout => \lcd_interface|lcd_module|Selector10~1_combout\);

-- Location: LCCOMB_X84_Y72_N8
\lcd_interface|lcd_module|en_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|en_reg~0_combout\ = (\lcd_interface|lcd_module|Selector10~1_combout\ & ((\lcd_interface|lcd_module|en_reg~q\))) # (!\lcd_interface|lcd_module|Selector10~1_combout\ & (!\lcd_interface|lcd_module|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_interface|lcd_module|Selector10~0_combout\,
	datac => \lcd_interface|lcd_module|en_reg~q\,
	datad => \lcd_interface|lcd_module|Selector10~1_combout\,
	combout => \lcd_interface|lcd_module|en_reg~0_combout\);

-- Location: FF_X84_Y72_N9
\lcd_interface|lcd_module|en_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|en_reg~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|en_reg~q\);

-- Location: LCCOMB_X84_Y72_N20
\lcd_interface|lcd_module|rw_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|rw_reg~0_combout\ = (\lcd_interface|lcd_module|state\(2) & (!\lcd_interface|lcd_module|state\(0) & !\lcd_interface|lcd_module|state\(3))) # (!\lcd_interface|lcd_module|state\(2) & (\lcd_interface|lcd_module|state\(0) & 
-- \lcd_interface|lcd_module|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(2),
	datab => \lcd_interface|lcd_module|state\(0),
	datad => \lcd_interface|lcd_module|state\(3),
	combout => \lcd_interface|lcd_module|rw_reg~0_combout\);

-- Location: LCCOMB_X84_Y72_N2
\lcd_interface|lcd_module|rw_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|rw_reg~1_combout\ = (\lcd_interface|lcd_module|state\(1) & (((\lcd_interface|lcd_module|rw_reg~q\)))) # (!\lcd_interface|lcd_module|state\(1) & ((\lcd_interface|lcd_module|state\(3) & (\lcd_interface|lcd_module|rw_reg~q\ & 
-- !\lcd_interface|lcd_module|rw_reg~0_combout\)) # (!\lcd_interface|lcd_module|state\(3) & ((\lcd_interface|lcd_module|rw_reg~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|state\(1),
	datac => \lcd_interface|lcd_module|rw_reg~q\,
	datad => \lcd_interface|lcd_module|rw_reg~0_combout\,
	combout => \lcd_interface|lcd_module|rw_reg~1_combout\);

-- Location: FF_X84_Y72_N3
\lcd_interface|lcd_module|rw_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|rw_reg~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|rw_reg~q\);

-- Location: LCCOMB_X85_Y72_N18
\lcd_interface|lcd_module|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Selector0~0_combout\ = (\lcd_interface|lcd_module|state\(3) & (\lcd_interface|lcd_module|rs_reg~q\ & ((\lcd_interface|lcd_module|state\(2)) # (!\lcd_interface|lcd_module|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|state\(3),
	datab => \lcd_interface|lcd_module|rs_reg~q\,
	datac => \lcd_interface|lcd_module|state\(0),
	datad => \lcd_interface|lcd_module|state\(2),
	combout => \lcd_interface|lcd_module|Selector0~0_combout\);

-- Location: LCCOMB_X85_Y72_N0
\lcd_interface|lcd_module|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_interface|lcd_module|Selector0~1_combout\ = (\lcd_interface|lcd_module|Selector0~0_combout\) # ((!\lcd_interface|lcd_module|Equal0~0_combout\ & (\lcd_interface|lcd_module|state\(2) & \lcd_interface|rs_sel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_interface|lcd_module|Equal0~0_combout\,
	datab => \lcd_interface|lcd_module|state\(2),
	datac => \lcd_interface|rs_sel~q\,
	datad => \lcd_interface|lcd_module|Selector0~0_combout\,
	combout => \lcd_interface|lcd_module|Selector0~1_combout\);

-- Location: FF_X85_Y72_N1
\lcd_interface|lcd_module|rs_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_interface|lcd_module|Selector0~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \lcd_interface|lcd_module|ALT_INV_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_interface|lcd_module|rs_reg~q\);

-- Location: IOIBUF_X18_Y0_N15
\key_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_data,
	o => \key_data~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\key_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_clock,
	o => \key_clock~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\lcd_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lcd_data,
	o => \lcd_data~input_o\);

ww_lcd_enable <= \lcd_enable~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_data <= \lcd_data~output_o\;
END structure;


