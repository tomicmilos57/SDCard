-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/05/2024 00:42:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sdcard IS
    PORT (
	\DAT0/IN\ : INOUT std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	led7 : OUT std_logic;
	led8 : OUT std_logic;
	led9 : OUT std_logic;
	CLK_SD : OUT std_logic;
	clk_50 : IN std_logic;
	WPnot : OUT std_logic;
	\CMD/OUT\ : INOUT std_logic;
	\DAT3/SSnot\ : INOUT std_logic
	);
END sdcard;

-- Design Ports Information
-- led0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led6	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led7	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led8	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led9	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_SD	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WPnot	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMD/OUT	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT0/IN	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT3/SSnot	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sdcard IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL ww_led8 : std_logic;
SIGNAL ww_led9 : std_logic;
SIGNAL ww_CLK_SD : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_WPnot : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CMD/OUT~input_o\ : std_logic;
SIGNAL \DAT0/IN~input_o\ : std_logic;
SIGNAL \DAT3/SSnot~input_o\ : std_logic;
SIGNAL \CMD/OUT~output_o\ : std_logic;
SIGNAL \DAT0/IN~output_o\ : std_logic;
SIGNAL \DAT3/SSnot~output_o\ : std_logic;
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \led4~output_o\ : std_logic;
SIGNAL \led5~output_o\ : std_logic;
SIGNAL \led6~output_o\ : std_logic;
SIGNAL \led7~output_o\ : std_logic;
SIGNAL \led8~output_o\ : std_logic;
SIGNAL \led9~output_o\ : std_logic;
SIGNAL \CLK_SD~output_o\ : std_logic;
SIGNAL \WPnot~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|data[2]~9\ : std_logic;
SIGNAL \inst5|data[3]~10_combout\ : std_logic;
SIGNAL \inst5|data[3]~11\ : std_logic;
SIGNAL \inst5|data[4]~12_combout\ : std_logic;
SIGNAL \inst5|data[4]~13\ : std_logic;
SIGNAL \inst5|data[5]~14_combout\ : std_logic;
SIGNAL \inst5|data[5]~15\ : std_logic;
SIGNAL \inst5|data[6]~16_combout\ : std_logic;
SIGNAL \inst5|data[1]~6_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|data[0]~18_combout\ : std_logic;
SIGNAL \inst5|data[1]~7\ : std_logic;
SIGNAL \inst5|data[2]~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[29]~29_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[28]~28_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[27]~27_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[26]~26_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[25]~25_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[24]~24_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[23]~23_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[22]~22_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[21]~21_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[20]~20_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[19]~19_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[18]~18_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[17]~17_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[16]~16_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[15]~15_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[14]~14_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[13]~13_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[12]~12_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[11]~11_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[10]~10_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[9]~9_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[8]~8_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[7]~7_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[6]~6_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[5]~5_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[4]~4_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[3]~3_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[1]~1_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst9|data[0]~6_combout\ : std_logic;
SIGNAL \inst3|inst9|data[0]~7\ : std_logic;
SIGNAL \inst3|inst9|data[1]~8_combout\ : std_logic;
SIGNAL \inst3|inst9|data[1]~9\ : std_logic;
SIGNAL \inst3|inst9|data[2]~10_combout\ : std_logic;
SIGNAL \inst3|inst9|data[2]~11\ : std_logic;
SIGNAL \inst3|inst9|data[3]~12_combout\ : std_logic;
SIGNAL \inst3|inst9|data[3]~13\ : std_logic;
SIGNAL \inst3|inst9|data[4]~14_combout\ : std_logic;
SIGNAL \inst3|inst9|data[4]~15\ : std_logic;
SIGNAL \inst3|inst9|data[5]~16_combout\ : std_logic;
SIGNAL \inst3|inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst10|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst8~q\ : std_logic;
SIGNAL \inst11|Y[0]~0_combout\ : std_logic;
SIGNAL \inst11|Y[0]~1_combout\ : std_logic;
SIGNAL \inst5|data\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|inst9|data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst3|inst|data\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \inst3|inst10|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_LessThan0~1_combout\ : std_logic;

BEGIN

led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
led7 <= ww_led7;
led8 <= ww_led8;
led9 <= ww_led9;
CLK_SD <= ww_CLK_SD;
ww_clk_50 <= clk_50;
WPnot <= ww_WPnot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst3|inst10|ALT_INV_Equal0~1_combout\ <= NOT \inst3|inst10|Equal0~1_combout\;
\inst7|ALT_INV_LessThan0~1_combout\ <= NOT \inst7|LessThan0~1_combout\;

