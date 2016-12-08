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

-- DATE "12/08/2016 17:00:20"

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

ENTITY 	LCD_Display IS
    PORT (
	iCLK_50MHZ : IN std_logic;
	iRST_N : IN std_logic;
	hex1 : IN std_logic_vector(3 DOWNTO 0);
	hex0 : IN std_logic_vector(3 DOWNTO 0);
	LCD_RS : BUFFER std_logic;
	LCD_E : BUFFER std_logic;
	LCD_RW : BUFFER std_logic;
	DATA_BUS : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END LCD_Display;

-- Design Ports Information
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST_N	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK_50MHZ	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD_Display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK_50MHZ : std_logic;
SIGNAL ww_iRST_N : std_logic;
SIGNAL ww_hex1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_DATA_BUS : std_logic_vector(7 DOWNTO 0);
SIGNAL \iCLK_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \DATA_BUS[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS[7]~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \iCLK_50MHZ~input_o\ : std_logic;
SIGNAL \iCLK_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \iRST_N~input_o\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[15]~50_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[15]~51\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[16]~52_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[16]~53\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[17]~54_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[17]~55\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[18]~56_combout\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[18]~57\ : std_logic;
SIGNAL \CLK_COUNT_400HZ[19]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \CLK_400HZ~0_combout\ : std_logic;
SIGNAL \CLK_400HZ~feeder_combout\ : std_logic;
SIGNAL \CLK_400HZ~q\ : std_logic;
SIGNAL \CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \LCD_RS~0_combout\ : std_logic;
SIGNAL \state.DROP_LCD_E~q\ : std_logic;
SIGNAL \state.HOLD~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \state.RESET1~feeder_combout\ : std_logic;
SIGNAL \state.RESET1~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \next_command.LINE2~q\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state.LINE2~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \next_command.RESET2~q\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.RESET2~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \next_command.RESET3~q\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state.RESET3~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \next_command.FUNC_SET~q\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.FUNC_SET~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \next_command.DISPLAY_OFF~q\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \next_command.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \next_command.DISPLAY_ON~q\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state.DISPLAY_ON~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \next_command.MODE_SET~q\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state.MODE_SET~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \next_command.RETURN_HOME~q\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.RETURN_HOME~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \next_command.Print_String~q\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state.Print_String~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \u1|WideOr1~0_combout\ : std_logic;
SIGNAL \u1|WideOr0~0_combout\ : std_logic;
SIGNAL \u1|WideOr2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \hex0[0]~input_o\ : std_logic;
SIGNAL \hex1[0]~input_o\ : std_logic;
SIGNAL \u1|Mux3~1_combout\ : std_logic;
SIGNAL \u1|Mux3~0_combout\ : std_logic;
SIGNAL \u1|Mux3~2_combout\ : std_logic;
SIGNAL \u1|Mux3~3_combout\ : std_logic;
SIGNAL \u1|Mux0~1_combout\ : std_logic;
SIGNAL \hex0[3]~input_o\ : std_logic;
SIGNAL \hex1[3]~input_o\ : std_logic;
SIGNAL \u1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|Mux0~2_combout\ : std_logic;
SIGNAL \u1|Mux2~1_combout\ : std_logic;
SIGNAL \hex0[1]~input_o\ : std_logic;
SIGNAL \hex1[1]~input_o\ : std_logic;
SIGNAL \u1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|Mux2~2_combout\ : std_logic;
SIGNAL \u1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|Mux1~2_combout\ : std_logic;
SIGNAL \hex0[2]~input_o\ : std_logic;
SIGNAL \hex1[2]~input_o\ : std_logic;
SIGNAL \u1|Mux1~1_combout\ : std_logic;
SIGNAL \u1|Mux1~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \DATA_BUS_VALUE[5]~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \LCD_RS~reg0_q\ : std_logic;
SIGNAL \LCD_E~0_combout\ : std_logic;
SIGNAL \LCD_E~reg0_q\ : std_logic;
SIGNAL DATA_BUS_VALUE : std_logic_vector(7 DOWNTO 0);
SIGNAL CLK_COUNT_400HZ : std_logic_vector(19 DOWNTO 0);
SIGNAL CHAR_COUNT : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_state.Print_String~q\ : std_logic;

BEGIN

ww_iCLK_50MHZ <= iCLK_50MHZ;
ww_iRST_N <= iRST_N;
ww_hex1 <= hex1;
ww_hex0 <= hex0;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
DATA_BUS <= ww_DATA_BUS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK_50MHZ~input_o\);

\CLK_400HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_400HZ~q\);
\ALT_INV_state.Print_String~q\ <= NOT \state.Print_String~q\;

-- Location: IOOBUF_X0_Y52_N16
\DATA_BUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\DATA_BUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\DATA_BUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\DATA_BUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DATA_BUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\DATA_BUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\DATA_BUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\DATA_BUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS_VALUE(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \DATA_BUS[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_RS~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_E~reg0_q\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\iCLK_50MHZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK_50MHZ,
	o => \iCLK_50MHZ~input_o\);

-- Location: CLKCTRL_G4
\iCLK_50MHZ~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK_50MHZ~inputclkctrl_outclk\);

-- Location: LCCOMB_X90_Y52_N12
\CLK_COUNT_400HZ[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[0]~20_combout\ = CLK_COUNT_400HZ(0) $ (VCC)
-- \CLK_COUNT_400HZ[0]~21\ = CARRY(CLK_COUNT_400HZ(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(0),
	datad => VCC,
	combout => \CLK_COUNT_400HZ[0]~20_combout\,
	cout => \CLK_COUNT_400HZ[0]~21\);

-- Location: IOIBUF_X115_Y53_N15
\iRST_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST_N,
	o => \iRST_N~input_o\);

-- Location: FF_X90_Y52_N13
\CLK_COUNT_400HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[0]~20_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(0));

-- Location: LCCOMB_X90_Y52_N14
\CLK_COUNT_400HZ[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[1]~22_combout\ = (CLK_COUNT_400HZ(1) & (!\CLK_COUNT_400HZ[0]~21\)) # (!CLK_COUNT_400HZ(1) & ((\CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \CLK_COUNT_400HZ[1]~23\ = CARRY((!\CLK_COUNT_400HZ[0]~21\) # (!CLK_COUNT_400HZ(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(1),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[0]~21\,
	combout => \CLK_COUNT_400HZ[1]~22_combout\,
	cout => \CLK_COUNT_400HZ[1]~23\);

-- Location: FF_X90_Y52_N15
\CLK_COUNT_400HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[1]~22_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(1));

