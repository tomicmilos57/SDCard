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

-- DATE "07/23/2024 13:52:39"

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
	led0 : OUT std_logic;
	clk_50 : IN std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	led4 : OUT std_logic;
	led5 : OUT std_logic;
	led6 : OUT std_logic;
	led7 : OUT std_logic;
	led8 : OUT std_logic;
	led9 : OUT std_logic
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
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_led4 : std_logic;
SIGNAL ww_led5 : std_logic;
SIGNAL ww_led6 : std_logic;
SIGNAL ww_led7 : std_logic;
SIGNAL ww_led8 : std_logic;
SIGNAL ww_led9 : std_logic;
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(18 DOWNTO 0);

BEGIN

led0 <= ww_led0;
ww_clk_50 <= clk_50;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
led4 <= ww_led4;
led5 <= ww_led5;
led6 <= ww_led6;
led7 <= ww_led7;
led8 <= ww_led8;
led9 <= ww_led9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\led0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
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
	i => VCC,
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
	i => \clk_50~input_o\,
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

-- Location: LCCOMB_X1_Y21_N14
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

-- Location: FF_X1_Y21_N15
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

-- Location: LCCOMB_X1_Y21_N16
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

-- Location: FF_X1_Y21_N17
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

-- Location: LCCOMB_X1_Y21_N18
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

-- Location: FF_X1_Y21_N19
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

-- Location: LCCOMB_X1_Y21_N20
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

-- Location: FF_X1_Y21_N21
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

-- Location: LCCOMB_X1_Y21_N22
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

-- Location: FF_X1_Y21_N23
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

-- Location: LCCOMB_X1_Y21_N24
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

-- Location: FF_X1_Y21_N25
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

-- Location: LCCOMB_X1_Y21_N26
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

-- Location: FF_X1_Y21_N27
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

-- Location: LCCOMB_X1_Y21_N28
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

-- Location: FF_X1_Y21_N29
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

-- Location: LCCOMB_X1_Y21_N30
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

-- Location: FF_X1_Y21_N31
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

-- Location: LCCOMB_X1_Y20_N0
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

-- Location: FF_X1_Y20_N1
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

-- Location: LCCOMB_X1_Y20_N2
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

-- Location: FF_X1_Y20_N3
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

-- Location: LCCOMB_X1_Y20_N4
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

-- Location: FF_X1_Y20_N5
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

-- Location: LCCOMB_X1_Y20_N6
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

-- Location: FF_X1_Y20_N7
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

-- Location: LCCOMB_X1_Y20_N8
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

-- Location: FF_X1_Y20_N9
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

-- Location: LCCOMB_X1_Y20_N10
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

-- Location: FF_X1_Y20_N11
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

-- Location: LCCOMB_X1_Y20_N12
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

-- Location: FF_X1_Y20_N13
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

-- Location: LCCOMB_X1_Y20_N14
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

-- Location: FF_X1_Y20_N15
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

-- Location: LCCOMB_X1_Y20_N16
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

-- Location: FF_X1_Y20_N17
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

-- Location: LCCOMB_X1_Y20_N18
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

-- Location: FF_X1_Y20_N19
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
END structure;