-- Location: IOOBUF_X41_Y3_N2
\CMD/OUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|data\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \CMD/OUT~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\DAT0/IN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DAT0/IN~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\DAT3/SSnot~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Y[0]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \DAT3/SSnot~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led4~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led6~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led7~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led8~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led9~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\CLK_SD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	devoe => ww_devoe,
	o => \CLK_SD~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\WPnot~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WPnot~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G9
\clk_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y16_N14
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X40_Y16_N15
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X40_Y16_N16
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X40_Y16_N17
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X40_Y16_N18
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X40_Y16_N19
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X40_Y16_N20
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X40_Y16_N21
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X40_Y16_N22
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X40_Y16_N23
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X40_Y16_N24
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X40_Y16_N25
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X40_Y16_N26
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X40_Y16_N27
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X40_Y16_N28
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X40_Y16_N29
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X40_Y16_N30
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X40_Y16_N31
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X40_Y15_N0
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X40_Y15_N1
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X40_Y15_N2
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X40_Y15_N3
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X40_Y15_N4
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X40_Y15_N5
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X40_Y15_N6
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X40_Y15_N7
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X40_Y15_N8
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X40_Y15_N9
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X40_Y15_N10
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X40_Y15_N11
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X40_Y15_N12
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X40_Y15_N13
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X40_Y15_N14
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X40_Y15_N15
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X40_Y15_N16
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X40_Y15_N17
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X40_Y15_N18
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	cin => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\);