-- Location: LCCOMB_X90_Y52_N16
\CLK_COUNT_400HZ[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[2]~24_combout\ = (CLK_COUNT_400HZ(2) & (\CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!CLK_COUNT_400HZ(2) & (!\CLK_COUNT_400HZ[1]~23\ & VCC))
-- \CLK_COUNT_400HZ[2]~25\ = CARRY((CLK_COUNT_400HZ(2) & !\CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(2),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[1]~23\,
	combout => \CLK_COUNT_400HZ[2]~24_combout\,
	cout => \CLK_COUNT_400HZ[2]~25\);

-- Location: FF_X90_Y52_N17
\CLK_COUNT_400HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[2]~24_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(2));

-- Location: LCCOMB_X90_Y52_N18
\CLK_COUNT_400HZ[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[3]~26_combout\ = (CLK_COUNT_400HZ(3) & (!\CLK_COUNT_400HZ[2]~25\)) # (!CLK_COUNT_400HZ(3) & ((\CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \CLK_COUNT_400HZ[3]~27\ = CARRY((!\CLK_COUNT_400HZ[2]~25\) # (!CLK_COUNT_400HZ(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(3),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[2]~25\,
	combout => \CLK_COUNT_400HZ[3]~26_combout\,
	cout => \CLK_COUNT_400HZ[3]~27\);

-- Location: FF_X90_Y52_N19
\CLK_COUNT_400HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[3]~26_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(3));

-- Location: LCCOMB_X90_Y52_N20
\CLK_COUNT_400HZ[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[4]~28_combout\ = (CLK_COUNT_400HZ(4) & (\CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!CLK_COUNT_400HZ(4) & (!\CLK_COUNT_400HZ[3]~27\ & VCC))
-- \CLK_COUNT_400HZ[4]~29\ = CARRY((CLK_COUNT_400HZ(4) & !\CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(4),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[3]~27\,
	combout => \CLK_COUNT_400HZ[4]~28_combout\,
	cout => \CLK_COUNT_400HZ[4]~29\);

-- Location: FF_X90_Y52_N21
\CLK_COUNT_400HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[4]~28_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(4));

-- Location: LCCOMB_X90_Y52_N22
\CLK_COUNT_400HZ[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[5]~30_combout\ = (CLK_COUNT_400HZ(5) & (!\CLK_COUNT_400HZ[4]~29\)) # (!CLK_COUNT_400HZ(5) & ((\CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \CLK_COUNT_400HZ[5]~31\ = CARRY((!\CLK_COUNT_400HZ[4]~29\) # (!CLK_COUNT_400HZ(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(5),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[4]~29\,
	combout => \CLK_COUNT_400HZ[5]~30_combout\,
	cout => \CLK_COUNT_400HZ[5]~31\);

-- Location: FF_X90_Y52_N23
\CLK_COUNT_400HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[5]~30_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(5));

-- Location: LCCOMB_X90_Y52_N24
\CLK_COUNT_400HZ[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[6]~32_combout\ = (CLK_COUNT_400HZ(6) & (\CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!CLK_COUNT_400HZ(6) & (!\CLK_COUNT_400HZ[5]~31\ & VCC))
-- \CLK_COUNT_400HZ[6]~33\ = CARRY((CLK_COUNT_400HZ(6) & !\CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(6),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[5]~31\,
	combout => \CLK_COUNT_400HZ[6]~32_combout\,
	cout => \CLK_COUNT_400HZ[6]~33\);

-- Location: FF_X90_Y52_N25
\CLK_COUNT_400HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[6]~32_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(6));

-- Location: LCCOMB_X90_Y52_N26
\CLK_COUNT_400HZ[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[7]~34_combout\ = (CLK_COUNT_400HZ(7) & (!\CLK_COUNT_400HZ[6]~33\)) # (!CLK_COUNT_400HZ(7) & ((\CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \CLK_COUNT_400HZ[7]~35\ = CARRY((!\CLK_COUNT_400HZ[6]~33\) # (!CLK_COUNT_400HZ(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(7),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[6]~33\,
	combout => \CLK_COUNT_400HZ[7]~34_combout\,
	cout => \CLK_COUNT_400HZ[7]~35\);

-- Location: FF_X90_Y52_N27
\CLK_COUNT_400HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[7]~34_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(7));

-- Location: LCCOMB_X90_Y52_N28
\CLK_COUNT_400HZ[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[8]~36_combout\ = (CLK_COUNT_400HZ(8) & (\CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!CLK_COUNT_400HZ(8) & (!\CLK_COUNT_400HZ[7]~35\ & VCC))
-- \CLK_COUNT_400HZ[8]~37\ = CARRY((CLK_COUNT_400HZ(8) & !\CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(8),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[7]~35\,
	combout => \CLK_COUNT_400HZ[8]~36_combout\,
	cout => \CLK_COUNT_400HZ[8]~37\);

-- Location: FF_X90_Y52_N29
\CLK_COUNT_400HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[8]~36_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(8));

-- Location: LCCOMB_X90_Y52_N30
\CLK_COUNT_400HZ[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[9]~38_combout\ = (CLK_COUNT_400HZ(9) & (!\CLK_COUNT_400HZ[8]~37\)) # (!CLK_COUNT_400HZ(9) & ((\CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \CLK_COUNT_400HZ[9]~39\ = CARRY((!\CLK_COUNT_400HZ[8]~37\) # (!CLK_COUNT_400HZ(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(9),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[8]~37\,
	combout => \CLK_COUNT_400HZ[9]~38_combout\,
	cout => \CLK_COUNT_400HZ[9]~39\);

-- Location: FF_X90_Y52_N31
\CLK_COUNT_400HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[9]~38_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(9));

-- Location: LCCOMB_X90_Y51_N0
\CLK_COUNT_400HZ[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[10]~40_combout\ = (CLK_COUNT_400HZ(10) & (\CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!CLK_COUNT_400HZ(10) & (!\CLK_COUNT_400HZ[9]~39\ & VCC))
-- \CLK_COUNT_400HZ[10]~41\ = CARRY((CLK_COUNT_400HZ(10) & !\CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(10),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[9]~39\,
	combout => \CLK_COUNT_400HZ[10]~40_combout\,
	cout => \CLK_COUNT_400HZ[10]~41\);

-- Location: FF_X90_Y51_N1
\CLK_COUNT_400HZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[10]~40_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(10));

-- Location: LCCOMB_X90_Y51_N2
\CLK_COUNT_400HZ[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[11]~42_combout\ = (CLK_COUNT_400HZ(11) & (!\CLK_COUNT_400HZ[10]~41\)) # (!CLK_COUNT_400HZ(11) & ((\CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \CLK_COUNT_400HZ[11]~43\ = CARRY((!\CLK_COUNT_400HZ[10]~41\) # (!CLK_COUNT_400HZ(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(11),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[10]~41\,
	combout => \CLK_COUNT_400HZ[11]~42_combout\,
	cout => \CLK_COUNT_400HZ[11]~43\);

-- Location: FF_X90_Y51_N3
\CLK_COUNT_400HZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[11]~42_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(11));

-- Location: LCCOMB_X90_Y51_N4
\CLK_COUNT_400HZ[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[12]~44_combout\ = (CLK_COUNT_400HZ(12) & (\CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!CLK_COUNT_400HZ(12) & (!\CLK_COUNT_400HZ[11]~43\ & VCC))
-- \CLK_COUNT_400HZ[12]~45\ = CARRY((CLK_COUNT_400HZ(12) & !\CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(12),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[11]~43\,
	combout => \CLK_COUNT_400HZ[12]~44_combout\,
	cout => \CLK_COUNT_400HZ[12]~45\);

-- Location: FF_X90_Y51_N5
\CLK_COUNT_400HZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[12]~44_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(12));

-- Location: LCCOMB_X90_Y51_N6
\CLK_COUNT_400HZ[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[13]~46_combout\ = (CLK_COUNT_400HZ(13) & (!\CLK_COUNT_400HZ[12]~45\)) # (!CLK_COUNT_400HZ(13) & ((\CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \CLK_COUNT_400HZ[13]~47\ = CARRY((!\CLK_COUNT_400HZ[12]~45\) # (!CLK_COUNT_400HZ(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(13),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[12]~45\,
	combout => \CLK_COUNT_400HZ[13]~46_combout\,
	cout => \CLK_COUNT_400HZ[13]~47\);

-- Location: FF_X90_Y51_N7
\CLK_COUNT_400HZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[13]~46_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(13));

-- Location: LCCOMB_X90_Y51_N8
\CLK_COUNT_400HZ[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[14]~48_combout\ = (CLK_COUNT_400HZ(14) & (\CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!CLK_COUNT_400HZ(14) & (!\CLK_COUNT_400HZ[13]~47\ & VCC))
-- \CLK_COUNT_400HZ[14]~49\ = CARRY((CLK_COUNT_400HZ(14) & !\CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(14),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[13]~47\,
	combout => \CLK_COUNT_400HZ[14]~48_combout\,
	cout => \CLK_COUNT_400HZ[14]~49\);

-- Location: FF_X90_Y51_N9
\CLK_COUNT_400HZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[14]~48_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(14));

-- Location: LCCOMB_X90_Y51_N10
\CLK_COUNT_400HZ[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[15]~50_combout\ = (CLK_COUNT_400HZ(15) & (!\CLK_COUNT_400HZ[14]~49\)) # (!CLK_COUNT_400HZ(15) & ((\CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \CLK_COUNT_400HZ[15]~51\ = CARRY((!\CLK_COUNT_400HZ[14]~49\) # (!CLK_COUNT_400HZ(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(15),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[14]~49\,
	combout => \CLK_COUNT_400HZ[15]~50_combout\,
	cout => \CLK_COUNT_400HZ[15]~51\);

-- Location: FF_X90_Y51_N11
\CLK_COUNT_400HZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[15]~50_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(15));

-- Location: LCCOMB_X90_Y51_N12
\CLK_COUNT_400HZ[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[16]~52_combout\ = (CLK_COUNT_400HZ(16) & (\CLK_COUNT_400HZ[15]~51\ $ (GND))) # (!CLK_COUNT_400HZ(16) & (!\CLK_COUNT_400HZ[15]~51\ & VCC))
-- \CLK_COUNT_400HZ[16]~53\ = CARRY((CLK_COUNT_400HZ(16) & !\CLK_COUNT_400HZ[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(16),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[15]~51\,
	combout => \CLK_COUNT_400HZ[16]~52_combout\,
	cout => \CLK_COUNT_400HZ[16]~53\);

-- Location: FF_X90_Y51_N13
\CLK_COUNT_400HZ[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[16]~52_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(16));

-- Location: LCCOMB_X90_Y51_N14
\CLK_COUNT_400HZ[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[17]~54_combout\ = (CLK_COUNT_400HZ(17) & (!\CLK_COUNT_400HZ[16]~53\)) # (!CLK_COUNT_400HZ(17) & ((\CLK_COUNT_400HZ[16]~53\) # (GND)))
-- \CLK_COUNT_400HZ[17]~55\ = CARRY((!\CLK_COUNT_400HZ[16]~53\) # (!CLK_COUNT_400HZ(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(17),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[16]~53\,
	combout => \CLK_COUNT_400HZ[17]~54_combout\,
	cout => \CLK_COUNT_400HZ[17]~55\);

-- Location: FF_X90_Y51_N15
\CLK_COUNT_400HZ[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[17]~54_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(17));

-- Location: LCCOMB_X90_Y51_N16
\CLK_COUNT_400HZ[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[18]~56_combout\ = (CLK_COUNT_400HZ(18) & (\CLK_COUNT_400HZ[17]~55\ $ (GND))) # (!CLK_COUNT_400HZ(18) & (!\CLK_COUNT_400HZ[17]~55\ & VCC))
-- \CLK_COUNT_400HZ[18]~57\ = CARRY((CLK_COUNT_400HZ(18) & !\CLK_COUNT_400HZ[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CLK_COUNT_400HZ(18),
	datad => VCC,
	cin => \CLK_COUNT_400HZ[17]~55\,
	combout => \CLK_COUNT_400HZ[18]~56_combout\,
	cout => \CLK_COUNT_400HZ[18]~57\);

-- Location: FF_X90_Y51_N17
\CLK_COUNT_400HZ[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[18]~56_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(18));

-- Location: LCCOMB_X90_Y51_N18
\CLK_COUNT_400HZ[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_COUNT_400HZ[19]~58_combout\ = \CLK_COUNT_400HZ[18]~57\ $ (CLK_COUNT_400HZ(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CLK_COUNT_400HZ(19),
	cin => \CLK_COUNT_400HZ[18]~57\,
	combout => \CLK_COUNT_400HZ[19]~58_combout\);

-- Location: FF_X90_Y51_N19
\CLK_COUNT_400HZ[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_COUNT_400HZ[19]~58_combout\,
	clrn => \iRST_N~input_o\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLK_COUNT_400HZ(19));

-- Location: LCCOMB_X90_Y51_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!CLK_COUNT_400HZ(16) & (!CLK_COUNT_400HZ(18) & (!CLK_COUNT_400HZ(17) & !CLK_COUNT_400HZ(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(16),
	datab => CLK_COUNT_400HZ(18),
	datac => CLK_COUNT_400HZ(17),
	datad => CLK_COUNT_400HZ(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y51_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!CLK_COUNT_400HZ(10) & !CLK_COUNT_400HZ(11))) # (!CLK_COUNT_400HZ(12))) # (!CLK_COUNT_400HZ(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(13),
	datab => CLK_COUNT_400HZ(10),
	datac => CLK_COUNT_400HZ(12),
	datad => CLK_COUNT_400HZ(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y52_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!CLK_COUNT_400HZ(9) & (!CLK_COUNT_400HZ(6) & (!CLK_COUNT_400HZ(7) & !CLK_COUNT_400HZ(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(9),
	datab => CLK_COUNT_400HZ(6),
	datac => CLK_COUNT_400HZ(7),
	datad => CLK_COUNT_400HZ(8),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X90_Y52_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!CLK_COUNT_400HZ(3) & (!CLK_COUNT_400HZ(2) & !CLK_COUNT_400HZ(4)))) # (!CLK_COUNT_400HZ(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(3),
	datab => CLK_COUNT_400HZ(2),
	datac => CLK_COUNT_400HZ(5),
	datad => CLK_COUNT_400HZ(4),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y51_N20
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((!CLK_COUNT_400HZ(11) & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => CLK_COUNT_400HZ(11),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X90_Y51_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((CLK_COUNT_400HZ(15) & (CLK_COUNT_400HZ(14) & !\LessThan0~4_combout\))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CLK_COUNT_400HZ(15),
	datab => CLK_COUNT_400HZ(14),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y51_N28
\CLK_400HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_400HZ~0_combout\ = \CLK_400HZ~q\ $ (\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_400HZ~q\,
	datad => \LessThan0~5_combout\,
	combout => \CLK_400HZ~0_combout\);

-- Location: LCCOMB_X90_Y51_N22
\CLK_400HZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_400HZ~feeder_combout\ = \CLK_400HZ~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_400HZ~0_combout\,
	combout => \CLK_400HZ~feeder_combout\);

-- Location: FF_X90_Y51_N23
CLK_400HZ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK_50MHZ~inputclkctrl_outclk\,
	d => \CLK_400HZ~feeder_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_400HZ~q\);

-- Location: CLKCTRL_G6
\CLK_400HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_400HZ~clkctrl_outclk\);

-- Location: LCCOMB_X88_Y52_N28
\LCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_RS~0_combout\ = (!\state.HOLD~q\ & !\state.DROP_LCD_E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.HOLD~q\,
	datad => \state.DROP_LCD_E~q\,
	combout => \LCD_RS~0_combout\);

-- Location: FF_X88_Y52_N13
\state.DROP_LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \LCD_RS~0_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DROP_LCD_E~q\);

-- Location: FF_X88_Y52_N19
\state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \state.DROP_LCD_E~q\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.HOLD~q\);

-- Location: LCCOMB_X89_Y52_N4
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\next_command.LINE2~q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \next_command.LINE2~q\,
	datad => \state.HOLD~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X87_Y52_N10
\CHAR_COUNT[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHAR_COUNT[0]~5_combout\ = CHAR_COUNT(0) $ (VCC)
-- \CHAR_COUNT[0]~6\ = CARRY(CHAR_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datad => VCC,
	combout => \CHAR_COUNT[0]~5_combout\,
	cout => \CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X88_Y52_N6
\state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.RESET1~feeder_combout\);

-- Location: FF_X88_Y52_N7
\state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state.RESET1~feeder_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESET1~q\);

-- Location: LCCOMB_X88_Y52_N0
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (CHAR_COUNT(0) & \state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datad => \state.RESET1~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X87_Y52_N11
\CHAR_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \CHAR_COUNT[0]~5_combout\,
	asdata => \Selector24~0_combout\,
	sload => \ALT_INV_state.Print_String~q\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHAR_COUNT(0));

-- Location: LCCOMB_X87_Y52_N12
\CHAR_COUNT[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHAR_COUNT[1]~7_combout\ = (CHAR_COUNT(1) & (!\CHAR_COUNT[0]~6\)) # (!CHAR_COUNT(1) & ((\CHAR_COUNT[0]~6\) # (GND)))
-- \CHAR_COUNT[1]~8\ = CARRY((!\CHAR_COUNT[0]~6\) # (!CHAR_COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CHAR_COUNT(1),
	datad => VCC,
	cin => \CHAR_COUNT[0]~6\,
	combout => \CHAR_COUNT[1]~7_combout\,
	cout => \CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X88_Y52_N16
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (CHAR_COUNT(1) & \state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(1),
	datad => \state.RESET1~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X87_Y52_N13
\CHAR_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \CHAR_COUNT[1]~7_combout\,
	asdata => \Selector23~0_combout\,
	sload => \ALT_INV_state.Print_String~q\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHAR_COUNT(1));

-- Location: LCCOMB_X87_Y52_N14
\CHAR_COUNT[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHAR_COUNT[2]~9_combout\ = (CHAR_COUNT(2) & (\CHAR_COUNT[1]~8\ $ (GND))) # (!CHAR_COUNT(2) & (!\CHAR_COUNT[1]~8\ & VCC))
-- \CHAR_COUNT[2]~10\ = CARRY((CHAR_COUNT(2) & !\CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => CHAR_COUNT(2),
	datad => VCC,
	cin => \CHAR_COUNT[1]~8\,
	combout => \CHAR_COUNT[2]~9_combout\,
	cout => \CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X88_Y52_N8
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (CHAR_COUNT(2) & \state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(2),
	datad => \state.RESET1~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X87_Y52_N15
\CHAR_COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \CHAR_COUNT[2]~9_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_state.Print_String~q\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHAR_COUNT(2));

-- Location: LCCOMB_X87_Y52_N16
\CHAR_COUNT[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHAR_COUNT[3]~11_combout\ = (CHAR_COUNT(3) & (!\CHAR_COUNT[2]~10\)) # (!CHAR_COUNT(3) & ((\CHAR_COUNT[2]~10\) # (GND)))
-- \CHAR_COUNT[3]~12\ = CARRY((!\CHAR_COUNT[2]~10\) # (!CHAR_COUNT(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(3),
	datad => VCC,
	cin => \CHAR_COUNT[2]~10\,
	combout => \CHAR_COUNT[3]~11_combout\,
	cout => \CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X88_Y52_N14
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (CHAR_COUNT(3) & \state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => CHAR_COUNT(3),
	datad => \state.RESET1~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X87_Y52_N17
\CHAR_COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \CHAR_COUNT[3]~11_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_state.Print_String~q\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHAR_COUNT(3));

-- Location: LCCOMB_X87_Y52_N18
\CHAR_COUNT[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHAR_COUNT[4]~13_combout\ = \CHAR_COUNT[3]~12\ $ (!CHAR_COUNT(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => CHAR_COUNT(4),
	cin => \CHAR_COUNT[3]~12\,
	combout => \CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X88_Y52_N12
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (CHAR_COUNT(4) & \state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CHAR_COUNT(4),
	datad => \state.RESET1~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X87_Y52_N19
\CHAR_COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \CHAR_COUNT[4]~13_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_state.Print_String~q\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CHAR_COUNT(4));

-- Location: LCCOMB_X88_Y53_N12
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (CHAR_COUNT(1) & (CHAR_COUNT(3) & (CHAR_COUNT(2) & CHAR_COUNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(1),
	datab => CHAR_COUNT(3),
	datac => CHAR_COUNT(2),
	datad => CHAR_COUNT(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X89_Y52_N8
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((\state.Print_String~q\ & (!CHAR_COUNT(4) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Print_String~q\,
	datab => \Selector14~0_combout\,
	datac => CHAR_COUNT(4),
	datad => \Equal2~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X89_Y52_N9
\next_command.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector14~1_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.LINE2~q\);

-- Location: LCCOMB_X89_Y52_N26
\state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\next_command.LINE2~q\ & \state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_command.LINE2~q\,
	datad => \state.HOLD~q\,
	combout => \state~33_combout\);

-- Location: FF_X89_Y52_N27
\state.LINE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~33_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LINE2~q\);

-- Location: LCCOMB_X88_Y52_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ((\next_command.RESET2~q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\)))) # (!\state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \state.HOLD~q\,
	datac => \next_command.RESET2~q\,
	datad => \state.RESET1~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X88_Y52_N31
\next_command.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.RESET2~q\);

-- Location: LCCOMB_X88_Y52_N22
\state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\next_command.RESET2~q\ & \state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_command.RESET2~q\,
	datad => \state.HOLD~q\,
	combout => \state~39_combout\);

-- Location: FF_X88_Y52_N23
\state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~39_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESET2~q\);

-- Location: LCCOMB_X88_Y52_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.RESET2~q\) # ((\next_command.RESET3~q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET2~q\,
	datab => \state.DROP_LCD_E~q\,
	datac => \next_command.RESET3~q\,
	datad => \state.HOLD~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X88_Y52_N11
\next_command.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.RESET3~q\);

-- Location: LCCOMB_X88_Y52_N18
\state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\state.HOLD~q\ & \next_command.RESET3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.HOLD~q\,
	datad => \next_command.RESET3~q\,
	combout => \state~37_combout\);

-- Location: FF_X88_Y52_N17
\state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \state~37_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESET3~q\);

-- Location: LCCOMB_X88_Y52_N4
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\state.RESET3~q\ & ((\next_command.FUNC_SET~q\) # ((!\state.DROP_LCD_E~q\ & !\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \state.RESET3~q\,
	datac => \next_command.FUNC_SET~q\,
	datad => \state.HOLD~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X88_Y52_N5
\next_command.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.FUNC_SET~q\);

-- Location: LCCOMB_X88_Y52_N26
\state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (!\next_command.FUNC_SET~q\ & \state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_command.FUNC_SET~q\,
	datad => \state.HOLD~q\,
	combout => \state~38_combout\);

-- Location: FF_X88_Y52_N27
\state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~38_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FUNC_SET~q\);

-- Location: LCCOMB_X89_Y52_N14
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.FUNC_SET~q\) # ((\next_command.DISPLAY_OFF~q\ & ((\state.HOLD~q\) # (\state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FUNC_SET~q\,
	datab => \state.HOLD~q\,
	datac => \next_command.DISPLAY_OFF~q\,
	datad => \state.DROP_LCD_E~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X89_Y52_N15
\next_command.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.DISPLAY_OFF~q\);

-- Location: LCCOMB_X89_Y52_N0
\state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (\next_command.DISPLAY_OFF~q\ & \state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_command.DISPLAY_OFF~q\,
	datad => \state.HOLD~q\,
	combout => \state~40_combout\);

-- Location: FF_X89_Y52_N1
\state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~40_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X89_Y52_N20
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.DISPLAY_OFF~q\) # ((\next_command.DISPLAY_CLEAR~q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \state.DISPLAY_OFF~q\,
	datac => \next_command.DISPLAY_CLEAR~q\,
	datad => \state.HOLD~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X89_Y52_N21
\next_command.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X90_Y52_N8
\state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (\state.HOLD~q\ & \next_command.DISPLAY_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.HOLD~q\,
	datad => \next_command.DISPLAY_CLEAR~q\,
	combout => \state~35_combout\);

-- Location: FF_X89_Y52_N17
\state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \state~35_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X90_Y52_N6
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.DISPLAY_CLEAR~q\) # ((\next_command.DISPLAY_ON~q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DISPLAY_CLEAR~q\,
	datab => \state.DROP_LCD_E~q\,
	datac => \next_command.DISPLAY_ON~q\,
	datad => \state.HOLD~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X90_Y52_N7
\next_command.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.DISPLAY_ON~q\);

-- Location: LCCOMB_X89_Y52_N30
\state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\state.HOLD~q\ & \next_command.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.HOLD~q\,
	datad => \next_command.DISPLAY_ON~q\,
	combout => \state~36_combout\);

-- Location: FF_X89_Y52_N31
\state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~36_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DISPLAY_ON~q\);

-- Location: LCCOMB_X90_Y52_N10
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.DISPLAY_ON~q\) # ((\next_command.MODE_SET~q\ & ((\state.HOLD~q\) # (\state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HOLD~q\,
	datab => \state.DROP_LCD_E~q\,
	datac => \next_command.MODE_SET~q\,
	datad => \state.DISPLAY_ON~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X90_Y52_N11
\next_command.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.MODE_SET~q\);

-- Location: LCCOMB_X91_Y52_N8
\state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state.HOLD~q\ & \next_command.MODE_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.HOLD~q\,
	datad => \next_command.MODE_SET~q\,
	combout => \state~32_combout\);

-- Location: FF_X89_Y52_N5
\state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \state~32_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.MODE_SET~q\);

-- Location: LCCOMB_X89_Y52_N12
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\next_command.RETURN_HOME~q\ & ((\state.HOLD~q\) # (\state.DROP_LCD_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_command.RETURN_HOME~q\,
	datab => \state.HOLD~q\,
	datad => \state.DROP_LCD_E~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X89_Y52_N22
\Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((\state.Print_String~q\ & (CHAR_COUNT(4) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Print_String~q\,
	datab => \Selector15~0_combout\,
	datac => CHAR_COUNT(4),
	datad => \Equal2~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X89_Y52_N23
\next_command.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector15~1_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.RETURN_HOME~q\);

-- Location: LCCOMB_X89_Y52_N28
\state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\next_command.RETURN_HOME~q\ & \state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_command.RETURN_HOME~q\,
	datad => \state.HOLD~q\,
	combout => \state~34_combout\);

-- Location: FF_X89_Y52_N29
\state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \state~34_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RETURN_HOME~q\);

-- Location: LCCOMB_X89_Y52_N10
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (!\state.LINE2~q\ & (!\state.MODE_SET~q\ & !\state.RETURN_HOME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.LINE2~q\,
	datac => \state.MODE_SET~q\,
	datad => \state.RETURN_HOME~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X89_Y52_N6
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.Print_String~q\ & !\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Print_String~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X89_Y52_N18
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ((\Selector13~0_combout\) # ((!\LCD_RS~0_combout\ & \next_command.Print_String~q\))) # (!\Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \LCD_RS~0_combout\,
	datac => \next_command.Print_String~q\,
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X89_Y52_N19
\next_command.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector13~1_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_command.Print_String~q\);

-- Location: LCCOMB_X90_Y52_N0
\state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (\state.HOLD~q\ & \next_command.Print_String~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.HOLD~q\,
	datad => \next_command.Print_String~q\,
	combout => \state~31_combout\);

-- Location: FF_X89_Y52_N13
\state.Print_String\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	asdata => \state~31_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Print_String~q\);

-- Location: LCCOMB_X87_Y52_N22
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.DISPLAY_CLEAR~q\) # ((DATA_BUS_VALUE(0) & ((\state.HOLD~q\) # (\state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HOLD~q\,
	datab => \state.DROP_LCD_E~q\,
	datac => DATA_BUS_VALUE(0),
	datad => \state.DISPLAY_CLEAR~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X87_Y52_N20
\u1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|WideOr1~0_combout\ = (CHAR_COUNT(2) & (((CHAR_COUNT(4)) # (!CHAR_COUNT(1))))) # (!CHAR_COUNT(2) & ((CHAR_COUNT(1)) # ((CHAR_COUNT(0) & !CHAR_COUNT(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => CHAR_COUNT(2),
	datac => CHAR_COUNT(1),
	datad => CHAR_COUNT(4),
	combout => \u1|WideOr1~0_combout\);

-- Location: LCCOMB_X87_Y52_N30
\u1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|WideOr0~0_combout\ = (CHAR_COUNT(1) & ((CHAR_COUNT(4)) # ((CHAR_COUNT(2))))) # (!CHAR_COUNT(1) & (CHAR_COUNT(2) & ((CHAR_COUNT(4)) # (CHAR_COUNT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(1),
	datab => CHAR_COUNT(4),
	datac => CHAR_COUNT(2),
	datad => CHAR_COUNT(0),
	combout => \u1|WideOr0~0_combout\);

-- Location: LCCOMB_X87_Y52_N24
\u1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|WideOr2~0_combout\ = (CHAR_COUNT(2) & (((!CHAR_COUNT(1) & !CHAR_COUNT(4))))) # (!CHAR_COUNT(2) & (!CHAR_COUNT(0) & (CHAR_COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => CHAR_COUNT(2),
	datac => CHAR_COUNT(1),
	datad => CHAR_COUNT(4),
	combout => \u1|WideOr2~0_combout\);

-- Location: LCCOMB_X87_Y52_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!CHAR_COUNT(3) & (!\u1|WideOr1~0_combout\ & (\u1|WideOr0~0_combout\ & !\u1|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(3),
	datab => \u1|WideOr1~0_combout\,
	datac => \u1|WideOr0~0_combout\,
	datad => \u1|WideOr2~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\hex0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex0(0),
	o => \hex0[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\hex1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex1(0),
	o => \hex1[0]~input_o\);

-- Location: LCCOMB_X86_Y52_N10
\u1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~1_combout\ = (CHAR_COUNT(0) & (\hex0[0]~input_o\)) # (!CHAR_COUNT(0) & ((\hex1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hex0[0]~input_o\,
	datac => CHAR_COUNT(0),
	datad => \hex1[0]~input_o\,
	combout => \u1|Mux3~1_combout\);

-- Location: LCCOMB_X87_Y52_N0
\u1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~0_combout\ = (CHAR_COUNT(1) & (!CHAR_COUNT(3) & (CHAR_COUNT(2) & !CHAR_COUNT(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(1),
	datab => CHAR_COUNT(3),
	datac => CHAR_COUNT(2),
	datad => CHAR_COUNT(4),
	combout => \u1|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y52_N12
\u1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~2_combout\ = (CHAR_COUNT(0) & (!CHAR_COUNT(1) & ((!CHAR_COUNT(4)) # (!CHAR_COUNT(2))))) # (!CHAR_COUNT(0) & (((!CHAR_COUNT(2) & !CHAR_COUNT(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => CHAR_COUNT(1),
	datac => CHAR_COUNT(2),
	datad => CHAR_COUNT(4),
	combout => \u1|Mux3~2_combout\);

-- Location: LCCOMB_X86_Y52_N6
\u1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux3~3_combout\ = (\u1|Mux3~1_combout\ & ((\u1|Mux3~0_combout\) # ((!CHAR_COUNT(3) & \u1|Mux3~2_combout\)))) # (!\u1|Mux3~1_combout\ & (!CHAR_COUNT(3) & ((\u1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux3~1_combout\,
	datab => CHAR_COUNT(3),
	datac => \u1|Mux3~0_combout\,
	datad => \u1|Mux3~2_combout\,
	combout => \u1|Mux3~3_combout\);

-- Location: LCCOMB_X86_Y52_N14
\u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~1_combout\ = (!CHAR_COUNT(3) & (!CHAR_COUNT(4) & ((!CHAR_COUNT(1)) # (!CHAR_COUNT(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(3),
	datab => CHAR_COUNT(2),
	datac => CHAR_COUNT(1),
	datad => CHAR_COUNT(4),
	combout => \u1|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y13_N8
\hex0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex0(3),
	o => \hex0[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\hex1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex1(3),
	o => \hex1[3]~input_o\);

-- Location: LCCOMB_X86_Y52_N16
\u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~0_combout\ = (CHAR_COUNT(0) & (\hex0[3]~input_o\)) # (!CHAR_COUNT(0) & ((\hex1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hex0[3]~input_o\,
	datac => CHAR_COUNT(0),
	datad => \hex1[3]~input_o\,
	combout => \u1|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y52_N20
\u1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux0~2_combout\ = (CHAR_COUNT(0) & ((\u1|Mux0~1_combout\) # ((\u1|Mux3~0_combout\ & \u1|Mux0~0_combout\)))) # (!CHAR_COUNT(0) & (\u1|Mux3~0_combout\ & ((\u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => \u1|Mux3~0_combout\,
	datac => \u1|Mux0~1_combout\,
	datad => \u1|Mux0~0_combout\,
	combout => \u1|Mux0~2_combout\);

-- Location: LCCOMB_X86_Y52_N26
\u1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~1_combout\ = CHAR_COUNT(4) $ (((CHAR_COUNT(0)) # (!CHAR_COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CHAR_COUNT(1),
	datac => CHAR_COUNT(0),
	datad => CHAR_COUNT(4),
	combout => \u1|Mux2~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\hex0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex0(1),
	o => \hex0[1]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\hex1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex1(1),
	o => \hex1[1]~input_o\);

-- Location: LCCOMB_X87_Y52_N28
\u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~0_combout\ = (\u1|Mux3~0_combout\ & ((CHAR_COUNT(0) & (\hex0[1]~input_o\)) # (!CHAR_COUNT(0) & ((\hex1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => \hex0[1]~input_o\,
	datac => \hex1[1]~input_o\,
	datad => \u1|Mux3~0_combout\,
	combout => \u1|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y52_N4
\u1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux2~2_combout\ = (\u1|Mux2~0_combout\) # ((!CHAR_COUNT(2) & (!CHAR_COUNT(3) & \u1|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(2),
	datab => CHAR_COUNT(3),
	datac => \u1|Mux2~1_combout\,
	datad => \u1|Mux2~0_combout\,
	combout => \u1|Mux2~2_combout\);

-- Location: LCCOMB_X87_Y52_N2
\u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~0_combout\ = (!CHAR_COUNT(1) & (!CHAR_COUNT(3) & (!CHAR_COUNT(2) & CHAR_COUNT(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(1),
	datab => CHAR_COUNT(3),
	datac => CHAR_COUNT(2),
	datad => CHAR_COUNT(4),
	combout => \u1|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y52_N2
\u1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~2_combout\ = (CHAR_COUNT(1)) # ((CHAR_COUNT(0)) # (CHAR_COUNT(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => CHAR_COUNT(1),
	datac => CHAR_COUNT(0),
	datad => CHAR_COUNT(2),
	combout => \u1|Mux1~2_combout\);

-- Location: IOIBUF_X115_Y15_N8
\hex0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex0(2),
	o => \hex0[2]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\hex1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hex1(2),
	o => \hex1[2]~input_o\);

-- Location: LCCOMB_X87_Y52_N4
\u1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~1_combout\ = (\u1|Mux3~0_combout\ & ((CHAR_COUNT(0) & (\hex0[2]~input_o\)) # (!CHAR_COUNT(0) & ((\hex1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(0),
	datab => \hex0[2]~input_o\,
	datac => \hex1[2]~input_o\,
	datad => \u1|Mux3~0_combout\,
	combout => \u1|Mux1~1_combout\);

-- Location: LCCOMB_X86_Y52_N24
\u1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Mux1~3_combout\ = (\u1|Mux1~0_combout\) # ((\u1|Mux1~1_combout\) # ((\u1|Mux1~2_combout\ & \u1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux1~0_combout\,
	datab => \u1|Mux1~2_combout\,
	datac => \u1|Mux0~1_combout\,
	datad => \u1|Mux1~1_combout\,
	combout => \u1|Mux1~3_combout\);

-- Location: LCCOMB_X86_Y52_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\u1|Mux0~2_combout\ & ((\u1|Mux2~2_combout\) # (\u1|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mux0~2_combout\,
	datac => \u1|Mux2~2_combout\,
	datad => \u1|Mux1~3_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X87_Y52_N6
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = \u1|Mux3~3_combout\ $ (((\Equal0~0_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \u1|Mux3~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X87_Y52_N8
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~0_combout\) # ((\state.Print_String~q\ & \Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Print_String~q\,
	datac => \Selector9~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X87_Y52_N9
\DATA_BUS_VALUE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector9~2_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(0));

-- Location: LCCOMB_X86_Y52_N8
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\state.Print_String~q\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Print_String~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X86_Y52_N30
\Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\u1|Mux0~2_combout\ & (\Selector8~2_combout\ & ((\u1|Mux2~2_combout\) # (\u1|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux0~2_combout\,
	datab => \u1|Mux2~2_combout\,
	datac => \Selector8~2_combout\,
	datad => \u1|Mux1~3_combout\,
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X85_Y52_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.MODE_SET~q\) # ((DATA_BUS_VALUE(1) & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => DATA_BUS_VALUE(1),
	datac => \state.MODE_SET~q\,
	datad => \state.HOLD~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X85_Y52_N10
\DATA_BUS_VALUE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_BUS_VALUE~0_combout\ = (\Equal0~0_combout\ & (\u1|Mux0~2_combout\ & ((\u1|Mux2~2_combout\) # (\u1|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux2~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \u1|Mux0~2_combout\,
	datad => \u1|Mux1~3_combout\,
	combout => \DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X85_Y52_N28
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\u1|Mux2~2_combout\ & (\state.Print_String~q\ & !\DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux2~2_combout\,
	datab => \Selector8~0_combout\,
	datac => \state.Print_String~q\,
	datad => \DATA_BUS_VALUE~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X85_Y52_N14
\Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (\Selector8~1_combout\) # ((\Selector8~3_combout\ & (\u1|Mux3~3_combout\ $ (!\u1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux3~3_combout\,
	datab => \u1|Mux2~2_combout\,
	datac => \Selector8~3_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~4_combout\);

-- Location: FF_X85_Y52_N15
\DATA_BUS_VALUE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector8~4_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(1));

-- Location: LCCOMB_X86_Y52_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \u1|Mux1~3_combout\ $ (((\u1|Mux2~2_combout\) # (\u1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Mux1~3_combout\,
	datac => \u1|Mux2~2_combout\,
	datad => \u1|Mux3~3_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X85_Y52_N26
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.DISPLAY_ON~q\) # ((\state.MODE_SET~q\) # ((DATA_BUS_VALUE(2) & !\LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DISPLAY_ON~q\,
	datab => DATA_BUS_VALUE(2),
	datac => \state.MODE_SET~q\,
	datad => \LCD_RS~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X85_Y52_N16
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\u1|Mux1~3_combout\ & (\state.Print_String~q\ & !\DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \u1|Mux1~3_combout\,
	datac => \state.Print_String~q\,
	datad => \DATA_BUS_VALUE~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X85_Y52_N24
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~1_combout\) # ((!\Add1~0_combout\ & \Selector8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \Selector8~3_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

-- Location: FF_X85_Y52_N25
\DATA_BUS_VALUE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector7~2_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(2));

-- Location: LCCOMB_X85_Y52_N8
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \u1|Mux0~2_combout\ $ (((\u1|Mux2~2_combout\) # ((\u1|Mux1~3_combout\) # (\u1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux2~2_combout\,
	datab => \u1|Mux1~3_combout\,
	datac => \u1|Mux0~2_combout\,
	datad => \u1|Mux3~3_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X89_Y52_N2
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (!\state.DISPLAY_ON~q\ & !\state.DISPLAY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.DISPLAY_ON~q\,
	datad => \state.DISPLAY_OFF~q\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X88_Y52_N24
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.FUNC_SET~q\) # ((\state.RESET3~q\) # ((\state.RESET2~q\) # (!\Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FUNC_SET~q\,
	datab => \state.RESET3~q\,
	datac => \state.RESET2~q\,
	datad => \Selector5~3_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X88_Y52_N20
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ((\Selector6~0_combout\) # ((!\LCD_RS~0_combout\ & DATA_BUS_VALUE(3)))) # (!\state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RESET1~q\,
	datab => \LCD_RS~0_combout\,
	datac => DATA_BUS_VALUE(3),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X85_Y52_N18
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~1_combout\) # ((\u1|Mux0~2_combout\ & (\state.Print_String~q\ & !\DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Mux0~2_combout\,
	datab => \state.Print_String~q\,
	datac => \Selector6~1_combout\,
	datad => \DATA_BUS_VALUE~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X85_Y52_N22
\Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~2_combout\) # ((\Add1~1_combout\ & \Selector8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~1_combout\,
	datac => \Selector8~3_combout\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X85_Y52_N23
\DATA_BUS_VALUE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector6~3_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(3));

-- Location: LCCOMB_X89_Y52_N16
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (!\state.Print_String~q\ & (\Selector5~3_combout\ & (!\state.DISPLAY_CLEAR~q\ & \Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Print_String~q\,
	datab => \Selector5~3_combout\,
	datac => \state.DISPLAY_CLEAR~q\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X85_Y52_N0
\Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (!\Selector5~4_combout\ & (((\LessThan1~0_combout\) # (!\Equal0~0_combout\)) # (!\state.Print_String~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~4_combout\,
	datab => \state.Print_String~q\,
	datac => \Equal0~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X85_Y52_N12
\Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = ((!CHAR_COUNT(3) & (\state.Print_String~q\ & \u1|WideOr2~0_combout\))) # (!\Selector5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(3),
	datab => \state.Print_String~q\,
	datac => \u1|WideOr2~0_combout\,
	datad => \Selector5~5_combout\,
	combout => \Selector5~6_combout\);

-- Location: LCCOMB_X85_Y52_N30
\DATA_BUS_VALUE[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATA_BUS_VALUE[5]~1_combout\ = (!\state.DROP_LCD_E~q\ & (\iRST_N~input_o\ & !\state.HOLD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \iRST_N~input_o\,
	datad => \state.HOLD~q\,
	combout => \DATA_BUS_VALUE[5]~1_combout\);

-- Location: FF_X85_Y52_N13
\DATA_BUS_VALUE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector5~6_combout\,
	ena => \DATA_BUS_VALUE[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(4));

-- Location: LCCOMB_X85_Y52_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ((\state.Print_String~q\ & ((CHAR_COUNT(3)) # (\u1|WideOr1~0_combout\)))) # (!\Selector5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => CHAR_COUNT(3),
	datab => \u1|WideOr1~0_combout\,
	datac => \state.Print_String~q\,
	datad => \Selector5~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X85_Y52_N3
\DATA_BUS_VALUE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \DATA_BUS_VALUE[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(5));

-- Location: LCCOMB_X86_Y52_N18
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.LINE2~q\) # ((DATA_BUS_VALUE(6) & ((\state.HOLD~q\) # (\state.DROP_LCD_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.HOLD~q\,
	datab => DATA_BUS_VALUE(6),
	datac => \state.DROP_LCD_E~q\,
	datad => \state.LINE2~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X85_Y52_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.Print_String~q\ & !CHAR_COUNT(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Print_String~q\,
	datad => CHAR_COUNT(3),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X86_Y52_N28
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\) # ((\Selector8~3_combout\) # ((!\u1|WideOr0~0_combout\ & \Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|WideOr0~0_combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector8~3_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X86_Y52_N29
\DATA_BUS_VALUE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector3~2_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(6));

-- Location: LCCOMB_X89_Y52_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.LINE2~q\) # ((\state.RETURN_HOME~q\) # ((!\LCD_RS~0_combout\ & DATA_BUS_VALUE(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.LINE2~q\,
	datab => \LCD_RS~0_combout\,
	datac => DATA_BUS_VALUE(7),
	datad => \state.RETURN_HOME~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X89_Y52_N25
\DATA_BUS_VALUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA_BUS_VALUE(7));

-- Location: LCCOMB_X85_Y52_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.Print_String~q\) # ((\LCD_RS~reg0_q\ & ((\state.DROP_LCD_E~q\) # (\state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \state.Print_String~q\,
	datac => \LCD_RS~reg0_q\,
	datad => \state.HOLD~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X85_Y52_N21
\LCD_RS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_RS~reg0_q\);

-- Location: LCCOMB_X88_Y52_N2
\LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_E~0_combout\ = (\state.HOLD~q\ & (((\LCD_E~reg0_q\)))) # (!\state.HOLD~q\ & ((\iRST_N~input_o\ & (!\state.DROP_LCD_E~q\)) # (!\iRST_N~input_o\ & ((\LCD_E~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DROP_LCD_E~q\,
	datab => \state.HOLD~q\,
	datac => \LCD_E~reg0_q\,
	datad => \iRST_N~input_o\,
	combout => \LCD_E~0_combout\);

-- Location: FF_X88_Y52_N3
\LCD_E~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_400HZ~clkctrl_outclk\,
	d => \LCD_E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_E~reg0_q\);

-- Location: IOIBUF_X0_Y52_N15
\DATA_BUS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\DATA_BUS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\DATA_BUS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\DATA_BUS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\DATA_BUS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DATA_BUS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\DATA_BUS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\DATA_BUS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

DATA_BUS(0) <= \DATA_BUS[0]~output_o\;

DATA_BUS(1) <= \DATA_BUS[1]~output_o\;

DATA_BUS(2) <= \DATA_BUS[2]~output_o\;

DATA_BUS(3) <= \DATA_BUS[3]~output_o\;

DATA_BUS(4) <= \DATA_BUS[4]~output_o\;

DATA_BUS(5) <= \DATA_BUS[5]~output_o\;

DATA_BUS(6) <= \DATA_BUS[6]~output_o\;

DATA_BUS(7) <= \DATA_BUS[7]~output_o\;
END structure;


