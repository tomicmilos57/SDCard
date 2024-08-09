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

-- DATE "08/09/2024 18:33:08"

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
	\CMD/OUT\ : INOUT std_logic;
	clk_50 : IN std_logic;
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
	WPnot : OUT std_logic;
	hex00 : OUT std_logic;
	BUTTON2 : IN std_logic;
	hex01 : OUT std_logic;
	hex02 : OUT std_logic;
	hex03 : OUT std_logic;
	hex04 : OUT std_logic;
	hex05 : OUT std_logic;
	hex06 : OUT std_logic;
	hex10 : OUT std_logic;
	hex11 : OUT std_logic;
	hex12 : OUT std_logic;
	hex13 : OUT std_logic;
	hex14 : OUT std_logic;
	hex15 : OUT std_logic;
	hex16 : OUT std_logic;
	hex20 : OUT std_logic;
	hex21 : OUT std_logic;
	hex22 : OUT std_logic;
	hex23 : OUT std_logic;
	hex24 : OUT std_logic;
	hex25 : OUT std_logic;
	hex26 : OUT std_logic;
	hex30 : OUT std_logic;
	hex31 : OUT std_logic;
	hex32 : OUT std_logic;
	hex33 : OUT std_logic;
	hex34 : OUT std_logic;
	hex35 : OUT std_logic;
	hex36 : OUT std_logic;
	\DAT3/SSnot\ : INOUT std_logic;
	BUTTON1 : IN std_logic
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
-- led8	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led9	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_SD	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WPnot	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex00	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex01	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex02	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex03	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex04	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex05	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex06	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex10	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex11	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex12	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex13	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex14	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex15	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex16	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex20	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex21	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex22	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex23	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex24	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex25	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex26	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex30	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex31	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex32	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex33	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex34	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex35	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex36	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON1	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMD/OUT	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT0/IN	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAT3/SSnot	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON2	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLK_SD : std_logic;
SIGNAL ww_WPnot : std_logic;
SIGNAL ww_hex00 : std_logic;
SIGNAL ww_BUTTON2 : std_logic;
SIGNAL ww_hex01 : std_logic;
SIGNAL ww_hex02 : std_logic;
SIGNAL ww_hex03 : std_logic;
SIGNAL ww_hex04 : std_logic;
SIGNAL ww_hex05 : std_logic;
SIGNAL ww_hex06 : std_logic;
SIGNAL ww_hex10 : std_logic;
SIGNAL ww_hex11 : std_logic;
SIGNAL ww_hex12 : std_logic;
SIGNAL ww_hex13 : std_logic;
SIGNAL ww_hex14 : std_logic;
SIGNAL ww_hex15 : std_logic;
SIGNAL ww_hex16 : std_logic;
SIGNAL ww_hex20 : std_logic;
SIGNAL ww_hex21 : std_logic;
SIGNAL ww_hex22 : std_logic;
SIGNAL ww_hex23 : std_logic;
SIGNAL ww_hex24 : std_logic;
SIGNAL ww_hex25 : std_logic;
SIGNAL ww_hex26 : std_logic;
SIGNAL ww_hex30 : std_logic;
SIGNAL ww_hex31 : std_logic;
SIGNAL ww_hex32 : std_logic;
SIGNAL ww_hex33 : std_logic;
SIGNAL ww_hex34 : std_logic;
SIGNAL ww_hex35 : std_logic;
SIGNAL ww_hex36 : std_logic;
SIGNAL ww_BUTTON1 : std_logic;
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BUTTON1~input_o\ : std_logic;
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
SIGNAL \hex00~output_o\ : std_logic;
SIGNAL \hex01~output_o\ : std_logic;
SIGNAL \hex02~output_o\ : std_logic;
SIGNAL \hex03~output_o\ : std_logic;
SIGNAL \hex04~output_o\ : std_logic;
SIGNAL \hex05~output_o\ : std_logic;
SIGNAL \hex06~output_o\ : std_logic;
SIGNAL \hex10~output_o\ : std_logic;
SIGNAL \hex11~output_o\ : std_logic;
SIGNAL \hex12~output_o\ : std_logic;
SIGNAL \hex13~output_o\ : std_logic;
SIGNAL \hex14~output_o\ : std_logic;
SIGNAL \hex15~output_o\ : std_logic;
SIGNAL \hex16~output_o\ : std_logic;
SIGNAL \hex20~output_o\ : std_logic;
SIGNAL \hex21~output_o\ : std_logic;
SIGNAL \hex22~output_o\ : std_logic;
SIGNAL \hex23~output_o\ : std_logic;
SIGNAL \hex24~output_o\ : std_logic;
SIGNAL \hex25~output_o\ : std_logic;
SIGNAL \hex26~output_o\ : std_logic;
SIGNAL \hex30~output_o\ : std_logic;
SIGNAL \hex31~output_o\ : std_logic;
SIGNAL \hex32~output_o\ : std_logic;
SIGNAL \hex33~output_o\ : std_logic;
SIGNAL \hex34~output_o\ : std_logic;
SIGNAL \hex35~output_o\ : std_logic;
SIGNAL \hex36~output_o\ : std_logic;
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
SIGNAL \inst5|data[1]~7_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|data[5]~16\ : std_logic;
SIGNAL \inst5|data[6]~17_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|data[0]~6_combout\ : std_logic;
SIGNAL \inst5|data[1]~8\ : std_logic;
SIGNAL \inst5|data[2]~9_combout\ : std_logic;
SIGNAL \inst5|data[2]~10\ : std_logic;
SIGNAL \inst5|data[3]~11_combout\ : std_logic;
SIGNAL \inst5|data[3]~12\ : std_logic;
SIGNAL \inst5|data[4]~13_combout\ : std_logic;
SIGNAL \inst5|data[4]~14\ : std_logic;
SIGNAL \inst5|data[5]~15_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Equal0~4_combout\ : std_logic;
SIGNAL \inst18|inst1~q\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst18|inst2~combout\ : std_logic;
SIGNAL \inst3|inst1|Y[46]~46_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[45]~45_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[44]~44_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[43]~43_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[42]~42_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[41]~41_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[40]~40_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[39]~39_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[38]~38_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[37]~37_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[36]~36_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[35]~35_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[34]~34_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[33]~33_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[32]~32_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[31]~31_combout\ : std_logic;
SIGNAL \inst3|inst1|Y[30]~30_combout\ : std_logic;
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
SIGNAL \inst11|Y[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst9|data[0]~6_combout\ : std_logic;
SIGNAL \inst3|inst9|data[1]~9\ : std_logic;
SIGNAL \inst3|inst9|data[2]~10_combout\ : std_logic;
SIGNAL \inst3|inst9|data[2]~11\ : std_logic;
SIGNAL \inst3|inst9|data[3]~12_combout\ : std_logic;
SIGNAL \inst3|inst9|data[3]~13\ : std_logic;
SIGNAL \inst3|inst9|data[4]~14_combout\ : std_logic;
SIGNAL \inst3|inst9|data[4]~15\ : std_logic;
SIGNAL \inst3|inst9|data[5]~16_combout\ : std_logic;
SIGNAL \inst3|inst6~combout\ : std_logic;
SIGNAL \inst3|inst9|data[0]~7\ : std_logic;
SIGNAL \inst3|inst9|data[1]~8_combout\ : std_logic;
SIGNAL \inst3|inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst8~0_combout\ : std_logic;
SIGNAL \inst3|inst8~1_combout\ : std_logic;
SIGNAL \inst3|inst8~q\ : std_logic;
SIGNAL \inst11|Y[0]~1_combout\ : std_logic;
SIGNAL \inst2|data[0]~93_combout\ : std_logic;
SIGNAL \inst2|data[1]~31_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst2|data[1]~32\ : std_logic;
SIGNAL \inst2|data[2]~33_combout\ : std_logic;
SIGNAL \inst2|data[2]~34\ : std_logic;
SIGNAL \inst2|data[3]~35_combout\ : std_logic;
SIGNAL \inst2|data[3]~36\ : std_logic;
SIGNAL \inst2|data[4]~37_combout\ : std_logic;
SIGNAL \inst2|data[4]~38\ : std_logic;
SIGNAL \inst2|data[5]~39_combout\ : std_logic;
SIGNAL \inst2|data[5]~40\ : std_logic;
SIGNAL \inst2|data[6]~41_combout\ : std_logic;
SIGNAL \inst2|data[6]~42\ : std_logic;
SIGNAL \inst2|data[7]~43_combout\ : std_logic;
SIGNAL \inst2|data[7]~44\ : std_logic;
SIGNAL \inst2|data[8]~45_combout\ : std_logic;
SIGNAL \inst2|data[8]~46\ : std_logic;
SIGNAL \inst2|data[9]~47_combout\ : std_logic;
SIGNAL \inst2|data[9]~48\ : std_logic;
SIGNAL \inst2|data[10]~49_combout\ : std_logic;
SIGNAL \inst2|data[10]~50\ : std_logic;
SIGNAL \inst2|data[11]~51_combout\ : std_logic;
SIGNAL \inst2|data[11]~52\ : std_logic;
SIGNAL \inst2|data[12]~53_combout\ : std_logic;
SIGNAL \inst2|data[12]~54\ : std_logic;
SIGNAL \inst2|data[13]~55_combout\ : std_logic;
SIGNAL \inst2|data[13]~56\ : std_logic;
SIGNAL \inst2|data[14]~57_combout\ : std_logic;
SIGNAL \inst2|data[14]~58\ : std_logic;
SIGNAL \inst2|data[15]~59_combout\ : std_logic;
SIGNAL \inst2|data[15]~60\ : std_logic;
SIGNAL \inst2|data[16]~61_combout\ : std_logic;
SIGNAL \inst2|data[16]~62\ : std_logic;
SIGNAL \inst2|data[17]~63_combout\ : std_logic;
SIGNAL \inst2|data[17]~64\ : std_logic;
SIGNAL \inst2|data[18]~65_combout\ : std_logic;
SIGNAL \inst2|data[18]~66\ : std_logic;
SIGNAL \inst2|data[19]~67_combout\ : std_logic;
SIGNAL \inst2|data[19]~68\ : std_logic;
SIGNAL \inst2|data[20]~69_combout\ : std_logic;
SIGNAL \inst2|data[20]~70\ : std_logic;
SIGNAL \inst2|data[21]~71_combout\ : std_logic;
SIGNAL \inst2|data[21]~72\ : std_logic;
SIGNAL \inst2|data[22]~73_combout\ : std_logic;
SIGNAL \inst2|data[22]~74\ : std_logic;
SIGNAL \inst2|data[23]~75_combout\ : std_logic;
SIGNAL \inst2|data[23]~76\ : std_logic;
SIGNAL \inst2|data[24]~77_combout\ : std_logic;
SIGNAL \inst2|data[24]~78\ : std_logic;
SIGNAL \inst2|data[25]~79_combout\ : std_logic;
SIGNAL \inst2|data[25]~80\ : std_logic;
SIGNAL \inst2|data[26]~81_combout\ : std_logic;
SIGNAL \inst2|data[26]~82\ : std_logic;
SIGNAL \inst2|data[27]~83_combout\ : std_logic;
SIGNAL \inst2|data[27]~84\ : std_logic;
SIGNAL \inst2|data[28]~85_combout\ : std_logic;
SIGNAL \BUTTON2~input_o\ : std_logic;
SIGNAL \inst17|inst1~0_combout\ : std_logic;
SIGNAL \inst17|inst1~q\ : std_logic;
SIGNAL \inst17|inst2~combout\ : std_logic;
SIGNAL \inst22|inst~0_combout\ : std_logic;
SIGNAL \inst22|inst~feeder_combout\ : std_logic;
SIGNAL \inst22|inst~q\ : std_logic;
SIGNAL \inst22|inst13~0_combout\ : std_logic;
SIGNAL \inst2|data[28]~86\ : std_logic;
SIGNAL \inst2|data[29]~87_combout\ : std_logic;
SIGNAL \inst2|data[29]~88\ : std_logic;
SIGNAL \inst2|data[30]~89_combout\ : std_logic;
SIGNAL \inst22|inst7~0_combout\ : std_logic;
SIGNAL \inst22|inst10~0_combout\ : std_logic;
SIGNAL \inst2|data[30]~90\ : std_logic;
SIGNAL \inst2|data[31]~91_combout\ : std_logic;
SIGNAL \inst22|inst3~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|inst95|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst19~0_combout\ : std_logic;
SIGNAL \inst22|inst16~0_combout\ : std_logic;
SIGNAL \inst22|inst25~0_combout\ : std_logic;
SIGNAL \inst22|inst22~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|inst105|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst31~0_combout\ : std_logic;
SIGNAL \inst22|inst37~0_combout\ : std_logic;
SIGNAL \inst22|inst34~0_combout\ : std_logic;
SIGNAL \inst22|inst28~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|inst110|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst49~0_combout\ : std_logic;
SIGNAL \inst22|inst43~0_combout\ : std_logic;
SIGNAL \inst22|inst46~0_combout\ : std_logic;
SIGNAL \inst22|inst40~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|inst113|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|inst9|data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|inst|data\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \inst5|data\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst7|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst22|inst113|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst110|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst105|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst22|inst95|ALT_INV_Mux6~0_combout\ : std_logic;

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
CLK_SD <= ww_CLK_SD;
WPnot <= ww_WPnot;
hex00 <= ww_hex00;
ww_BUTTON2 <= BUTTON2;
hex01 <= ww_hex01;
hex02 <= ww_hex02;
hex03 <= ww_hex03;
hex04 <= ww_hex04;
hex05 <= ww_hex05;
hex06 <= ww_hex06;
hex10 <= ww_hex10;
hex11 <= ww_hex11;
hex12 <= ww_hex12;
hex13 <= ww_hex13;
hex14 <= ww_hex14;
hex15 <= ww_hex15;
hex16 <= ww_hex16;
hex20 <= ww_hex20;
hex21 <= ww_hex21;
hex22 <= ww_hex22;
hex23 <= ww_hex23;
hex24 <= ww_hex24;
hex25 <= ww_hex25;
hex26 <= ww_hex26;
hex30 <= ww_hex30;
hex31 <= ww_hex31;
hex32 <= ww_hex32;
hex33 <= ww_hex33;
hex34 <= ww_hex34;
hex35 <= ww_hex35;
hex36 <= ww_hex36;
ww_BUTTON1 <= BUTTON1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst7|ALT_INV_LessThan0~1_combout\ <= NOT \inst7|LessThan0~1_combout\;
\inst22|inst113|ALT_INV_Mux6~0_combout\ <= NOT \inst22|inst113|Mux6~0_combout\;
\inst22|inst110|ALT_INV_Mux6~0_combout\ <= NOT \inst22|inst110|Mux6~0_combout\;
\inst22|inst105|ALT_INV_Mux6~0_combout\ <= NOT \inst22|inst105|Mux6~0_combout\;
\inst22|inst95|ALT_INV_Mux6~0_combout\ <= NOT \inst22|inst95|Mux6~0_combout\;

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
	i => \inst3|inst|data\(0),
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
	i => \inst18|inst2~combout\,
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

-- Location: IOOBUF_X0_Y27_N9
\led8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst8~q\,
	devoe => ww_devoe,
	o => \led8~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\led9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|data\(0),
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

-- Location: IOOBUF_X32_Y29_N23
\hex00~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex00~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\hex01~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex01~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\hex02~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex02~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\hex03~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex03~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\hex04~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex04~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex05~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex05~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\hex06~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst95|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex06~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\hex10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex10~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\hex11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex11~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\hex12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex12~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\hex13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex13~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\hex14~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex14~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\hex15~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex15~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\hex16~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst105|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex16~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex20~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex20~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex21~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex21~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex22~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex22~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex23~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex23~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex24~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex24~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex25~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex25~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex26~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst110|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex26~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\hex30~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex30~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex31~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex31~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex32~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex32~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex33~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex33~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex34~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex34~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex35~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex35~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex36~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst113|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex36~output_o\);

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
-- \inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) $ (!\inst123|inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X6_Y25_N14
\inst5|data[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[1]~7_combout\ = (\inst5|data\(0) & (\inst5|data\(1) $ (VCC))) # (!\inst5|data\(0) & (\inst5|data\(1) & VCC))
-- \inst5|data[1]~8\ = CARRY((\inst5|data\(0) & \inst5|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(1),
	datad => VCC,
	combout => \inst5|data[1]~7_combout\,
	cout => \inst5|data[1]~8\);

-- Location: FF_X6_Y25_N15
\inst5|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[1]~7_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(1));

-- Location: LCCOMB_X6_Y25_N10
\inst7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (\inst5|data\(4)) # ((\inst5|data\(2) & ((\inst5|data\(0)) # (\inst5|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(2),
	datac => \inst5|data\(1),
	datad => \inst5|data\(4),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y25_N22
\inst5|data[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[5]~15_combout\ = (\inst5|data\(5) & (\inst5|data[4]~14\ $ (GND))) # (!\inst5|data\(5) & (!\inst5|data[4]~14\ & VCC))
-- \inst5|data[5]~16\ = CARRY((\inst5|data\(5) & !\inst5|data[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(5),
	datad => VCC,
	cin => \inst5|data[4]~14\,
	combout => \inst5|data[5]~15_combout\,
	cout => \inst5|data[5]~16\);

-- Location: LCCOMB_X6_Y25_N24
\inst5|data[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[6]~17_combout\ = \inst5|data[5]~16\ $ (\inst5|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|data\(6),
	cin => \inst5|data[5]~16\,
	combout => \inst5|data[6]~17_combout\);

-- Location: FF_X6_Y25_N25
\inst5|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[6]~17_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(6));

-- Location: LCCOMB_X6_Y25_N0
\inst7|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_combout\ = (\inst5|data\(5) & (\inst5|data\(6) & ((\inst7|LessThan0~0_combout\) # (\inst5|data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~0_combout\,
	datab => \inst5|data\(3),
	datac => \inst5|data\(5),
	datad => \inst5|data\(6),
	combout => \inst7|LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y25_N12
\inst5|data[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[0]~6_combout\ = \inst5|data\(0) $ (!\inst7|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|data\(0),
	datad => \inst7|LessThan0~1_combout\,
	combout => \inst5|data[0]~6_combout\);

-- Location: FF_X6_Y25_N13
\inst5|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(0));

-- Location: LCCOMB_X6_Y25_N16
\inst5|data[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[2]~9_combout\ = (\inst5|data\(2) & (!\inst5|data[1]~8\)) # (!\inst5|data\(2) & ((\inst5|data[1]~8\) # (GND)))
-- \inst5|data[2]~10\ = CARRY((!\inst5|data[1]~8\) # (!\inst5|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(2),
	datad => VCC,
	cin => \inst5|data[1]~8\,
	combout => \inst5|data[2]~9_combout\,
	cout => \inst5|data[2]~10\);

-- Location: FF_X6_Y25_N17
\inst5|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[2]~9_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(2));

-- Location: LCCOMB_X6_Y25_N18
\inst5|data[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[3]~11_combout\ = (\inst5|data\(3) & (\inst5|data[2]~10\ $ (GND))) # (!\inst5|data\(3) & (!\inst5|data[2]~10\ & VCC))
-- \inst5|data[3]~12\ = CARRY((\inst5|data\(3) & !\inst5|data[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(3),
	datad => VCC,
	cin => \inst5|data[2]~10\,
	combout => \inst5|data[3]~11_combout\,
	cout => \inst5|data[3]~12\);

-- Location: FF_X6_Y25_N19
\inst5|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[3]~11_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(3));

-- Location: LCCOMB_X6_Y25_N20
\inst5|data[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|data[4]~13_combout\ = (\inst5|data\(4) & (!\inst5|data[3]~12\)) # (!\inst5|data\(4) & ((\inst5|data[3]~12\) # (GND)))
-- \inst5|data[4]~14\ = CARRY((!\inst5|data[3]~12\) # (!\inst5|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|data\(4),
	datad => VCC,
	cin => \inst5|data[3]~12\,
	combout => \inst5|data[4]~13_combout\,
	cout => \inst5|data[4]~14\);

-- Location: FF_X6_Y25_N21
\inst5|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[4]~13_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(4));

-- Location: FF_X6_Y25_N23
\inst5|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst5|data[5]~15_combout\,
	ena => \inst7|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|data\(5));

-- Location: LCCOMB_X6_Y25_N30
\inst7|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst5|data\(0) & (!\inst5|data\(3) & (!\inst5|data\(1) & !\inst5|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(0),
	datab => \inst5|data\(3),
	datac => \inst5|data\(1),
	datad => \inst5|data\(4),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y25_N26
\inst7|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~4_combout\ = (\inst5|data\(5) & (\inst5|data\(6) & (\inst7|Equal0~2_combout\ & \inst5|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(5),
	datab => \inst5|data\(6),
	datac => \inst7|Equal0~2_combout\,
	datad => \inst5|data\(2),
	combout => \inst7|Equal0~4_combout\);

-- Location: FF_X6_Y25_N7
\inst18|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	asdata => \inst7|Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|inst1~q\);

-- Location: LCCOMB_X6_Y25_N28
\inst7|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (\inst5|data\(5) & \inst5|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|data\(5),
	datad => \inst5|data\(6),
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y25_N4
\inst18|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|inst2~combout\ = (!\inst18|inst1~q\ & (\inst5|data\(2) & (\inst7|Equal0~2_combout\ & \inst7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1~q\,
	datab => \inst5|data\(2),
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Equal0~3_combout\,
	combout => \inst18|inst2~combout\);

-- Location: FF_X6_Y25_N5
\inst3|inst|data[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst18|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(47));

-- Location: LCCOMB_X5_Y25_N2
\inst3|inst1|Y[46]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[46]~46_combout\ = (\inst3|inst|data\(47) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(47),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[46]~46_combout\);

-- Location: FF_X5_Y25_N3
\inst3|inst|data[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[46]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(46));

-- Location: LCCOMB_X5_Y25_N16
\inst3|inst1|Y[45]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[45]~45_combout\ = (\inst3|inst|data\(46) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(46),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[45]~45_combout\);

-- Location: FF_X5_Y25_N17
\inst3|inst|data[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[45]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(45));

-- Location: LCCOMB_X5_Y25_N22
\inst3|inst1|Y[44]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[44]~44_combout\ = (\inst3|inst|data\(45) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(45),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[44]~44_combout\);

-- Location: FF_X5_Y25_N23
\inst3|inst|data[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[44]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(44));

-- Location: LCCOMB_X5_Y25_N20
\inst3|inst1|Y[43]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[43]~43_combout\ = (\inst3|inst|data\(44) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(44),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[43]~43_combout\);

-- Location: FF_X5_Y25_N21
\inst3|inst|data[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[43]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(43));

-- Location: LCCOMB_X5_Y25_N30
\inst3|inst1|Y[42]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[42]~42_combout\ = (\inst3|inst|data\(43) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(43),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[42]~42_combout\);

-- Location: FF_X5_Y25_N31
\inst3|inst|data[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[42]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(42));

-- Location: LCCOMB_X5_Y25_N12
\inst3|inst1|Y[41]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[41]~41_combout\ = (\inst3|inst|data\(42) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(42),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[41]~41_combout\);

-- Location: FF_X5_Y25_N13
\inst3|inst|data[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[41]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(41));

-- Location: LCCOMB_X5_Y25_N26
\inst3|inst1|Y[40]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[40]~40_combout\ = (\inst3|inst|data\(41) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(41),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[40]~40_combout\);

-- Location: FF_X5_Y25_N27
\inst3|inst|data[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[40]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(40));

-- Location: LCCOMB_X5_Y25_N0
\inst3|inst1|Y[39]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[39]~39_combout\ = (\inst3|inst|data\(40) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(40),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[39]~39_combout\);

-- Location: FF_X5_Y25_N1
\inst3|inst|data[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[39]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(39));

-- Location: LCCOMB_X5_Y25_N14
\inst3|inst1|Y[38]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[38]~38_combout\ = (\inst3|inst|data\(39) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(39),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[38]~38_combout\);

-- Location: FF_X5_Y25_N15
\inst3|inst|data[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[38]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(38));

-- Location: LCCOMB_X5_Y25_N8
\inst3|inst1|Y[37]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[37]~37_combout\ = (\inst3|inst|data\(38) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(38),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[37]~37_combout\);

-- Location: FF_X5_Y25_N9
\inst3|inst|data[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(37));

-- Location: LCCOMB_X5_Y25_N10
\inst3|inst1|Y[36]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[36]~36_combout\ = (\inst3|inst|data\(37) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(37),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[36]~36_combout\);

-- Location: FF_X5_Y25_N11
\inst3|inst|data[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[36]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(36));

-- Location: LCCOMB_X5_Y25_N4
\inst3|inst1|Y[35]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[35]~35_combout\ = (\inst3|inst|data\(36) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(36),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[35]~35_combout\);

-- Location: FF_X5_Y25_N5
\inst3|inst|data[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[35]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(35));

-- Location: LCCOMB_X5_Y25_N18
\inst3|inst1|Y[34]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[34]~34_combout\ = (\inst3|inst|data\(35) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(35),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[34]~34_combout\);

-- Location: FF_X5_Y25_N19
\inst3|inst|data[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[34]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(34));

-- Location: LCCOMB_X5_Y25_N28
\inst3|inst1|Y[33]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[33]~33_combout\ = (\inst3|inst|data\(34) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(34),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[33]~33_combout\);

-- Location: FF_X5_Y25_N29
\inst3|inst|data[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(33));

-- Location: LCCOMB_X5_Y25_N6
\inst3|inst1|Y[32]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[32]~32_combout\ = (\inst3|inst|data\(33) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(33),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[32]~32_combout\);

-- Location: FF_X5_Y25_N7
\inst3|inst|data[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[32]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(32));

-- Location: LCCOMB_X4_Y25_N22
\inst3|inst1|Y[31]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[31]~31_combout\ = (\inst3|inst|data\(32) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(32),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[31]~31_combout\);

-- Location: FF_X4_Y25_N23
\inst3|inst|data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(31));

-- Location: LCCOMB_X4_Y25_N28
\inst3|inst1|Y[30]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[30]~30_combout\ = (\inst3|inst|data\(31) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(31),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[30]~30_combout\);

-- Location: FF_X4_Y25_N29
\inst3|inst|data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst1|Y[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst|data\(30));

-- Location: LCCOMB_X4_Y25_N2
\inst3|inst1|Y[29]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[29]~29_combout\ = (\inst3|inst|data\(30) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(30),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[29]~29_combout\);

-- Location: FF_X4_Y25_N3
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

-- Location: LCCOMB_X4_Y25_N12
\inst3|inst1|Y[28]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[28]~28_combout\ = (\inst3|inst|data\(29) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(29),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[28]~28_combout\);

-- Location: FF_X4_Y25_N13
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

-- Location: LCCOMB_X4_Y25_N14
\inst3|inst1|Y[27]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[27]~27_combout\ = (\inst3|inst|data\(28) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(28),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[27]~27_combout\);

-- Location: FF_X4_Y25_N15
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

-- Location: LCCOMB_X4_Y25_N20
\inst3|inst1|Y[26]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[26]~26_combout\ = (\inst3|inst|data\(27) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(27),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[26]~26_combout\);

-- Location: FF_X4_Y25_N21
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

-- Location: LCCOMB_X4_Y25_N26
\inst3|inst1|Y[25]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[25]~25_combout\ = (\inst3|inst|data\(26) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(26),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[25]~25_combout\);

-- Location: FF_X4_Y25_N27
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

-- Location: LCCOMB_X4_Y25_N16
\inst3|inst1|Y[24]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[24]~24_combout\ = (\inst3|inst|data\(25) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(25),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[24]~24_combout\);

-- Location: FF_X4_Y25_N17
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

-- Location: LCCOMB_X4_Y25_N30
\inst3|inst1|Y[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[23]~23_combout\ = (\inst3|inst|data\(24) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(24),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[23]~23_combout\);

-- Location: FF_X4_Y25_N31
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

-- Location: LCCOMB_X4_Y25_N4
\inst3|inst1|Y[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[22]~22_combout\ = (\inst3|inst|data\(23) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(23),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[22]~22_combout\);

-- Location: FF_X4_Y25_N5
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

-- Location: LCCOMB_X4_Y25_N10
\inst3|inst1|Y[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[21]~21_combout\ = (\inst3|inst|data\(22) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(22),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[21]~21_combout\);

-- Location: FF_X4_Y25_N11
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

-- Location: LCCOMB_X4_Y25_N8
\inst3|inst1|Y[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[20]~20_combout\ = (\inst3|inst|data\(21) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(21),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[20]~20_combout\);

-- Location: FF_X4_Y25_N9
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

-- Location: LCCOMB_X4_Y25_N6
\inst3|inst1|Y[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[19]~19_combout\ = (\inst3|inst|data\(20) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|data\(20),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[19]~19_combout\);

-- Location: FF_X4_Y25_N7
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

-- Location: LCCOMB_X4_Y25_N0
\inst3|inst1|Y[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[18]~18_combout\ = (\inst3|inst|data\(19) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(19),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[18]~18_combout\);

-- Location: FF_X4_Y25_N1
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

-- Location: LCCOMB_X4_Y25_N18
\inst3|inst1|Y[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[17]~17_combout\ = (\inst3|inst|data\(18) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(18),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[17]~17_combout\);

-- Location: FF_X4_Y25_N19
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

-- Location: LCCOMB_X4_Y25_N24
\inst3|inst1|Y[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[16]~16_combout\ = (\inst3|inst|data\(17) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(17),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[16]~16_combout\);

-- Location: FF_X4_Y25_N25
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

-- Location: LCCOMB_X5_Y25_N24
\inst3|inst1|Y[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[15]~15_combout\ = (\inst3|inst|data\(16) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(16),
	datad => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[15]~15_combout\);

-- Location: FF_X5_Y25_N25
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

-- Location: LCCOMB_X6_Y25_N8
\inst3|inst1|Y[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[14]~14_combout\ = (\inst3|inst|data\(15) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(15),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[14]~14_combout\);

-- Location: FF_X6_Y25_N9
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

-- Location: LCCOMB_X7_Y25_N10
\inst3|inst1|Y[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[13]~13_combout\ = (!\inst18|inst2~combout\ & \inst3|inst|data\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(14),
	combout => \inst3|inst1|Y[13]~13_combout\);

-- Location: FF_X7_Y25_N11
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

-- Location: LCCOMB_X7_Y25_N24
\inst3|inst1|Y[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[12]~12_combout\ = (!\inst18|inst2~combout\ & \inst3|inst|data\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(13),
	combout => \inst3|inst1|Y[12]~12_combout\);

-- Location: FF_X7_Y25_N25
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

-- Location: LCCOMB_X7_Y25_N30
\inst3|inst1|Y[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[11]~11_combout\ = (!\inst18|inst2~combout\ & \inst3|inst|data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(12),
	combout => \inst3|inst1|Y[11]~11_combout\);

-- Location: FF_X7_Y25_N31
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

-- Location: LCCOMB_X7_Y25_N12
\inst3|inst1|Y[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[10]~10_combout\ = (\inst3|inst|data\(11) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(11),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[10]~10_combout\);

-- Location: FF_X7_Y25_N13
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

-- Location: LCCOMB_X7_Y25_N22
\inst3|inst1|Y[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[9]~9_combout\ = (!\inst18|inst2~combout\ & \inst3|inst|data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(10),
	combout => \inst3|inst1|Y[9]~9_combout\);

-- Location: FF_X7_Y25_N23
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

-- Location: LCCOMB_X7_Y25_N16
\inst3|inst1|Y[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[8]~8_combout\ = (\inst3|inst|data\(9) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|data\(9),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[8]~8_combout\);

-- Location: FF_X7_Y25_N17
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

-- Location: LCCOMB_X7_Y25_N14
\inst3|inst1|Y[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[7]~7_combout\ = (\inst18|inst2~combout\) # (\inst3|inst|data\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(8),
	combout => \inst3|inst1|Y[7]~7_combout\);

-- Location: FF_X7_Y25_N15
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

-- Location: LCCOMB_X7_Y25_N28
\inst3|inst1|Y[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[6]~6_combout\ = (\inst3|inst|data\(7) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(7),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[6]~6_combout\);

-- Location: FF_X7_Y25_N29
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

-- Location: LCCOMB_X7_Y25_N6
\inst3|inst1|Y[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[5]~5_combout\ = (!\inst18|inst2~combout\ & \inst3|inst|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(6),
	combout => \inst3|inst1|Y[5]~5_combout\);

-- Location: FF_X7_Y25_N7
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

-- Location: LCCOMB_X7_Y25_N8
\inst3|inst1|Y[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[4]~4_combout\ = (\inst18|inst2~combout\) # (\inst3|inst|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(5),
	combout => \inst3|inst1|Y[4]~4_combout\);

-- Location: FF_X7_Y25_N9
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

-- Location: LCCOMB_X7_Y25_N18
\inst3|inst1|Y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[3]~3_combout\ = (\inst3|inst|data\(4) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(4),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[3]~3_combout\);

-- Location: FF_X7_Y25_N19
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

-- Location: LCCOMB_X7_Y25_N4
\inst3|inst1|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[2]~2_combout\ = (\inst18|inst2~combout\) # (\inst3|inst|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(3),
	combout => \inst3|inst1|Y[2]~2_combout\);

-- Location: FF_X7_Y25_N5
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

-- Location: LCCOMB_X7_Y25_N20
\inst3|inst1|Y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[1]~1_combout\ = (\inst3|inst|data\(2) & !\inst18|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(2),
	datac => \inst18|inst2~combout\,
	combout => \inst3|inst1|Y[1]~1_combout\);

-- Location: FF_X7_Y25_N21
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

-- Location: LCCOMB_X7_Y25_N0
\inst3|inst1|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst1|Y[0]~0_combout\ = (\inst18|inst2~combout\) # (\inst3|inst|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst|data\(1),
	combout => \inst3|inst1|Y[0]~0_combout\);

-- Location: FF_X7_Y25_N1
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

-- Location: LCCOMB_X6_Y25_N6
\inst11|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Y[0]~0_combout\ = (\inst5|data\(6) & ((\inst5|data\(5)) # (\inst5|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|data\(5),
	datab => \inst5|data\(4),
	datad => \inst5|data\(6),
	combout => \inst11|Y[0]~0_combout\);

-- Location: LCCOMB_X3_Y25_N10
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

-- Location: LCCOMB_X3_Y25_N12
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

-- Location: LCCOMB_X3_Y25_N14
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

-- Location: FF_X3_Y25_N15
\inst3|inst9|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[2]~10_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(2));

-- Location: LCCOMB_X3_Y25_N16
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

-- Location: FF_X3_Y25_N17
\inst3|inst9|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[3]~12_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(3));

-- Location: LCCOMB_X3_Y25_N18
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

-- Location: FF_X3_Y25_N19
\inst3|inst9|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[4]~14_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(4));

-- Location: LCCOMB_X3_Y25_N20
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

-- Location: FF_X3_Y25_N21
\inst3|inst9|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[5]~16_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(5));

-- Location: LCCOMB_X3_Y25_N28
\inst3|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst6~combout\ = (\inst18|inst2~combout\) # ((!\inst3|inst10|Equal0~0_combout\ & (!\inst3|inst9|data\(4) & \inst3|inst9|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|Equal0~0_combout\,
	datab => \inst3|inst9|data\(4),
	datac => \inst18|inst2~combout\,
	datad => \inst3|inst9|data\(5),
	combout => \inst3|inst6~combout\);

-- Location: FF_X3_Y25_N11
\inst3|inst9|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[0]~6_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(0));

-- Location: FF_X3_Y25_N13
\inst3|inst9|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst9|data[1]~8_combout\,
	sclr => \inst3|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst9|data\(1));

-- Location: LCCOMB_X3_Y25_N4
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

-- Location: LCCOMB_X3_Y25_N26
\inst3|inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst8~0_combout\ = (\inst3|inst8~q\ & ((\inst3|inst10|Equal0~0_combout\) # ((\inst3|inst9|data\(4)) # (!\inst3|inst9|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst10|Equal0~0_combout\,
	datab => \inst3|inst9|data\(4),
	datac => \inst3|inst8~q\,
	datad => \inst3|inst9|data\(5),
	combout => \inst3|inst8~0_combout\);

-- Location: LCCOMB_X7_Y25_N2
\inst3|inst8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst8~1_combout\ = (\inst3|inst8~0_combout\) # ((\inst7|Equal0~4_combout\ & (!\inst18|inst1~q\ & !\inst3|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~4_combout\,
	datab => \inst18|inst1~q\,
	datac => \inst3|inst8~q\,
	datad => \inst3|inst8~0_combout\,
	combout => \inst3|inst8~1_combout\);

-- Location: FF_X7_Y25_N3
\inst3|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst3|inst8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst8~q\);

-- Location: LCCOMB_X6_Y25_N2
\inst11|Y[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Y[0]~1_combout\ = (\inst7|LessThan0~1_combout\ & ((!\inst3|inst8~q\))) # (!\inst7|LessThan0~1_combout\ & (\inst11|Y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LessThan0~1_combout\,
	datac => \inst11|Y[0]~0_combout\,
	datad => \inst3|inst8~q\,
	combout => \inst11|Y[0]~1_combout\);

-- Location: LCCOMB_X11_Y26_N0
\inst2|data[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[0]~93_combout\ = \inst2|data\(0) $ (((\inst3|inst|data\(0) & \inst3|inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(0),
	datac => \inst2|data\(0),
	datad => \inst3|inst8~q\,
	combout => \inst2|data[0]~93_combout\);

-- Location: FF_X11_Y26_N1
\inst2|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(0));

-- Location: LCCOMB_X11_Y26_N2
\inst2|data[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[1]~31_combout\ = (\inst2|data\(0) & (\inst2|data\(1) $ (VCC))) # (!\inst2|data\(0) & (\inst2|data\(1) & VCC))
-- \inst2|data[1]~32\ = CARRY((\inst2|data\(0) & \inst2|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst2|data\(1),
	datad => VCC,
	combout => \inst2|data[1]~31_combout\,
	cout => \inst2|data[1]~32\);

-- Location: LCCOMB_X7_Y25_N26
inst20 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (\inst3|inst|data\(0) & \inst3|inst8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|data\(0),
	datad => \inst3|inst8~q\,
	combout => \inst20~combout\);

-- Location: FF_X11_Y26_N3
\inst2|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[1]~31_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(1));

-- Location: LCCOMB_X11_Y26_N4
\inst2|data[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[2]~33_combout\ = (\inst2|data\(2) & (!\inst2|data[1]~32\)) # (!\inst2|data\(2) & ((\inst2|data[1]~32\) # (GND)))
-- \inst2|data[2]~34\ = CARRY((!\inst2|data[1]~32\) # (!\inst2|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(2),
	datad => VCC,
	cin => \inst2|data[1]~32\,
	combout => \inst2|data[2]~33_combout\,
	cout => \inst2|data[2]~34\);

-- Location: FF_X11_Y26_N5
\inst2|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[2]~33_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(2));

-- Location: LCCOMB_X11_Y26_N6
\inst2|data[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[3]~35_combout\ = (\inst2|data\(3) & (\inst2|data[2]~34\ $ (GND))) # (!\inst2|data\(3) & (!\inst2|data[2]~34\ & VCC))
-- \inst2|data[3]~36\ = CARRY((\inst2|data\(3) & !\inst2|data[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(3),
	datad => VCC,
	cin => \inst2|data[2]~34\,
	combout => \inst2|data[3]~35_combout\,
	cout => \inst2|data[3]~36\);

-- Location: FF_X11_Y26_N7
\inst2|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[3]~35_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(3));

-- Location: LCCOMB_X11_Y26_N8
\inst2|data[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[4]~37_combout\ = (\inst2|data\(4) & (!\inst2|data[3]~36\)) # (!\inst2|data\(4) & ((\inst2|data[3]~36\) # (GND)))
-- \inst2|data[4]~38\ = CARRY((!\inst2|data[3]~36\) # (!\inst2|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(4),
	datad => VCC,
	cin => \inst2|data[3]~36\,
	combout => \inst2|data[4]~37_combout\,
	cout => \inst2|data[4]~38\);

-- Location: FF_X11_Y26_N9
\inst2|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[4]~37_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(4));

-- Location: LCCOMB_X11_Y26_N10
\inst2|data[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[5]~39_combout\ = (\inst2|data\(5) & (\inst2|data[4]~38\ $ (GND))) # (!\inst2|data\(5) & (!\inst2|data[4]~38\ & VCC))
-- \inst2|data[5]~40\ = CARRY((\inst2|data\(5) & !\inst2|data[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(5),
	datad => VCC,
	cin => \inst2|data[4]~38\,
	combout => \inst2|data[5]~39_combout\,
	cout => \inst2|data[5]~40\);

-- Location: FF_X11_Y26_N11
\inst2|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[5]~39_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(5));

-- Location: LCCOMB_X11_Y26_N12
\inst2|data[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[6]~41_combout\ = (\inst2|data\(6) & (!\inst2|data[5]~40\)) # (!\inst2|data\(6) & ((\inst2|data[5]~40\) # (GND)))
-- \inst2|data[6]~42\ = CARRY((!\inst2|data[5]~40\) # (!\inst2|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(6),
	datad => VCC,
	cin => \inst2|data[5]~40\,
	combout => \inst2|data[6]~41_combout\,
	cout => \inst2|data[6]~42\);

-- Location: FF_X11_Y26_N13
\inst2|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[6]~41_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(6));

-- Location: LCCOMB_X11_Y26_N14
\inst2|data[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[7]~43_combout\ = (\inst2|data\(7) & (\inst2|data[6]~42\ $ (GND))) # (!\inst2|data\(7) & (!\inst2|data[6]~42\ & VCC))
-- \inst2|data[7]~44\ = CARRY((\inst2|data\(7) & !\inst2|data[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(7),
	datad => VCC,
	cin => \inst2|data[6]~42\,
	combout => \inst2|data[7]~43_combout\,
	cout => \inst2|data[7]~44\);

-- Location: FF_X11_Y26_N15
\inst2|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[7]~43_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(7));

-- Location: LCCOMB_X11_Y26_N16
\inst2|data[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[8]~45_combout\ = (\inst2|data\(8) & (!\inst2|data[7]~44\)) # (!\inst2|data\(8) & ((\inst2|data[7]~44\) # (GND)))
-- \inst2|data[8]~46\ = CARRY((!\inst2|data[7]~44\) # (!\inst2|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(8),
	datad => VCC,
	cin => \inst2|data[7]~44\,
	combout => \inst2|data[8]~45_combout\,
	cout => \inst2|data[8]~46\);

-- Location: FF_X11_Y26_N17
\inst2|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[8]~45_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(8));

-- Location: LCCOMB_X11_Y26_N18
\inst2|data[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[9]~47_combout\ = (\inst2|data\(9) & (\inst2|data[8]~46\ $ (GND))) # (!\inst2|data\(9) & (!\inst2|data[8]~46\ & VCC))
-- \inst2|data[9]~48\ = CARRY((\inst2|data\(9) & !\inst2|data[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(9),
	datad => VCC,
	cin => \inst2|data[8]~46\,
	combout => \inst2|data[9]~47_combout\,
	cout => \inst2|data[9]~48\);

-- Location: FF_X11_Y26_N19
\inst2|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[9]~47_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(9));

-- Location: LCCOMB_X11_Y26_N20
\inst2|data[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[10]~49_combout\ = (\inst2|data\(10) & (!\inst2|data[9]~48\)) # (!\inst2|data\(10) & ((\inst2|data[9]~48\) # (GND)))
-- \inst2|data[10]~50\ = CARRY((!\inst2|data[9]~48\) # (!\inst2|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(10),
	datad => VCC,
	cin => \inst2|data[9]~48\,
	combout => \inst2|data[10]~49_combout\,
	cout => \inst2|data[10]~50\);

-- Location: FF_X11_Y26_N21
\inst2|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[10]~49_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(10));

-- Location: LCCOMB_X11_Y26_N22
\inst2|data[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[11]~51_combout\ = (\inst2|data\(11) & (\inst2|data[10]~50\ $ (GND))) # (!\inst2|data\(11) & (!\inst2|data[10]~50\ & VCC))
-- \inst2|data[11]~52\ = CARRY((\inst2|data\(11) & !\inst2|data[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(11),
	datad => VCC,
	cin => \inst2|data[10]~50\,
	combout => \inst2|data[11]~51_combout\,
	cout => \inst2|data[11]~52\);

-- Location: FF_X11_Y26_N23
\inst2|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[11]~51_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(11));

-- Location: LCCOMB_X11_Y26_N24
\inst2|data[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[12]~53_combout\ = (\inst2|data\(12) & (!\inst2|data[11]~52\)) # (!\inst2|data\(12) & ((\inst2|data[11]~52\) # (GND)))
-- \inst2|data[12]~54\ = CARRY((!\inst2|data[11]~52\) # (!\inst2|data\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(12),
	datad => VCC,
	cin => \inst2|data[11]~52\,
	combout => \inst2|data[12]~53_combout\,
	cout => \inst2|data[12]~54\);

-- Location: FF_X11_Y26_N25
\inst2|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[12]~53_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(12));

-- Location: LCCOMB_X11_Y26_N26
\inst2|data[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[13]~55_combout\ = (\inst2|data\(13) & (\inst2|data[12]~54\ $ (GND))) # (!\inst2|data\(13) & (!\inst2|data[12]~54\ & VCC))
-- \inst2|data[13]~56\ = CARRY((\inst2|data\(13) & !\inst2|data[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(13),
	datad => VCC,
	cin => \inst2|data[12]~54\,
	combout => \inst2|data[13]~55_combout\,
	cout => \inst2|data[13]~56\);

-- Location: FF_X11_Y26_N27
\inst2|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[13]~55_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(13));

-- Location: LCCOMB_X11_Y26_N28
\inst2|data[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[14]~57_combout\ = (\inst2|data\(14) & (!\inst2|data[13]~56\)) # (!\inst2|data\(14) & ((\inst2|data[13]~56\) # (GND)))
-- \inst2|data[14]~58\ = CARRY((!\inst2|data[13]~56\) # (!\inst2|data\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(14),
	datad => VCC,
	cin => \inst2|data[13]~56\,
	combout => \inst2|data[14]~57_combout\,
	cout => \inst2|data[14]~58\);

-- Location: FF_X11_Y26_N29
\inst2|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[14]~57_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(14));

-- Location: LCCOMB_X11_Y26_N30
\inst2|data[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[15]~59_combout\ = (\inst2|data\(15) & (\inst2|data[14]~58\ $ (GND))) # (!\inst2|data\(15) & (!\inst2|data[14]~58\ & VCC))
-- \inst2|data[15]~60\ = CARRY((\inst2|data\(15) & !\inst2|data[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(15),
	datad => VCC,
	cin => \inst2|data[14]~58\,
	combout => \inst2|data[15]~59_combout\,
	cout => \inst2|data[15]~60\);

-- Location: FF_X11_Y26_N31
\inst2|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[15]~59_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(15));

-- Location: LCCOMB_X11_Y25_N0
\inst2|data[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[16]~61_combout\ = (\inst2|data\(16) & (!\inst2|data[15]~60\)) # (!\inst2|data\(16) & ((\inst2|data[15]~60\) # (GND)))
-- \inst2|data[16]~62\ = CARRY((!\inst2|data[15]~60\) # (!\inst2|data\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(16),
	datad => VCC,
	cin => \inst2|data[15]~60\,
	combout => \inst2|data[16]~61_combout\,
	cout => \inst2|data[16]~62\);

-- Location: FF_X11_Y25_N1
\inst2|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[16]~61_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(16));

-- Location: LCCOMB_X11_Y25_N2
\inst2|data[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[17]~63_combout\ = (\inst2|data\(17) & (\inst2|data[16]~62\ $ (GND))) # (!\inst2|data\(17) & (!\inst2|data[16]~62\ & VCC))
-- \inst2|data[17]~64\ = CARRY((\inst2|data\(17) & !\inst2|data[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(17),
	datad => VCC,
	cin => \inst2|data[16]~62\,
	combout => \inst2|data[17]~63_combout\,
	cout => \inst2|data[17]~64\);

-- Location: FF_X11_Y25_N3
\inst2|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[17]~63_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(17));

-- Location: LCCOMB_X11_Y25_N4
\inst2|data[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[18]~65_combout\ = (\inst2|data\(18) & (!\inst2|data[17]~64\)) # (!\inst2|data\(18) & ((\inst2|data[17]~64\) # (GND)))
-- \inst2|data[18]~66\ = CARRY((!\inst2|data[17]~64\) # (!\inst2|data\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(18),
	datad => VCC,
	cin => \inst2|data[17]~64\,
	combout => \inst2|data[18]~65_combout\,
	cout => \inst2|data[18]~66\);

-- Location: FF_X11_Y25_N5
\inst2|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[18]~65_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(18));

-- Location: LCCOMB_X11_Y25_N6
\inst2|data[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[19]~67_combout\ = (\inst2|data\(19) & (\inst2|data[18]~66\ $ (GND))) # (!\inst2|data\(19) & (!\inst2|data[18]~66\ & VCC))
-- \inst2|data[19]~68\ = CARRY((\inst2|data\(19) & !\inst2|data[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(19),
	datad => VCC,
	cin => \inst2|data[18]~66\,
	combout => \inst2|data[19]~67_combout\,
	cout => \inst2|data[19]~68\);

-- Location: FF_X11_Y25_N7
\inst2|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[19]~67_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(19));

-- Location: LCCOMB_X11_Y25_N8
\inst2|data[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[20]~69_combout\ = (\inst2|data\(20) & (!\inst2|data[19]~68\)) # (!\inst2|data\(20) & ((\inst2|data[19]~68\) # (GND)))
-- \inst2|data[20]~70\ = CARRY((!\inst2|data[19]~68\) # (!\inst2|data\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(20),
	datad => VCC,
	cin => \inst2|data[19]~68\,
	combout => \inst2|data[20]~69_combout\,
	cout => \inst2|data[20]~70\);

-- Location: FF_X11_Y25_N9
\inst2|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[20]~69_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(20));

-- Location: LCCOMB_X11_Y25_N10
\inst2|data[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[21]~71_combout\ = (\inst2|data\(21) & (\inst2|data[20]~70\ $ (GND))) # (!\inst2|data\(21) & (!\inst2|data[20]~70\ & VCC))
-- \inst2|data[21]~72\ = CARRY((\inst2|data\(21) & !\inst2|data[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(21),
	datad => VCC,
	cin => \inst2|data[20]~70\,
	combout => \inst2|data[21]~71_combout\,
	cout => \inst2|data[21]~72\);

-- Location: FF_X11_Y25_N11
\inst2|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[21]~71_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(21));

-- Location: LCCOMB_X11_Y25_N12
\inst2|data[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[22]~73_combout\ = (\inst2|data\(22) & (!\inst2|data[21]~72\)) # (!\inst2|data\(22) & ((\inst2|data[21]~72\) # (GND)))
-- \inst2|data[22]~74\ = CARRY((!\inst2|data[21]~72\) # (!\inst2|data\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(22),
	datad => VCC,
	cin => \inst2|data[21]~72\,
	combout => \inst2|data[22]~73_combout\,
	cout => \inst2|data[22]~74\);

-- Location: FF_X11_Y25_N13
\inst2|data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[22]~73_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(22));

-- Location: LCCOMB_X11_Y25_N14
\inst2|data[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[23]~75_combout\ = (\inst2|data\(23) & (\inst2|data[22]~74\ $ (GND))) # (!\inst2|data\(23) & (!\inst2|data[22]~74\ & VCC))
-- \inst2|data[23]~76\ = CARRY((\inst2|data\(23) & !\inst2|data[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(23),
	datad => VCC,
	cin => \inst2|data[22]~74\,
	combout => \inst2|data[23]~75_combout\,
	cout => \inst2|data[23]~76\);

-- Location: FF_X11_Y25_N15
\inst2|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[23]~75_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(23));

-- Location: LCCOMB_X11_Y25_N16
\inst2|data[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[24]~77_combout\ = (\inst2|data\(24) & (!\inst2|data[23]~76\)) # (!\inst2|data\(24) & ((\inst2|data[23]~76\) # (GND)))
-- \inst2|data[24]~78\ = CARRY((!\inst2|data[23]~76\) # (!\inst2|data\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(24),
	datad => VCC,
	cin => \inst2|data[23]~76\,
	combout => \inst2|data[24]~77_combout\,
	cout => \inst2|data[24]~78\);

-- Location: FF_X11_Y25_N17
\inst2|data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[24]~77_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(24));

-- Location: LCCOMB_X11_Y25_N18
\inst2|data[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[25]~79_combout\ = (\inst2|data\(25) & (\inst2|data[24]~78\ $ (GND))) # (!\inst2|data\(25) & (!\inst2|data[24]~78\ & VCC))
-- \inst2|data[25]~80\ = CARRY((\inst2|data\(25) & !\inst2|data[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(25),
	datad => VCC,
	cin => \inst2|data[24]~78\,
	combout => \inst2|data[25]~79_combout\,
	cout => \inst2|data[25]~80\);

-- Location: FF_X11_Y25_N19
\inst2|data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[25]~79_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(25));

-- Location: LCCOMB_X11_Y25_N20
\inst2|data[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[26]~81_combout\ = (\inst2|data\(26) & (!\inst2|data[25]~80\)) # (!\inst2|data\(26) & ((\inst2|data[25]~80\) # (GND)))
-- \inst2|data[26]~82\ = CARRY((!\inst2|data[25]~80\) # (!\inst2|data\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(26),
	datad => VCC,
	cin => \inst2|data[25]~80\,
	combout => \inst2|data[26]~81_combout\,
	cout => \inst2|data[26]~82\);

-- Location: FF_X11_Y25_N21
\inst2|data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[26]~81_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(26));

-- Location: LCCOMB_X11_Y25_N22
\inst2|data[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[27]~83_combout\ = (\inst2|data\(27) & (\inst2|data[26]~82\ $ (GND))) # (!\inst2|data\(27) & (!\inst2|data[26]~82\ & VCC))
-- \inst2|data[27]~84\ = CARRY((\inst2|data\(27) & !\inst2|data[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(27),
	datad => VCC,
	cin => \inst2|data[26]~82\,
	combout => \inst2|data[27]~83_combout\,
	cout => \inst2|data[27]~84\);

-- Location: FF_X11_Y25_N23
\inst2|data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[27]~83_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(27));

-- Location: LCCOMB_X11_Y25_N24
\inst2|data[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[28]~85_combout\ = (\inst2|data\(28) & (!\inst2|data[27]~84\)) # (!\inst2|data\(28) & ((\inst2|data[27]~84\) # (GND)))
-- \inst2|data[28]~86\ = CARRY((!\inst2|data[27]~84\) # (!\inst2|data\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(28),
	datad => VCC,
	cin => \inst2|data[27]~84\,
	combout => \inst2|data[28]~85_combout\,
	cout => \inst2|data[28]~86\);

-- Location: FF_X11_Y25_N25
\inst2|data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[28]~85_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(28));

-- Location: IOIBUF_X0_Y23_N15
\BUTTON2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON2,
	o => \BUTTON2~input_o\);

-- Location: LCCOMB_X1_Y23_N6
\inst17|inst1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst1~0_combout\ = !\BUTTON2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON2~input_o\,
	combout => \inst17|inst1~0_combout\);

-- Location: FF_X1_Y23_N7
\inst17|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	d => \inst17|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst1~q\);

-- Location: LCCOMB_X1_Y23_N8
\inst17|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|inst2~combout\ = LCELL((!\BUTTON2~input_o\ & !\inst17|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON2~input_o\,
	datad => \inst17|inst1~q\,
	combout => \inst17|inst2~combout\);

-- Location: LCCOMB_X1_Y23_N18
\inst22|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst~0_combout\ = \inst17|inst2~combout\ $ (\inst22|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst2~combout\,
	datad => \inst22|inst~q\,
	combout => \inst22|inst~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\inst22|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst~feeder_combout\ = \inst22|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst22|inst~0_combout\,
	combout => \inst22|inst~feeder_combout\);

-- Location: FF_X1_Y23_N13
\inst22|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst2~combout\,
	d => \inst22|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst~q\);

-- Location: LCCOMB_X12_Y26_N4
\inst22|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst13~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(28))) # (!\inst22|inst~q\ & ((\inst2|data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(28),
	datab => \inst2|data\(12),
	datac => \inst22|inst~q\,
	combout => \inst22|inst13~0_combout\);

-- Location: LCCOMB_X11_Y25_N26
\inst2|data[29]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[29]~87_combout\ = (\inst2|data\(29) & (\inst2|data[28]~86\ $ (GND))) # (!\inst2|data\(29) & (!\inst2|data[28]~86\ & VCC))
-- \inst2|data[29]~88\ = CARRY((\inst2|data\(29) & !\inst2|data[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(29),
	datad => VCC,
	cin => \inst2|data[28]~86\,
	combout => \inst2|data[29]~87_combout\,
	cout => \inst2|data[29]~88\);

-- Location: FF_X11_Y25_N27
\inst2|data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[29]~87_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(29));

-- Location: LCCOMB_X11_Y25_N28
\inst2|data[30]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[30]~89_combout\ = (\inst2|data\(30) & (!\inst2|data[29]~88\)) # (!\inst2|data\(30) & ((\inst2|data[29]~88\) # (GND)))
-- \inst2|data[30]~90\ = CARRY((!\inst2|data[29]~88\) # (!\inst2|data\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(30),
	datad => VCC,
	cin => \inst2|data[29]~88\,
	combout => \inst2|data[30]~89_combout\,
	cout => \inst2|data[30]~90\);

-- Location: FF_X11_Y25_N29
\inst2|data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[30]~89_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(30));

-- Location: LCCOMB_X12_Y26_N24
\inst22|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst7~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(30))) # (!\inst22|inst~q\ & ((\inst2|data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(30),
	datac => \inst22|inst~q\,
	datad => \inst2|data\(14),
	combout => \inst22|inst7~0_combout\);

-- Location: LCCOMB_X12_Y26_N22
\inst22|inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst10~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(29)))) # (!\inst22|inst~q\ & (\inst2|data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst~q\,
	datac => \inst2|data\(13),
	datad => \inst2|data\(29),
	combout => \inst22|inst10~0_combout\);

-- Location: LCCOMB_X11_Y25_N30
\inst2|data[31]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|data[31]~91_combout\ = !\inst2|data[30]~90\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|data[30]~90\,
	combout => \inst2|data[31]~91_combout\);

-- Location: FF_X11_Y25_N31
\inst2|data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst123|inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]~clkctrl_outclk\,
	d => \inst2|data[31]~91_combout\,
	ena => \inst20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|data\(31));

-- Location: LCCOMB_X15_Y26_N24
\inst22|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst3~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(31))) # (!\inst22|inst~q\ & ((\inst2|data\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|data\(31),
	datac => \inst22|inst~q\,
	datad => \inst2|data\(15),
	combout => \inst22|inst3~0_combout\);

-- Location: LCCOMB_X16_Y26_N8
\inst22|inst95|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux0~0_combout\ = (\inst22|inst7~0_combout\ & (!\inst22|inst10~0_combout\ & (\inst22|inst13~0_combout\ $ (!\inst22|inst3~0_combout\)))) # (!\inst22|inst7~0_combout\ & (\inst22|inst13~0_combout\ & (\inst22|inst10~0_combout\ $ 
-- (!\inst22|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y26_N18
\inst22|inst95|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux1~0_combout\ = (\inst22|inst10~0_combout\ & ((\inst22|inst13~0_combout\ & ((\inst22|inst3~0_combout\))) # (!\inst22|inst13~0_combout\ & (\inst22|inst7~0_combout\)))) # (!\inst22|inst10~0_combout\ & (\inst22|inst7~0_combout\ & 
-- (\inst22|inst13~0_combout\ $ (\inst22|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y26_N16
\inst22|inst95|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux2~0_combout\ = (\inst22|inst7~0_combout\ & (\inst22|inst3~0_combout\ & ((\inst22|inst10~0_combout\) # (!\inst22|inst13~0_combout\)))) # (!\inst22|inst7~0_combout\ & (!\inst22|inst13~0_combout\ & (\inst22|inst10~0_combout\ & 
-- !\inst22|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y26_N14
\inst22|inst95|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux3~0_combout\ = (\inst22|inst10~0_combout\ & ((\inst22|inst13~0_combout\ & (\inst22|inst7~0_combout\)) # (!\inst22|inst13~0_combout\ & (!\inst22|inst7~0_combout\ & \inst22|inst3~0_combout\)))) # (!\inst22|inst10~0_combout\ & 
-- (!\inst22|inst3~0_combout\ & (\inst22|inst13~0_combout\ $ (\inst22|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y26_N12
\inst22|inst95|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux4~0_combout\ = (\inst22|inst10~0_combout\ & (\inst22|inst13~0_combout\ & ((!\inst22|inst3~0_combout\)))) # (!\inst22|inst10~0_combout\ & ((\inst22|inst7~0_combout\ & ((!\inst22|inst3~0_combout\))) # (!\inst22|inst7~0_combout\ & 
-- (\inst22|inst13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y26_N6
\inst22|inst95|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux5~0_combout\ = (\inst22|inst13~0_combout\ & (\inst22|inst3~0_combout\ $ (((\inst22|inst10~0_combout\) # (!\inst22|inst7~0_combout\))))) # (!\inst22|inst13~0_combout\ & (!\inst22|inst7~0_combout\ & (\inst22|inst10~0_combout\ & 
-- !\inst22|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y26_N20
\inst22|inst95|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst95|Mux6~0_combout\ = (\inst22|inst13~0_combout\ & ((\inst22|inst3~0_combout\) # (\inst22|inst7~0_combout\ $ (\inst22|inst10~0_combout\)))) # (!\inst22|inst13~0_combout\ & ((\inst22|inst10~0_combout\) # (\inst22|inst7~0_combout\ $ 
-- (\inst22|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst13~0_combout\,
	datab => \inst22|inst7~0_combout\,
	datac => \inst22|inst10~0_combout\,
	datad => \inst22|inst3~0_combout\,
	combout => \inst22|inst95|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y26_N20
\inst22|inst19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst19~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(26)))) # (!\inst22|inst~q\ & (\inst2|data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst~q\,
	datac => \inst2|data\(10),
	datad => \inst2|data\(26),
	combout => \inst22|inst19~0_combout\);

-- Location: LCCOMB_X12_Y26_N6
\inst22|inst16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst16~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(27))) # (!\inst22|inst~q\ & ((\inst2|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst~q\,
	datac => \inst2|data\(27),
	datad => \inst2|data\(11),
	combout => \inst22|inst16~0_combout\);

-- Location: LCCOMB_X12_Y26_N10
\inst22|inst25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst25~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(24)))) # (!\inst22|inst~q\ & (\inst2|data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(8),
	datac => \inst22|inst~q\,
	datad => \inst2|data\(24),
	combout => \inst22|inst25~0_combout\);

-- Location: LCCOMB_X12_Y26_N20
\inst22|inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst22~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(25))) # (!\inst22|inst~q\ & ((\inst2|data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst~q\,
	datac => \inst2|data\(25),
	datad => \inst2|data\(9),
	combout => \inst22|inst22~0_combout\);

-- Location: LCCOMB_X27_Y26_N4
\inst22|inst105|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux0~0_combout\ = (\inst22|inst19~0_combout\ & (!\inst22|inst22~0_combout\ & (\inst22|inst16~0_combout\ $ (!\inst22|inst25~0_combout\)))) # (!\inst22|inst19~0_combout\ & (\inst22|inst25~0_combout\ & (\inst22|inst16~0_combout\ $ 
-- (!\inst22|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y26_N6
\inst22|inst105|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux1~0_combout\ = (\inst22|inst16~0_combout\ & ((\inst22|inst25~0_combout\ & ((\inst22|inst22~0_combout\))) # (!\inst22|inst25~0_combout\ & (\inst22|inst19~0_combout\)))) # (!\inst22|inst16~0_combout\ & (\inst22|inst19~0_combout\ & 
-- (\inst22|inst25~0_combout\ $ (\inst22|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y26_N8
\inst22|inst105|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux2~0_combout\ = (\inst22|inst19~0_combout\ & (\inst22|inst16~0_combout\ & ((\inst22|inst22~0_combout\) # (!\inst22|inst25~0_combout\)))) # (!\inst22|inst19~0_combout\ & (!\inst22|inst16~0_combout\ & (!\inst22|inst25~0_combout\ & 
-- \inst22|inst22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\inst22|inst105|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux3~0_combout\ = (\inst22|inst22~0_combout\ & ((\inst22|inst19~0_combout\ & ((\inst22|inst25~0_combout\))) # (!\inst22|inst19~0_combout\ & (\inst22|inst16~0_combout\ & !\inst22|inst25~0_combout\)))) # (!\inst22|inst22~0_combout\ & 
-- (!\inst22|inst16~0_combout\ & (\inst22|inst19~0_combout\ $ (\inst22|inst25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y26_N12
\inst22|inst105|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux4~0_combout\ = (\inst22|inst22~0_combout\ & (((!\inst22|inst16~0_combout\ & \inst22|inst25~0_combout\)))) # (!\inst22|inst22~0_combout\ & ((\inst22|inst19~0_combout\ & (!\inst22|inst16~0_combout\)) # (!\inst22|inst19~0_combout\ & 
-- ((\inst22|inst25~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\inst22|inst105|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux5~0_combout\ = (\inst22|inst19~0_combout\ & (\inst22|inst25~0_combout\ & (\inst22|inst16~0_combout\ $ (\inst22|inst22~0_combout\)))) # (!\inst22|inst19~0_combout\ & (!\inst22|inst16~0_combout\ & ((\inst22|inst25~0_combout\) # 
-- (\inst22|inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y26_N28
\inst22|inst105|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst105|Mux6~0_combout\ = (\inst22|inst25~0_combout\ & ((\inst22|inst16~0_combout\) # (\inst22|inst19~0_combout\ $ (\inst22|inst22~0_combout\)))) # (!\inst22|inst25~0_combout\ & ((\inst22|inst22~0_combout\) # (\inst22|inst19~0_combout\ $ 
-- (\inst22|inst16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst19~0_combout\,
	datab => \inst22|inst16~0_combout\,
	datac => \inst22|inst25~0_combout\,
	datad => \inst22|inst22~0_combout\,
	combout => \inst22|inst105|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y26_N26
\inst22|inst31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst31~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(22)))) # (!\inst22|inst~q\ & (\inst2|data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(6),
	datac => \inst22|inst~q\,
	datad => \inst2|data\(22),
	combout => \inst22|inst31~0_combout\);

-- Location: LCCOMB_X12_Y25_N20
\inst22|inst37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst37~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(20)))) # (!\inst22|inst~q\ & (\inst2|data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(4),
	datab => \inst22|inst~q\,
	datad => \inst2|data\(20),
	combout => \inst22|inst37~0_combout\);

-- Location: LCCOMB_X12_Y26_N12
\inst22|inst34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst34~0_combout\ = (\inst22|inst~q\ & (\inst2|data\(21))) # (!\inst22|inst~q\ & ((\inst2|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(21),
	datac => \inst22|inst~q\,
	datad => \inst2|data\(5),
	combout => \inst22|inst34~0_combout\);

-- Location: LCCOMB_X14_Y26_N8
\inst22|inst28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst28~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(23)))) # (!\inst22|inst~q\ & (\inst2|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst~q\,
	datab => \inst2|data\(7),
	datad => \inst2|data\(23),
	combout => \inst22|inst28~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\inst22|inst110|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux0~0_combout\ = (\inst22|inst31~0_combout\ & (!\inst22|inst34~0_combout\ & (\inst22|inst37~0_combout\ $ (!\inst22|inst28~0_combout\)))) # (!\inst22|inst31~0_combout\ & (\inst22|inst37~0_combout\ & (\inst22|inst34~0_combout\ $ 
-- (!\inst22|inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\inst22|inst110|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux1~0_combout\ = (\inst22|inst34~0_combout\ & ((\inst22|inst37~0_combout\ & ((\inst22|inst28~0_combout\))) # (!\inst22|inst37~0_combout\ & (\inst22|inst31~0_combout\)))) # (!\inst22|inst34~0_combout\ & (\inst22|inst31~0_combout\ & 
-- (\inst22|inst37~0_combout\ $ (\inst22|inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\inst22|inst110|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux2~0_combout\ = (\inst22|inst31~0_combout\ & (\inst22|inst28~0_combout\ & ((\inst22|inst34~0_combout\) # (!\inst22|inst37~0_combout\)))) # (!\inst22|inst31~0_combout\ & (!\inst22|inst37~0_combout\ & (\inst22|inst34~0_combout\ & 
-- !\inst22|inst28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst22|inst110|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux3~0_combout\ = (\inst22|inst34~0_combout\ & ((\inst22|inst31~0_combout\ & (\inst22|inst37~0_combout\)) # (!\inst22|inst31~0_combout\ & (!\inst22|inst37~0_combout\ & \inst22|inst28~0_combout\)))) # (!\inst22|inst34~0_combout\ & 
-- (!\inst22|inst28~0_combout\ & (\inst22|inst31~0_combout\ $ (\inst22|inst37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst22|inst110|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux4~0_combout\ = (\inst22|inst34~0_combout\ & (((\inst22|inst37~0_combout\ & !\inst22|inst28~0_combout\)))) # (!\inst22|inst34~0_combout\ & ((\inst22|inst31~0_combout\ & ((!\inst22|inst28~0_combout\))) # (!\inst22|inst31~0_combout\ & 
-- (\inst22|inst37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\inst22|inst110|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux5~0_combout\ = (\inst22|inst31~0_combout\ & (\inst22|inst37~0_combout\ & (\inst22|inst34~0_combout\ $ (\inst22|inst28~0_combout\)))) # (!\inst22|inst31~0_combout\ & (!\inst22|inst28~0_combout\ & ((\inst22|inst37~0_combout\) # 
-- (\inst22|inst34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\inst22|inst110|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst110|Mux6~0_combout\ = (\inst22|inst37~0_combout\ & ((\inst22|inst28~0_combout\) # (\inst22|inst31~0_combout\ $ (\inst22|inst34~0_combout\)))) # (!\inst22|inst37~0_combout\ & ((\inst22|inst34~0_combout\) # (\inst22|inst31~0_combout\ $ 
-- (\inst22|inst28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst31~0_combout\,
	datab => \inst22|inst37~0_combout\,
	datac => \inst22|inst34~0_combout\,
	datad => \inst22|inst28~0_combout\,
	combout => \inst22|inst110|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y23_N4
\inst22|inst49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst49~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(16)))) # (!\inst22|inst~q\ & (\inst2|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|data\(0),
	datab => \inst22|inst~q\,
	datad => \inst2|data\(16),
	combout => \inst22|inst49~0_combout\);

-- Location: LCCOMB_X10_Y25_N4
\inst22|inst43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst43~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(18)))) # (!\inst22|inst~q\ & (\inst2|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst~q\,
	datac => \inst2|data\(2),
	datad => \inst2|data\(18),
	combout => \inst22|inst43~0_combout\);

-- Location: LCCOMB_X11_Y23_N6
\inst22|inst46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst46~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(17)))) # (!\inst22|inst~q\ & (\inst2|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst~q\,
	datac => \inst2|data\(1),
	datad => \inst2|data\(17),
	combout => \inst22|inst46~0_combout\);

-- Location: LCCOMB_X10_Y25_N18
\inst22|inst40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst40~0_combout\ = (\inst22|inst~q\ & ((\inst2|data\(19)))) # (!\inst22|inst~q\ & (\inst2|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst~q\,
	datac => \inst2|data\(3),
	datad => \inst2|data\(19),
	combout => \inst22|inst40~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\inst22|inst113|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux0~0_combout\ = (\inst22|inst43~0_combout\ & (!\inst22|inst46~0_combout\ & (\inst22|inst49~0_combout\ $ (!\inst22|inst40~0_combout\)))) # (!\inst22|inst43~0_combout\ & (\inst22|inst49~0_combout\ & (\inst22|inst46~0_combout\ $ 
-- (!\inst22|inst40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\inst22|inst113|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux1~0_combout\ = (\inst22|inst46~0_combout\ & ((\inst22|inst49~0_combout\ & ((\inst22|inst40~0_combout\))) # (!\inst22|inst49~0_combout\ & (\inst22|inst43~0_combout\)))) # (!\inst22|inst46~0_combout\ & (\inst22|inst43~0_combout\ & 
-- (\inst22|inst49~0_combout\ $ (\inst22|inst40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\inst22|inst113|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux2~0_combout\ = (\inst22|inst43~0_combout\ & (\inst22|inst40~0_combout\ & ((\inst22|inst46~0_combout\) # (!\inst22|inst49~0_combout\)))) # (!\inst22|inst43~0_combout\ & (!\inst22|inst49~0_combout\ & (\inst22|inst46~0_combout\ & 
-- !\inst22|inst40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N14
\inst22|inst113|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux3~0_combout\ = (\inst22|inst46~0_combout\ & ((\inst22|inst49~0_combout\ & (\inst22|inst43~0_combout\)) # (!\inst22|inst49~0_combout\ & (!\inst22|inst43~0_combout\ & \inst22|inst40~0_combout\)))) # (!\inst22|inst46~0_combout\ & 
-- (!\inst22|inst40~0_combout\ & (\inst22|inst49~0_combout\ $ (\inst22|inst43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N24
\inst22|inst113|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux4~0_combout\ = (\inst22|inst46~0_combout\ & (\inst22|inst49~0_combout\ & ((!\inst22|inst40~0_combout\)))) # (!\inst22|inst46~0_combout\ & ((\inst22|inst43~0_combout\ & ((!\inst22|inst40~0_combout\))) # (!\inst22|inst43~0_combout\ & 
-- (\inst22|inst49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\inst22|inst113|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux5~0_combout\ = (\inst22|inst49~0_combout\ & (\inst22|inst40~0_combout\ $ (((\inst22|inst46~0_combout\) # (!\inst22|inst43~0_combout\))))) # (!\inst22|inst49~0_combout\ & (!\inst22|inst43~0_combout\ & (\inst22|inst46~0_combout\ & 
-- !\inst22|inst40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\inst22|inst113|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|inst113|Mux6~0_combout\ = (\inst22|inst49~0_combout\ & ((\inst22|inst40~0_combout\) # (\inst22|inst43~0_combout\ $ (\inst22|inst46~0_combout\)))) # (!\inst22|inst49~0_combout\ & ((\inst22|inst46~0_combout\) # (\inst22|inst43~0_combout\ $ 
-- (\inst22|inst40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst49~0_combout\,
	datab => \inst22|inst43~0_combout\,
	datac => \inst22|inst46~0_combout\,
	datad => \inst22|inst40~0_combout\,
	combout => \inst22|inst113|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON1,
	o => \BUTTON1~input_o\);

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

ww_hex00 <= \hex00~output_o\;

ww_hex01 <= \hex01~output_o\;

ww_hex02 <= \hex02~output_o\;

ww_hex03 <= \hex03~output_o\;

ww_hex04 <= \hex04~output_o\;

ww_hex05 <= \hex05~output_o\;

ww_hex06 <= \hex06~output_o\;

ww_hex10 <= \hex10~output_o\;

ww_hex11 <= \hex11~output_o\;

ww_hex12 <= \hex12~output_o\;

ww_hex13 <= \hex13~output_o\;

ww_hex14 <= \hex14~output_o\;

ww_hex15 <= \hex15~output_o\;

ww_hex16 <= \hex16~output_o\;

ww_hex20 <= \hex20~output_o\;

ww_hex21 <= \hex21~output_o\;

ww_hex22 <= \hex22~output_o\;

ww_hex23 <= \hex23~output_o\;

ww_hex24 <= \hex24~output_o\;

ww_hex25 <= \hex25~output_o\;

ww_hex26 <= \hex26~output_o\;

ww_hex30 <= \hex30~output_o\;

ww_hex31 <= \hex31~output_o\;

ww_hex32 <= \hex32~output_o\;

ww_hex33 <= \hex33~output_o\;

ww_hex34 <= \hex34~output_o\;

ww_hex35 <= \hex35~output_o\;

ww_hex36 <= \hex36~output_o\;

\CMD/OUT\ <= \CMD/OUT~output_o\;

\DAT0/IN\ <= \DAT0/IN~output_o\;

\DAT3/SSnot\ <= \DAT3/SSnot~output_o\;
END structure;