-- Location: FF_X40_Y15_N19
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: CLKCTRL_G8
\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y7_N20
\inst5|data[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[2]~8_combout\ = (\inst5|data\(2) & (!\inst5|data[1]~7\)) # (!\inst5|data\(2) & ((\inst5|data[1]~7\) # (GND)))
-- \inst5|data[2]~9\ = CARRY((!\inst5|data[1]~7\) # (!\inst5|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(2),
	datad => VCC,
	cin => \inst5|data[1]~7\,
	combout => \inst5|data[2]~8_combout\,
	cout => \inst5|data[2]~9\);

-- Location: LCCOMB_X39_Y7_N22
\inst5|data[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[3]~10_combout\ = (\inst5|data\(3) & (\inst5|data[2]~9\ $ (GND))) # (!\inst5|data\(3) & (!\inst5|data[2]~9\ & VCC))
-- \inst5|data[3]~11\ = CARRY((\inst5|data\(3) & !\inst5|data[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(3),
	datad => VCC,
	cin => \inst5|data[2]~9\,
	combout => \inst5|data[3]~10_combout\,
	cout => \inst5|data[3]~11\);

-- Location: FF_X39_Y7_N23
\inst5|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[3]~10_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(3));

-- Location: LCCOMB_X39_Y7_N24
\inst5|data[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[4]~12_combout\ = (\inst5|data\(4) & (!\inst5|data[3]~11\)) # (!\inst5|data\(4) & ((\inst5|data[3]~11\) # (GND)))
-- \inst5|data[4]~13\ = CARRY((!\inst5|data[3]~11\) # (!\inst5|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(4),
	datad => VCC,
	cin => \inst5|data[3]~11\,
	combout => \inst5|data[4]~12_combout\,
	cout => \inst5|data[4]~13\);

-- Location: FF_X39_Y7_N25
\inst5|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[4]~12_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(4));

-- Location: LCCOMB_X39_Y7_N26
\inst5|data[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[5]~14_combout\ = (\inst5|data\(5) & (\inst5|data[4]~13\ $ (GND))) # (!\inst5|data\(5) & (!\inst5|data[4]~13\ & VCC))
-- \inst5|data[5]~15\ = CARRY((\inst5|data\(5) & !\inst5|data[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(5),
	datad => VCC,
	cin => \inst5|data[4]~13\,
	combout => \inst5|data[5]~14_combout\,
	cout => \inst5|data[5]~15\);

-- Location: FF_X39_Y7_N27
\inst5|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[5]~14_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(5));

-- Location: LCCOMB_X39_Y7_N28
\inst5|data[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[6]~16_combout\ = \inst5|data[5]~15\ $ (\inst5|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|data\(6),
	cin => \inst5|data[5]~15\,
	combout => \inst5|data[6]~16_combout\);

-- Location: FF_X39_Y7_N29
\inst5|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[6]~16_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(6));

-- Location: LCCOMB_X39_Y7_N18
\inst5|data[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[1]~6_combout\ = (\inst5|data\(0) & (\inst5|data\(1) $ (VCC))) # (!\inst5|data\(0) & (\inst5|data\(1) & VCC))
-- \inst5|data[1]~7\ = CARRY((\inst5|data\(0) & \inst5|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(1),
	datad => VCC,
	combout => \inst5|data[1]~6_combout\,
	cout => \inst5|data[1]~7\);

-- Location: FF_X39_Y7_N19
\inst5|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[1]~6_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(1));

-- Location: LCCOMB_X39_Y7_N0
\inst7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (\inst5|data\(3)) # ((\inst5|data\(2) & ((\inst5|data\(0)) # (\inst5|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(2),
	datac => \inst5|data\(3),
	datad => \inst5|data\(1),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y7_N10
\inst7|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_combout\ = (\inst5|data\(6) & (\inst5|data\(5) & ((\inst5|data\(4)) # (\inst7|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(4),
	datab => \inst5|data\(6),
	datac => \inst5|data\(5),
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y7_N30
\inst5|data[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[0]~18_combout\ = \inst5|data\(0) $ (!\inst7|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|data\(0),
	datad => \inst7|LessThan0~1_combout\,
	combout => \inst5|data[0]~18_combout\);

-- Location: FF_X39_Y7_N31
\inst5|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(0));

-- Location: FF_X39_Y7_N21
\inst5|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[2]~8_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(2));

-- Location: LCCOMB_X39_Y7_N2
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (!\inst5|data\(0) & (!\inst5|data\(4) & (!\inst5|data\(3) & !\inst5|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(4),
	datac => \inst5|data\(3),
	datad => \inst5|data\(1),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y7_N8
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst5|data\(2) & (\inst5|data\(6) & (\inst5|data\(5) & \inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(2),
	datab => \inst5|data\(6),
	datac => \inst5|data\(5),
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X39_Y7_N9
\inst3|inst|data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst7|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(30));

-- Location: LCCOMB_X40_Y7_N26
\inst3|inst1|Y[29]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[29]~29_combout\ = (\inst3|inst|data\(30)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(30),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[29]~29_combout\);

-- Location: FF_X40_Y7_N27
\inst3|inst|data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(29));

-- Location: LCCOMB_X40_Y7_N24
\inst3|inst1|Y[28]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[28]~28_combout\ = (\inst3|inst|data\(29)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(29),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[28]~28_combout\);

-- Location: FF_X40_Y7_N25
\inst3|inst|data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(28));

-- Location: LCCOMB_X40_Y7_N22
\inst3|inst1|Y[27]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[27]~27_combout\ = (\inst3|inst|data\(28)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(28),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[27]~27_combout\);

-- Location: FF_X40_Y7_N23
\inst3|inst|data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(27));

-- Location: LCCOMB_X40_Y7_N28
\inst3|inst1|Y[26]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[26]~26_combout\ = (\inst3|inst|data\(27)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(27),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[26]~26_combout\);

-- Location: FF_X40_Y7_N29
\inst3|inst|data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(26));

-- Location: LCCOMB_X40_Y7_N10
\inst3|inst1|Y[25]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[25]~25_combout\ = (\inst3|inst|data\(26)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(26),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[25]~25_combout\);

-- Location: FF_X40_Y7_N11
\inst3|inst|data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(25));

-- Location: LCCOMB_X40_Y7_N12
\inst3|inst1|Y[24]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[24]~24_combout\ = (\inst3|inst|data\(25)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(25),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[24]~24_combout\);

-- Location: FF_X40_Y7_N13
\inst3|inst|data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(24));

-- Location: LCCOMB_X40_Y7_N14
\inst3|inst1|Y[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[23]~23_combout\ = (\inst3|inst|data\(24)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(24),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[23]~23_combout\);

-- Location: FF_X40_Y7_N15
\inst3|inst|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(23));

-- Location: LCCOMB_X38_Y7_N14
\inst3|inst1|Y[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[22]~22_combout\ = (\inst3|inst|data\(23)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(23),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[22]~22_combout\);

-- Location: FF_X38_Y7_N15
\inst3|inst|data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(22));

-- Location: LCCOMB_X38_Y7_N16
\inst3|inst1|Y[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[21]~21_combout\ = (\inst3|inst|data\(22)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(22),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[21]~21_combout\);

-- Location: FF_X38_Y7_N17
\inst3|inst|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(21));

-- Location: LCCOMB_X38_Y7_N22
\inst3|inst1|Y[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[20]~20_combout\ = (\inst3|inst|data\(21)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(21),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[20]~20_combout\);

-- Location: FF_X38_Y7_N23
\inst3|inst|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(20));

-- Location: LCCOMB_X38_Y7_N12
\inst3|inst1|Y[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[19]~19_combout\ = (\inst3|inst|data\(20)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(20),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[19]~19_combout\);

-- Location: FF_X38_Y7_N13
\inst3|inst|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(19));

-- Location: LCCOMB_X38_Y7_N30
\inst3|inst1|Y[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[18]~18_combout\ = (\inst3|inst|data\(19)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(19),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[18]~18_combout\);

-- Location: FF_X38_Y7_N31
\inst3|inst|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(18));

-- Location: LCCOMB_X38_Y7_N28
\inst3|inst1|Y[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[17]~17_combout\ = (\inst3|inst|data\(18)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(18),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[17]~17_combout\);

-- Location: FF_X38_Y7_N29
\inst3|inst|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(17));

-- Location: LCCOMB_X38_Y7_N26
\inst3|inst1|Y[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[16]~16_combout\ = (\inst3|inst|data\(17)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(17),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[16]~16_combout\);

-- Location: FF_X38_Y7_N27
\inst3|inst|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(16));

-- Location: LCCOMB_X38_Y7_N20
\inst3|inst1|Y[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[15]~15_combout\ = (\inst3|inst|data\(16)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(16),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[15]~15_combout\);

-- Location: FF_X38_Y7_N21
\inst3|inst|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(15));

-- Location: LCCOMB_X38_Y7_N18
\inst3|inst1|Y[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[14]~14_combout\ = (\inst3|inst|data\(15)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(15),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[14]~14_combout\);

-- Location: FF_X38_Y7_N19
\inst3|inst|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(14));

-- Location: LCCOMB_X38_Y7_N8
\inst3|inst1|Y[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[13]~13_combout\ = (\inst3|inst|data\(14)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(14),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[13]~13_combout\);

-- Location: FF_X38_Y7_N9
\inst3|inst|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(13));

-- Location: LCCOMB_X38_Y7_N10
\inst3|inst1|Y[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[12]~12_combout\ = (\inst3|inst|data\(13)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(13),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[12]~12_combout\);

-- Location: FF_X38_Y7_N11
\inst3|inst|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(12));

-- Location: LCCOMB_X38_Y7_N0
\inst3|inst1|Y[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[11]~11_combout\ = (\inst3|inst|data\(12)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(12),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[11]~11_combout\);

-- Location: FF_X38_Y7_N1
\inst3|inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(11));

-- Location: LCCOMB_X38_Y7_N2
\inst3|inst1|Y[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[10]~10_combout\ = (\inst3|inst|data\(11)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(11),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[10]~10_combout\);

-- Location: FF_X38_Y7_N3
\inst3|inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(10));

-- Location: LCCOMB_X38_Y7_N24
\inst3|inst1|Y[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[9]~9_combout\ = (\inst3|inst|data\(10)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(10),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[9]~9_combout\);

-- Location: FF_X38_Y7_N25
\inst3|inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(9));

-- Location: LCCOMB_X39_Y7_N14
\inst3|inst1|Y[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[8]~8_combout\ = (\inst3|inst|data\(9)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(9),
	datac => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[8]~8_combout\);

-- Location: FF_X39_Y7_N15
\inst3|inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(8));

-- Location: LCCOMB_X40_Y7_N4
\inst3|inst1|Y[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[7]~7_combout\ = (\inst3|inst|data\(8)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(8),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[7]~7_combout\);

-- Location: FF_X40_Y7_N5
\inst3|inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(7));

-- Location: LCCOMB_X40_Y7_N2
\inst3|inst1|Y[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[6]~6_combout\ = (\inst3|inst|data\(7)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(7),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[6]~6_combout\);

-- Location: FF_X40_Y7_N3
\inst3|inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(6));

-- Location: LCCOMB_X40_Y7_N0
\inst3|inst1|Y[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[5]~5_combout\ = (\inst3|inst|data\(6)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(6),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[5]~5_combout\);

-- Location: FF_X40_Y7_N1
\inst3|inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(5));

-- Location: LCCOMB_X40_Y7_N6
\inst3|inst1|Y[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[4]~4_combout\ = (\inst3|inst|data\(5)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(5),
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[4]~4_combout\);

-- Location: FF_X40_Y7_N7
\inst3|inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(4));

-- Location: LCCOMB_X39_Y7_N4
\inst3|inst1|Y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[3]~3_combout\ = (\inst3|inst|data\(4)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(4),
	datac => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[3]~3_combout\);

-- Location: FF_X39_Y7_N5
\inst3|inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(3));

-- Location: LCCOMB_X39_Y7_N6
\inst3|inst1|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[2]~2_combout\ = (\inst7|Equal0~1_combout\) # (\inst3|inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Equal0~1_combout\,
	datad => \inst3|inst|data\(3),
	combout => \inst3|inst1|Y[2]~2_combout\);

-- Location: FF_X39_Y7_N7
\inst3|inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(2));

-- Location: LCCOMB_X39_Y7_N12
\inst3|inst1|Y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[1]~1_combout\ = (\inst3|inst|data\(2)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(2),
	datac => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[1]~1_combout\);

-- Location: FF_X39_Y7_N13
\inst3|inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(1));

-- Location: LCCOMB_X39_Y7_N16
\inst3|inst1|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[0]~0_combout\ = (\inst3|inst|data\(1)) # (\inst7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(1),
	datac => \inst7|Equal0~1_combout\,
	combout => \inst3|inst1|Y[0]~0_combout\);

-- Location: FF_X39_Y7_N17
\inst3|inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(0));

-- Location: LCCOMB_X39_Y6_N10
\inst3|inst9|data[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[0]~6_combout\ = (\inst3|inst9|data\(0) & (\inst3|inst8~q\ $ (VCC))) # (!\inst3|inst9|data\(0) & (\inst3|inst8~q\ & VCC))
-- \inst3|inst9|data[0]~7\ = CARRY((\inst3|inst9|data\(0) & \inst3|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|data\(0),
	datab => \inst3|inst8~q\,
	datad => VCC,
	combout => \inst3|inst9|data[0]~6_combout\,
	cout => \inst3|inst9|data[0]~7\);

-- Location: FF_X39_Y6_N11
\inst3|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[0]~6_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(0));

-- Location: LCCOMB_X39_Y6_N12
\inst3|inst9|data[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[1]~8_combout\ = (\inst3|inst9|data\(1) & (!\inst3|inst9|data[0]~7\)) # (!\inst3|inst9|data\(1) & ((\inst3|inst9|data[0]~7\) # (GND)))
-- \inst3|inst9|data[1]~9\ = CARRY((!\inst3|inst9|data[0]~7\) # (!\inst3|inst9|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|data\(1),
	datad => VCC,
	cin => \inst3|inst9|data[0]~7\,
	combout => \inst3|inst9|data[1]~8_combout\,
	cout => \inst3|inst9|data[1]~9\);

-- Location: FF_X39_Y6_N13
\inst3|inst9|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[1]~8_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(1));

-- Location: LCCOMB_X39_Y6_N14
\inst3|inst9|data[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[2]~10_combout\ = (\inst3|inst9|data\(2) & (\inst3|inst9|data[1]~9\ $ (GND))) # (!\inst3|inst9|data\(2) & (!\inst3|inst9|data[1]~9\ & VCC))
-- \inst3|inst9|data[2]~11\ = CARRY((\inst3|inst9|data\(2) & !\inst3|inst9|data[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|data\(2),
	datad => VCC,
	cin => \inst3|inst9|data[1]~9\,
	combout => \inst3|inst9|data[2]~10_combout\,
	cout => \inst3|inst9|data[2]~11\);

-- Location: FF_X39_Y6_N15
\inst3|inst9|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[2]~10_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(2));

-- Location: LCCOMB_X39_Y6_N16
\inst3|inst9|data[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[3]~12_combout\ = (\inst3|inst9|data\(3) & (!\inst3|inst9|data[2]~11\)) # (!\inst3|inst9|data\(3) & ((\inst3|inst9|data[2]~11\) # (GND)))
-- \inst3|inst9|data[3]~13\ = CARRY((!\inst3|inst9|data[2]~11\) # (!\inst3|inst9|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|data\(3),
	datad => VCC,
	cin => \inst3|inst9|data[2]~11\,
	combout => \inst3|inst9|data[3]~12_combout\,
	cout => \inst3|inst9|data[3]~13\);

-- Location: FF_X39_Y6_N17
\inst3|inst9|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[3]~12_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(3));

-- Location: LCCOMB_X39_Y6_N18
\inst3|inst9|data[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[4]~14_combout\ = (\inst3|inst9|data\(4) & (\inst3|inst9|data[3]~13\ $ (GND))) # (!\inst3|inst9|data\(4) & (!\inst3|inst9|data[3]~13\ & VCC))
-- \inst3|inst9|data[4]~15\ = CARRY((\inst3|inst9|data\(4) & !\inst3|inst9|data[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|data\(4),
	datad => VCC,
	cin => \inst3|inst9|data[3]~13\,
	combout => \inst3|inst9|data[4]~14_combout\,
	cout => \inst3|inst9|data[4]~15\);

-- Location: FF_X39_Y6_N19
\inst3|inst9|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[4]~14_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(4));

-- Location: LCCOMB_X39_Y6_N20
\inst3|inst9|data[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst9|data[5]~16_combout\ = \inst3|inst9|data[4]~15\ $ (\inst3|inst9|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst9|data\(5),
	cin => \inst3|inst9|data[4]~15\,
	combout => \inst3|inst9|data[5]~16_combout\);

-- Location: FF_X39_Y6_N21
\inst3|inst9|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[5]~16_combout\,
	sclr => \inst3|inst10|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(5));

-- Location: LCCOMB_X39_Y6_N22
\inst3|inst10|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst10|Equal0~0_combout\ = (((!\inst3|inst9|data\(0)) # (!\inst3|inst9|data\(2))) # (!\inst3|inst9|data\(3))) # (!\inst3|inst9|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst9|data\(1),
	datab => \inst3|inst9|data\(3),
	datac => \inst3|inst9|data\(2),
	datad => \inst3|inst9|data\(0),
	combout => \inst3|inst10|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y6_N0
\inst3|inst10|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst10|Equal0~1_combout\ = ((\inst3|inst10|Equal0~0_combout\) # (!\inst3|inst9|data\(4))) # (!\inst3|inst9|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst9|data\(5),
	datac => \inst3|inst10|Equal0~0_combout\,
	datad => \inst3|inst9|data\(4),
	combout => \inst3|inst10|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y6_N24
\inst3|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst8~0_combout\ = (\inst3|inst8~q\ & (\inst3|inst10|Equal0~1_combout\)) # (!\inst3|inst8~q\ & ((\inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst10|Equal0~1_combout\,
	datac => \inst3|inst8~q\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst3|inst8~0_combout\);

-- Location: FF_X39_Y6_N25
\inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8~q\);

-- Location: LCCOMB_X40_Y7_N20
\inst11|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Y[0]~0_combout\ = (\inst5|data\(6) & ((\inst5|data\(4)) # (\inst5|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(4),
	datac => \inst5|data\(5),
	datad => \inst5|data\(6),
	combout => \inst11|Y[0]~0_combout\);

-- Location: LCCOMB_X40_Y6_N28
\inst11|Y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Y[0]~1_combout\ = (\inst7|LessThan0~1_combout\ & (!\inst3|inst8~q\)) # (!\inst7|LessThan0~1_combout\ & ((\inst11|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst8~q\,
	datac => \inst7|LessThan0~1_combout\,
	datad => \inst11|Y[0]~0_combout\,
	combout => \inst11|Y[0]~1_combout\);

-- Location: IOIBUF_X41_Y3_N1
\CMD/OUT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \CMD/OUT\,
	o => \CMD/OUT~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\DAT0/IN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \DAT0/IN\,
	o => \DAT0/IN~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\DAT3/SSnot~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \DAT3/SSnot\,
	o => \DAT3/SSnot~input_o\);

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_led4 <= \led4~output_o\;

ww_led5 <= \led5~output_o\;

ww_led6 <= \led6~output_o\;

ww_led7 <= \led7~output_o\;

ww_led8 <= \led8~output_o\;

ww_led9 <= \led9~output_o\;

ww_CLK_SD <= \CLK_SD~output_o\;

ww_WPnot <= \WPnot~output_o\;

\CMD/OUT\ <= \CMD/OUT~output_o\;

\DAT0/IN\ <= \DAT0/IN~output_o\;

\DAT3/SSnot\ <= \DAT3/SSnot~output_o\;
END structure;


