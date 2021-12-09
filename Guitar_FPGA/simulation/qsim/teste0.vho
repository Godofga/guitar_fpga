-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/03/2021 00:12:24"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	ehkey : IN std_logic_vector(9 DOWNTO 0);
	ff1 : OUT std_logic_vector(8 DOWNTO 0);
	ff2 : OUT std_logic_vector(8 DOWNTO 0);
	acertando_notas : OUT std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	dig7seg : OUT std_logic_vector(1 DOWNTO 0);
	d7seg : OUT std_logic_vector(8 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ehkey[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[6]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff1[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ff2[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acertando_notas	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dig7seg[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig7seg[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d7seg[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ehkey[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ehkey[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ehkey : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ff1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ff2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_acertando_notas : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig7seg : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d7seg : std_logic_vector(8 DOWNTO 0);
SIGNAL \GERADOR_CLOCK2|sinal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GERADOR_CLOCK|sinal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ehkey[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \ehkey[1]~input_o\ : std_logic;
SIGNAL \ehkey[2]~input_o\ : std_logic;
SIGNAL \ehkey[3]~input_o\ : std_logic;
SIGNAL \ehkey[4]~input_o\ : std_logic;
SIGNAL \ehkey[5]~input_o\ : std_logic;
SIGNAL \ehkey[6]~input_o\ : std_logic;
SIGNAL \ehkey[7]~input_o\ : std_logic;
SIGNAL \ff1[0]~output_o\ : std_logic;
SIGNAL \ff1[1]~output_o\ : std_logic;
SIGNAL \ff1[2]~output_o\ : std_logic;
SIGNAL \ff1[3]~output_o\ : std_logic;
SIGNAL \ff1[4]~output_o\ : std_logic;
SIGNAL \ff1[5]~output_o\ : std_logic;
SIGNAL \ff1[6]~output_o\ : std_logic;
SIGNAL \ff1[7]~output_o\ : std_logic;
SIGNAL \ff1[8]~output_o\ : std_logic;
SIGNAL \ff2[0]~output_o\ : std_logic;
SIGNAL \ff2[1]~output_o\ : std_logic;
SIGNAL \ff2[2]~output_o\ : std_logic;
SIGNAL \ff2[3]~output_o\ : std_logic;
SIGNAL \ff2[4]~output_o\ : std_logic;
SIGNAL \ff2[5]~output_o\ : std_logic;
SIGNAL \ff2[6]~output_o\ : std_logic;
SIGNAL \ff2[7]~output_o\ : std_logic;
SIGNAL \ff2[8]~output_o\ : std_logic;
SIGNAL \acertando_notas~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \dig7seg[0]~output_o\ : std_logic;
SIGNAL \dig7seg[1]~output_o\ : std_logic;
SIGNAL \d7seg[0]~output_o\ : std_logic;
SIGNAL \d7seg[1]~output_o\ : std_logic;
SIGNAL \d7seg[2]~output_o\ : std_logic;
SIGNAL \d7seg[3]~output_o\ : std_logic;
SIGNAL \d7seg[4]~output_o\ : std_logic;
SIGNAL \d7seg[5]~output_o\ : std_logic;
SIGNAL \d7seg[6]~output_o\ : std_logic;
SIGNAL \d7seg[7]~output_o\ : std_logic;
SIGNAL \d7seg[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~3_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~1\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~3\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~4_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~5\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~6_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~1_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~7\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~8_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~2_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~9\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~10_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Equal0~2_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~4_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~11\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~12_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~5_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~13\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~14_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Equal0~1_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|count~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Add0~2_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|Equal0~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|sinal~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|sinal~feeder_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK|sinal~q\ : std_logic;
SIGNAL \GERADOR_CLOCK|sinal~clkctrl_outclk\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[1]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[2]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[3]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[4]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[5]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[6]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|rand_temp[7]~0_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM1|temp~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP00|Q~feeder_combout\ : std_logic;
SIGNAL \ehkey[0]~input_o\ : std_logic;
SIGNAL \ehkey[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \FLIP_FLOP00|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP01|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP01|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP02|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP02|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP03|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP03|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP04|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP04|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP05|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP06|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP06|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP07|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP07|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP08|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP08|Q~q\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[1]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[2]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[3]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[4]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[5]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[6]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[7]~feeder_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|rand_temp[8]~0_combout\ : std_logic;
SIGNAL \GERADOR_RANDOM2|temp~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP10|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP10|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP11|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP11|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP12|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP12|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP13|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP14|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP14|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP15|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP15|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP16|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP16|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP17|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP17|Q~q\ : std_logic;
SIGNAL \FLIP_FLOP18|Q~feeder_combout\ : std_logic;
SIGNAL \FLIP_FLOP18|Q~q\ : std_logic;
SIGNAL \nota0~feeder_combout\ : std_logic;
SIGNAL \ehkey[8]~input_o\ : std_logic;
SIGNAL \nota0~q\ : std_logic;
SIGNAL \nota1~feeder_combout\ : std_logic;
SIGNAL \ehkey[9]~input_o\ : std_logic;
SIGNAL \nota1~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \acertando_notas~reg0feeder_combout\ : std_logic;
SIGNAL \acertando_notas~reg0_q\ : std_logic;
SIGNAL \CONTADOR|temp[0]~21_combout\ : std_logic;
SIGNAL \CONTADOR|temp[1]~7_combout\ : std_logic;
SIGNAL \CONTADOR|temp[1]~8\ : std_logic;
SIGNAL \CONTADOR|temp[2]~9_combout\ : std_logic;
SIGNAL \CONTADOR|temp[2]~10\ : std_logic;
SIGNAL \CONTADOR|temp[3]~11_combout\ : std_logic;
SIGNAL \CONTADOR|temp[3]~12\ : std_logic;
SIGNAL \CONTADOR|temp[4]~13_combout\ : std_logic;
SIGNAL \CONTADOR|temp[4]~14\ : std_logic;
SIGNAL \CONTADOR|temp[5]~15_combout\ : std_logic;
SIGNAL \CONTADOR|temp[5]~16\ : std_logic;
SIGNAL \CONTADOR|temp[6]~17_combout\ : std_logic;
SIGNAL \CONTADOR|temp[6]~18\ : std_logic;
SIGNAL \CONTADOR|temp[7]~19_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK2|count~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK2|sinal~0_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK2|sinal~feeder_combout\ : std_logic;
SIGNAL \GERADOR_CLOCK2|sinal~q\ : std_logic;
SIGNAL \GERADOR_CLOCK2|sinal~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \dig7seg[0]~reg0_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \dig7seg[1]~reg0_q\ : std_logic;
SIGNAL \d7seg[2]~0_combout\ : std_logic;
SIGNAL \d7seg~1_combout\ : std_logic;
SIGNAL \d7seg~2_combout\ : std_logic;
SIGNAL \d7seg[2]~reg0_q\ : std_logic;
SIGNAL \d7seg~3_combout\ : std_logic;
SIGNAL \d7seg~4_combout\ : std_logic;
SIGNAL \d7seg[3]~reg0_q\ : std_logic;
SIGNAL \d7seg~5_combout\ : std_logic;
SIGNAL \d7seg~6_combout\ : std_logic;
SIGNAL \d7seg[5]~reg0_q\ : std_logic;
SIGNAL \d7seg~7_combout\ : std_logic;
SIGNAL \d7seg~8_combout\ : std_logic;
SIGNAL \d7seg[6]~reg0_q\ : std_logic;
SIGNAL \CONTADOR|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GERADOR_RANDOM1|rand_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GERADOR_CLOCK|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GERADOR_RANDOM2|rand_temp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \GERADOR_CLOCK2|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_ehkey[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ehkey[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ehkey[9]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_ehkey <= ehkey;
ff1 <= ww_ff1;
ff2 <= ww_ff2;
acertando_notas <= ww_acertando_notas;
LED <= ww_LED;
dig7seg <= ww_dig7seg;
d7seg <= ww_d7seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GERADOR_CLOCK2|sinal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GERADOR_CLOCK2|sinal~q\);

\GERADOR_CLOCK|sinal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GERADOR_CLOCK|sinal~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\ehkey[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ehkey[0]~input_o\);
\ALT_INV_ehkey[0]~inputclkctrl_outclk\ <= NOT \ehkey[0]~inputclkctrl_outclk\;
\ALT_INV_ehkey[8]~input_o\ <= NOT \ehkey[8]~input_o\;
\ALT_INV_ehkey[9]~input_o\ <= NOT \ehkey[9]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y0_N16
\ff1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP00|Q~q\,
	devoe => ww_devoe,
	o => \ff1[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ff1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP01|Q~q\,
	devoe => ww_devoe,
	o => \ff1[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ff1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP02|Q~q\,
	devoe => ww_devoe,
	o => \ff1[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ff1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP03|Q~q\,
	devoe => ww_devoe,
	o => \ff1[3]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\ff1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP04|Q~q\,
	devoe => ww_devoe,
	o => \ff1[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\ff1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP05|Q~q\,
	devoe => ww_devoe,
	o => \ff1[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ff1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP06|Q~q\,
	devoe => ww_devoe,
	o => \ff1[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ff1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP07|Q~q\,
	devoe => ww_devoe,
	o => \ff1[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\ff1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP08|Q~q\,
	devoe => ww_devoe,
	o => \ff1[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ff2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP10|Q~q\,
	devoe => ww_devoe,
	o => \ff2[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\ff2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP11|Q~q\,
	devoe => ww_devoe,
	o => \ff2[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\ff2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP12|Q~q\,
	devoe => ww_devoe,
	o => \ff2[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ff2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP13|Q~q\,
	devoe => ww_devoe,
	o => \ff2[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ff2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP14|Q~q\,
	devoe => ww_devoe,
	o => \ff2[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ff2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP15|Q~q\,
	devoe => ww_devoe,
	o => \ff2[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\ff2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP16|Q~q\,
	devoe => ww_devoe,
	o => \ff2[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ff2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP17|Q~q\,
	devoe => ww_devoe,
	o => \ff2[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\ff2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FLIP_FLOP18|Q~q\,
	devoe => ww_devoe,
	o => \ff2[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\acertando_notas~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acertando_notas~reg0_q\,
	devoe => ww_devoe,
	o => \acertando_notas~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTADOR|temp\(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\dig7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig7seg[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dig7seg[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\dig7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig7seg[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dig7seg[1]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\d7seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d7seg[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\d7seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d7seg[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\d7seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d7seg[2]~reg0_q\,
	devoe => ww_devoe,
	o => \d7seg[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\d7seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d7seg[3]~reg0_q\,
	devoe => ww_devoe,
	o => \d7seg[3]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\d7seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d7seg[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\d7seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d7seg[5]~reg0_q\,
	devoe => ww_devoe,
	o => \d7seg[5]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\d7seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d7seg[6]~reg0_q\,
	devoe => ww_devoe,
	o => \d7seg[6]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\d7seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d7seg[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\d7seg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d7seg[8]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X23_Y33_N11
\GERADOR_CLOCK|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \GERADOR_CLOCK|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(0));

-- Location: LCCOMB_X23_Y33_N12
\GERADOR_CLOCK|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~0_combout\ = \GERADOR_CLOCK|count\(0) $ (VCC)
-- \GERADOR_CLOCK|Add0~1\ = CARRY(\GERADOR_CLOCK|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|count\(0),
	datad => VCC,
	combout => \GERADOR_CLOCK|Add0~0_combout\,
	cout => \GERADOR_CLOCK|Add0~1\);

-- Location: LCCOMB_X24_Y33_N2
\GERADOR_CLOCK|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~3_combout\ = (\GERADOR_CLOCK|Add0~10_combout\ & ((!\GERADOR_CLOCK|Equal0~1_combout\) # (!\GERADOR_CLOCK|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|Equal0~0_combout\,
	datac => \GERADOR_CLOCK|Add0~10_combout\,
	datad => \GERADOR_CLOCK|Equal0~1_combout\,
	combout => \GERADOR_CLOCK|count~3_combout\);

-- Location: FF_X24_Y33_N3
\GERADOR_CLOCK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(5));

-- Location: LCCOMB_X23_Y33_N14
\GERADOR_CLOCK|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~2_combout\ = (\GERADOR_CLOCK|count\(1) & (!\GERADOR_CLOCK|Add0~1\)) # (!\GERADOR_CLOCK|count\(1) & ((\GERADOR_CLOCK|Add0~1\) # (GND)))
-- \GERADOR_CLOCK|Add0~3\ = CARRY((!\GERADOR_CLOCK|Add0~1\) # (!\GERADOR_CLOCK|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(1),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~1\,
	combout => \GERADOR_CLOCK|Add0~2_combout\,
	cout => \GERADOR_CLOCK|Add0~3\);

-- Location: LCCOMB_X23_Y33_N16
\GERADOR_CLOCK|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~4_combout\ = (\GERADOR_CLOCK|count\(2) & (\GERADOR_CLOCK|Add0~3\ $ (GND))) # (!\GERADOR_CLOCK|count\(2) & (!\GERADOR_CLOCK|Add0~3\ & VCC))
-- \GERADOR_CLOCK|Add0~5\ = CARRY((\GERADOR_CLOCK|count\(2) & !\GERADOR_CLOCK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(2),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~3\,
	combout => \GERADOR_CLOCK|Add0~4_combout\,
	cout => \GERADOR_CLOCK|Add0~5\);

-- Location: FF_X23_Y33_N17
\GERADOR_CLOCK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(2));

-- Location: LCCOMB_X23_Y33_N18
\GERADOR_CLOCK|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~6_combout\ = (\GERADOR_CLOCK|count\(3) & (!\GERADOR_CLOCK|Add0~5\)) # (!\GERADOR_CLOCK|count\(3) & ((\GERADOR_CLOCK|Add0~5\) # (GND)))
-- \GERADOR_CLOCK|Add0~7\ = CARRY((!\GERADOR_CLOCK|Add0~5\) # (!\GERADOR_CLOCK|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(3),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~5\,
	combout => \GERADOR_CLOCK|Add0~6_combout\,
	cout => \GERADOR_CLOCK|Add0~7\);

-- Location: LCCOMB_X23_Y33_N4
\GERADOR_CLOCK|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~1_combout\ = (\GERADOR_CLOCK|Add0~6_combout\ & ((!\GERADOR_CLOCK|Equal0~0_combout\) # (!\GERADOR_CLOCK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|Add0~6_combout\,
	datac => \GERADOR_CLOCK|Equal0~1_combout\,
	datad => \GERADOR_CLOCK|Equal0~0_combout\,
	combout => \GERADOR_CLOCK|count~1_combout\);

-- Location: FF_X23_Y33_N5
\GERADOR_CLOCK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(3));

-- Location: LCCOMB_X23_Y33_N20
\GERADOR_CLOCK|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~8_combout\ = (\GERADOR_CLOCK|count\(4) & (\GERADOR_CLOCK|Add0~7\ $ (GND))) # (!\GERADOR_CLOCK|count\(4) & (!\GERADOR_CLOCK|Add0~7\ & VCC))
-- \GERADOR_CLOCK|Add0~9\ = CARRY((\GERADOR_CLOCK|count\(4) & !\GERADOR_CLOCK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(4),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~7\,
	combout => \GERADOR_CLOCK|Add0~8_combout\,
	cout => \GERADOR_CLOCK|Add0~9\);

-- Location: LCCOMB_X23_Y33_N8
\GERADOR_CLOCK|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~2_combout\ = (\GERADOR_CLOCK|Add0~8_combout\ & ((!\GERADOR_CLOCK|Equal0~0_combout\) # (!\GERADOR_CLOCK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|Add0~8_combout\,
	datac => \GERADOR_CLOCK|Equal0~1_combout\,
	datad => \GERADOR_CLOCK|Equal0~0_combout\,
	combout => \GERADOR_CLOCK|count~2_combout\);

-- Location: FF_X23_Y33_N9
\GERADOR_CLOCK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(4));

-- Location: LCCOMB_X23_Y33_N22
\GERADOR_CLOCK|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~10_combout\ = (\GERADOR_CLOCK|count\(5) & (!\GERADOR_CLOCK|Add0~9\)) # (!\GERADOR_CLOCK|count\(5) & ((\GERADOR_CLOCK|Add0~9\) # (GND)))
-- \GERADOR_CLOCK|Add0~11\ = CARRY((!\GERADOR_CLOCK|Add0~9\) # (!\GERADOR_CLOCK|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|count\(5),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~9\,
	combout => \GERADOR_CLOCK|Add0~10_combout\,
	cout => \GERADOR_CLOCK|Add0~11\);

-- Location: LCCOMB_X23_Y33_N10
\GERADOR_CLOCK|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Equal0~2_combout\ = (\GERADOR_CLOCK|Add0~8_combout\ & \GERADOR_CLOCK|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|Add0~8_combout\,
	datad => \GERADOR_CLOCK|Add0~10_combout\,
	combout => \GERADOR_CLOCK|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y33_N2
\GERADOR_CLOCK|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~4_combout\ = (\GERADOR_CLOCK|Add0~12_combout\ & (((!\GERADOR_CLOCK|Add0~14_combout\) # (!\GERADOR_CLOCK|Equal0~2_combout\)) # (!\GERADOR_CLOCK|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|Equal0~0_combout\,
	datab => \GERADOR_CLOCK|Add0~12_combout\,
	datac => \GERADOR_CLOCK|Equal0~2_combout\,
	datad => \GERADOR_CLOCK|Add0~14_combout\,
	combout => \GERADOR_CLOCK|count~4_combout\);

-- Location: FF_X23_Y33_N3
\GERADOR_CLOCK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(6));

-- Location: LCCOMB_X23_Y33_N24
\GERADOR_CLOCK|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~12_combout\ = (\GERADOR_CLOCK|count\(6) & (\GERADOR_CLOCK|Add0~11\ $ (GND))) # (!\GERADOR_CLOCK|count\(6) & (!\GERADOR_CLOCK|Add0~11\ & VCC))
-- \GERADOR_CLOCK|Add0~13\ = CARRY((\GERADOR_CLOCK|count\(6) & !\GERADOR_CLOCK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(6),
	datad => VCC,
	cin => \GERADOR_CLOCK|Add0~11\,
	combout => \GERADOR_CLOCK|Add0~12_combout\,
	cout => \GERADOR_CLOCK|Add0~13\);

-- Location: LCCOMB_X23_Y33_N28
\GERADOR_CLOCK|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~5_combout\ = (\GERADOR_CLOCK|Add0~14_combout\ & (((!\GERADOR_CLOCK|Equal0~2_combout\) # (!\GERADOR_CLOCK|Add0~12_combout\)) # (!\GERADOR_CLOCK|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|Equal0~0_combout\,
	datab => \GERADOR_CLOCK|Add0~12_combout\,
	datac => \GERADOR_CLOCK|Equal0~2_combout\,
	datad => \GERADOR_CLOCK|Add0~14_combout\,
	combout => \GERADOR_CLOCK|count~5_combout\);

-- Location: FF_X23_Y33_N29
\GERADOR_CLOCK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(7));

-- Location: LCCOMB_X23_Y33_N26
\GERADOR_CLOCK|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Add0~14_combout\ = \GERADOR_CLOCK|Add0~13\ $ (\GERADOR_CLOCK|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_CLOCK|count\(7),
	cin => \GERADOR_CLOCK|Add0~13\,
	combout => \GERADOR_CLOCK|Add0~14_combout\);

-- Location: LCCOMB_X23_Y33_N30
\GERADOR_CLOCK|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Equal0~1_combout\ = (\GERADOR_CLOCK|Add0~10_combout\ & (\GERADOR_CLOCK|Add0~8_combout\ & (\GERADOR_CLOCK|Add0~14_combout\ & \GERADOR_CLOCK|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|Add0~10_combout\,
	datab => \GERADOR_CLOCK|Add0~8_combout\,
	datac => \GERADOR_CLOCK|Add0~14_combout\,
	datad => \GERADOR_CLOCK|Add0~12_combout\,
	combout => \GERADOR_CLOCK|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y33_N0
\GERADOR_CLOCK|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|count~0_combout\ = (\GERADOR_CLOCK|Add0~2_combout\ & ((!\GERADOR_CLOCK|Equal0~0_combout\) # (!\GERADOR_CLOCK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|Add0~2_combout\,
	datac => \GERADOR_CLOCK|Equal0~1_combout\,
	datad => \GERADOR_CLOCK|Equal0~0_combout\,
	combout => \GERADOR_CLOCK|count~0_combout\);

-- Location: FF_X23_Y33_N1
\GERADOR_CLOCK|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|count\(1));

-- Location: LCCOMB_X23_Y33_N6
\GERADOR_CLOCK|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|Equal0~0_combout\ = (!\GERADOR_CLOCK|Add0~0_combout\ & (\GERADOR_CLOCK|Add0~2_combout\ & (!\GERADOR_CLOCK|Add0~4_combout\ & \GERADOR_CLOCK|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|Add0~0_combout\,
	datab => \GERADOR_CLOCK|Add0~2_combout\,
	datac => \GERADOR_CLOCK|Add0~4_combout\,
	datad => \GERADOR_CLOCK|Add0~6_combout\,
	combout => \GERADOR_CLOCK|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y33_N16
\GERADOR_CLOCK|sinal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|sinal~0_combout\ = \GERADOR_CLOCK|sinal~q\ $ (((\GERADOR_CLOCK|Equal0~0_combout\ & \GERADOR_CLOCK|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|sinal~q\,
	datac => \GERADOR_CLOCK|Equal0~0_combout\,
	datad => \GERADOR_CLOCK|Equal0~1_combout\,
	combout => \GERADOR_CLOCK|sinal~0_combout\);

-- Location: LCCOMB_X24_Y33_N4
\GERADOR_CLOCK|sinal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK|sinal~feeder_combout\ = \GERADOR_CLOCK|sinal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GERADOR_CLOCK|sinal~0_combout\,
	combout => \GERADOR_CLOCK|sinal~feeder_combout\);

-- Location: FF_X24_Y33_N5
\GERADOR_CLOCK|sinal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK|sinal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK|sinal~q\);

-- Location: CLKCTRL_G10
\GERADOR_CLOCK|sinal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GERADOR_CLOCK|sinal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GERADOR_CLOCK|sinal~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y1_N2
\GERADOR_RANDOM1|rand_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[1]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(0),
	combout => \GERADOR_RANDOM1|rand_temp[1]~feeder_combout\);

-- Location: FF_X31_Y1_N3
\GERADOR_RANDOM1|rand_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(1));

-- Location: LCCOMB_X31_Y1_N20
\GERADOR_RANDOM1|rand_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[2]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(1),
	combout => \GERADOR_RANDOM1|rand_temp[2]~feeder_combout\);

-- Location: FF_X31_Y1_N21
\GERADOR_RANDOM1|rand_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(2));

-- Location: LCCOMB_X31_Y1_N6
\GERADOR_RANDOM1|rand_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[3]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(2),
	combout => \GERADOR_RANDOM1|rand_temp[3]~feeder_combout\);

-- Location: FF_X31_Y1_N7
\GERADOR_RANDOM1|rand_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(3));

-- Location: LCCOMB_X31_Y1_N12
\GERADOR_RANDOM1|rand_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[4]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(3),
	combout => \GERADOR_RANDOM1|rand_temp[4]~feeder_combout\);

-- Location: FF_X31_Y1_N13
\GERADOR_RANDOM1|rand_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(4));

-- Location: LCCOMB_X31_Y1_N18
\GERADOR_RANDOM1|rand_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[5]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(4),
	combout => \GERADOR_RANDOM1|rand_temp[5]~feeder_combout\);

-- Location: FF_X31_Y1_N19
\GERADOR_RANDOM1|rand_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(5));

-- Location: LCCOMB_X31_Y1_N10
\GERADOR_RANDOM1|rand_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[6]~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(5),
	combout => \GERADOR_RANDOM1|rand_temp[6]~feeder_combout\);

-- Location: FF_X31_Y1_N11
\GERADOR_RANDOM1|rand_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(6));

-- Location: LCCOMB_X31_Y1_N4
\GERADOR_RANDOM1|rand_temp[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|rand_temp[7]~0_combout\ = !\GERADOR_RANDOM1|rand_temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(6),
	combout => \GERADOR_RANDOM1|rand_temp[7]~0_combout\);

-- Location: FF_X31_Y1_N5
\GERADOR_RANDOM1|rand_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|rand_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(7));

-- Location: LCCOMB_X31_Y1_N16
\GERADOR_RANDOM1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM1|temp~0_combout\ = \GERADOR_RANDOM1|rand_temp\(7) $ (!\GERADOR_RANDOM1|rand_temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GERADOR_RANDOM1|rand_temp\(7),
	datad => \GERADOR_RANDOM1|rand_temp\(6),
	combout => \GERADOR_RANDOM1|temp~0_combout\);

-- Location: FF_X31_Y1_N17
\GERADOR_RANDOM1|rand_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM1|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM1|rand_temp\(0));

-- Location: LCCOMB_X28_Y1_N16
\FLIP_FLOP00|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP00|Q~feeder_combout\ = \GERADOR_RANDOM1|rand_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM1|rand_temp\(0),
	combout => \FLIP_FLOP00|Q~feeder_combout\);

-- Location: IOIBUF_X53_Y13_N8
\ehkey[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(0),
	o => \ehkey[0]~input_o\);

-- Location: CLKCTRL_G6
\ehkey[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ehkey[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ehkey[0]~inputclkctrl_outclk\);

-- Location: FF_X28_Y1_N17
\FLIP_FLOP00|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP00|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP00|Q~q\);

-- Location: LCCOMB_X28_Y1_N26
\FLIP_FLOP01|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP01|Q~feeder_combout\ = \FLIP_FLOP00|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP00|Q~q\,
	combout => \FLIP_FLOP01|Q~feeder_combout\);

-- Location: FF_X28_Y1_N27
\FLIP_FLOP01|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP01|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP01|Q~q\);

-- Location: LCCOMB_X28_Y1_N4
\FLIP_FLOP02|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP02|Q~feeder_combout\ = \FLIP_FLOP01|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP01|Q~q\,
	combout => \FLIP_FLOP02|Q~feeder_combout\);

-- Location: FF_X28_Y1_N5
\FLIP_FLOP02|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP02|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP02|Q~q\);

-- Location: LCCOMB_X29_Y1_N22
\FLIP_FLOP03|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP03|Q~feeder_combout\ = \FLIP_FLOP02|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP02|Q~q\,
	combout => \FLIP_FLOP03|Q~feeder_combout\);

-- Location: FF_X29_Y1_N23
\FLIP_FLOP03|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP03|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP03|Q~q\);

-- Location: LCCOMB_X29_Y1_N26
\FLIP_FLOP04|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP04|Q~feeder_combout\ = \FLIP_FLOP03|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP03|Q~q\,
	combout => \FLIP_FLOP04|Q~feeder_combout\);

-- Location: FF_X29_Y1_N27
\FLIP_FLOP04|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP04|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP04|Q~q\);

-- Location: FF_X29_Y1_N17
\FLIP_FLOP05|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	asdata => \FLIP_FLOP04|Q~q\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP05|Q~q\);

-- Location: LCCOMB_X29_Y1_N28
\FLIP_FLOP06|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP06|Q~feeder_combout\ = \FLIP_FLOP05|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP05|Q~q\,
	combout => \FLIP_FLOP06|Q~feeder_combout\);

-- Location: FF_X29_Y1_N29
\FLIP_FLOP06|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP06|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP06|Q~q\);

-- Location: LCCOMB_X29_Y1_N0
\FLIP_FLOP07|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP07|Q~feeder_combout\ = \FLIP_FLOP06|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP06|Q~q\,
	combout => \FLIP_FLOP07|Q~feeder_combout\);

-- Location: FF_X29_Y1_N1
\FLIP_FLOP07|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP07|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP07|Q~q\);

-- Location: LCCOMB_X44_Y2_N16
\FLIP_FLOP08|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP08|Q~feeder_combout\ = \FLIP_FLOP07|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP07|Q~q\,
	combout => \FLIP_FLOP08|Q~feeder_combout\);

-- Location: FF_X44_Y2_N17
\FLIP_FLOP08|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP08|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP08|Q~q\);

-- Location: LCCOMB_X28_Y1_N28
\GERADOR_RANDOM2|rand_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[1]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(0),
	combout => \GERADOR_RANDOM2|rand_temp[1]~feeder_combout\);

-- Location: FF_X28_Y1_N29
\GERADOR_RANDOM2|rand_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(1));

-- Location: LCCOMB_X28_Y1_N10
\GERADOR_RANDOM2|rand_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[2]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(1),
	combout => \GERADOR_RANDOM2|rand_temp[2]~feeder_combout\);

-- Location: FF_X28_Y1_N11
\GERADOR_RANDOM2|rand_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(2));

-- Location: LCCOMB_X28_Y1_N20
\GERADOR_RANDOM2|rand_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[3]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(2),
	combout => \GERADOR_RANDOM2|rand_temp[3]~feeder_combout\);

-- Location: FF_X28_Y1_N21
\GERADOR_RANDOM2|rand_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(3));

-- Location: LCCOMB_X28_Y1_N22
\GERADOR_RANDOM2|rand_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[4]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(3),
	combout => \GERADOR_RANDOM2|rand_temp[4]~feeder_combout\);

-- Location: FF_X28_Y1_N23
\GERADOR_RANDOM2|rand_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(4));

-- Location: LCCOMB_X28_Y1_N24
\GERADOR_RANDOM2|rand_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[5]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GERADOR_RANDOM2|rand_temp\(4),
	combout => \GERADOR_RANDOM2|rand_temp[5]~feeder_combout\);

-- Location: FF_X28_Y1_N25
\GERADOR_RANDOM2|rand_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(5));

-- Location: LCCOMB_X28_Y1_N18
\GERADOR_RANDOM2|rand_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[6]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(5),
	combout => \GERADOR_RANDOM2|rand_temp[6]~feeder_combout\);

-- Location: FF_X28_Y1_N19
\GERADOR_RANDOM2|rand_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(6));

-- Location: LCCOMB_X28_Y1_N30
\GERADOR_RANDOM2|rand_temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[7]~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(6),
	combout => \GERADOR_RANDOM2|rand_temp[7]~feeder_combout\);

-- Location: FF_X28_Y1_N31
\GERADOR_RANDOM2|rand_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(7));

-- Location: LCCOMB_X28_Y1_N8
\GERADOR_RANDOM2|rand_temp[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|rand_temp[8]~0_combout\ = !\GERADOR_RANDOM2|rand_temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GERADOR_RANDOM2|rand_temp\(7),
	combout => \GERADOR_RANDOM2|rand_temp[8]~0_combout\);

-- Location: FF_X28_Y1_N9
\GERADOR_RANDOM2|rand_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|rand_temp[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(8));

-- Location: LCCOMB_X28_Y1_N12
\GERADOR_RANDOM2|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_RANDOM2|temp~0_combout\ = \GERADOR_RANDOM2|rand_temp\(7) $ (!\GERADOR_RANDOM2|rand_temp\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GERADOR_RANDOM2|rand_temp\(7),
	datad => \GERADOR_RANDOM2|rand_temp\(8),
	combout => \GERADOR_RANDOM2|temp~0_combout\);

-- Location: FF_X28_Y1_N13
\GERADOR_RANDOM2|rand_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \GERADOR_RANDOM2|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_RANDOM2|rand_temp\(0));

-- Location: LCCOMB_X28_Y1_N14
\FLIP_FLOP10|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP10|Q~feeder_combout\ = \GERADOR_RANDOM2|rand_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GERADOR_RANDOM2|rand_temp\(0),
	combout => \FLIP_FLOP10|Q~feeder_combout\);

-- Location: FF_X28_Y1_N15
\FLIP_FLOP10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP10|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP10|Q~q\);

-- Location: LCCOMB_X28_Y1_N0
\FLIP_FLOP11|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP11|Q~feeder_combout\ = \FLIP_FLOP10|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP10|Q~q\,
	combout => \FLIP_FLOP11|Q~feeder_combout\);

-- Location: FF_X28_Y1_N1
\FLIP_FLOP11|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP11|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP11|Q~q\);

-- Location: LCCOMB_X29_Y1_N30
\FLIP_FLOP12|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP12|Q~feeder_combout\ = \FLIP_FLOP11|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP11|Q~q\,
	combout => \FLIP_FLOP12|Q~feeder_combout\);

-- Location: FF_X29_Y1_N31
\FLIP_FLOP12|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP12|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP12|Q~q\);

-- Location: FF_X29_Y1_N19
\FLIP_FLOP13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	asdata => \FLIP_FLOP12|Q~q\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP13|Q~q\);

-- Location: LCCOMB_X28_Y1_N6
\FLIP_FLOP14|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP14|Q~feeder_combout\ = \FLIP_FLOP13|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP13|Q~q\,
	combout => \FLIP_FLOP14|Q~feeder_combout\);

-- Location: FF_X28_Y1_N7
\FLIP_FLOP14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP14|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP14|Q~q\);

-- Location: LCCOMB_X29_Y1_N4
\FLIP_FLOP15|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP15|Q~feeder_combout\ = \FLIP_FLOP14|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP14|Q~q\,
	combout => \FLIP_FLOP15|Q~feeder_combout\);

-- Location: FF_X29_Y1_N5
\FLIP_FLOP15|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP15|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP15|Q~q\);

-- Location: LCCOMB_X29_Y1_N12
\FLIP_FLOP16|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP16|Q~feeder_combout\ = \FLIP_FLOP15|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP15|Q~q\,
	combout => \FLIP_FLOP16|Q~feeder_combout\);

-- Location: FF_X29_Y1_N13
\FLIP_FLOP16|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP16|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP16|Q~q\);

-- Location: LCCOMB_X29_Y1_N6
\FLIP_FLOP17|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP17|Q~feeder_combout\ = \FLIP_FLOP16|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FLIP_FLOP16|Q~q\,
	combout => \FLIP_FLOP17|Q~feeder_combout\);

-- Location: FF_X29_Y1_N7
\FLIP_FLOP17|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP17|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP17|Q~q\);

-- Location: LCCOMB_X44_Y2_N30
\FLIP_FLOP18|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FLIP_FLOP18|Q~feeder_combout\ = \FLIP_FLOP17|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FLIP_FLOP17|Q~q\,
	combout => \FLIP_FLOP18|Q~feeder_combout\);

-- Location: FF_X44_Y2_N31
\FLIP_FLOP18|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \FLIP_FLOP18|Q~feeder_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP18|Q~q\);

-- Location: LCCOMB_X45_Y2_N30
\nota0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \nota0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \nota0~feeder_combout\);

-- Location: IOIBUF_X45_Y0_N22
\ehkey[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(8),
	o => \ehkey[8]~input_o\);

-- Location: FF_X45_Y2_N31
nota0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \nota0~feeder_combout\,
	clrn => \ALT_INV_ehkey[8]~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nota0~q\);

-- Location: LCCOMB_X45_Y2_N4
\nota1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \nota1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \nota1~feeder_combout\);

-- Location: IOIBUF_X40_Y0_N22
\ehkey[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(9),
	o => \ehkey[9]~input_o\);

-- Location: FF_X45_Y2_N5
nota1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \nota1~feeder_combout\,
	clrn => \ALT_INV_ehkey[9]~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nota1~q\);

-- Location: LCCOMB_X45_Y2_N24
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\nota0~q\ & (!\FLIP_FLOP08|Q~q\ & (\nota1~q\ $ (\FLIP_FLOP18|Q~q\)))) # (!\nota0~q\ & (\FLIP_FLOP08|Q~q\ & (\nota1~q\ $ (\FLIP_FLOP18|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nota0~q\,
	datab => \nota1~q\,
	datac => \FLIP_FLOP08|Q~q\,
	datad => \FLIP_FLOP18|Q~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X44_Y2_N28
\acertando_notas~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \acertando_notas~reg0feeder_combout\ = \process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \acertando_notas~reg0feeder_combout\);

-- Location: FF_X44_Y2_N29
\acertando_notas~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \acertando_notas~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acertando_notas~reg0_q\);

-- Location: LCCOMB_X27_Y30_N12
\CONTADOR|temp[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[0]~21_combout\ = !\CONTADOR|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTADOR|temp\(0),
	combout => \CONTADOR|temp[0]~21_combout\);

-- Location: FF_X27_Y30_N13
\CONTADOR|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[0]~21_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(0));

-- Location: LCCOMB_X27_Y30_N18
\CONTADOR|temp[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[1]~7_combout\ = (\CONTADOR|temp\(0) & (\CONTADOR|temp\(1) $ (VCC))) # (!\CONTADOR|temp\(0) & (\CONTADOR|temp\(1) & VCC))
-- \CONTADOR|temp[1]~8\ = CARRY((\CONTADOR|temp\(0) & \CONTADOR|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|temp\(0),
	datab => \CONTADOR|temp\(1),
	datad => VCC,
	combout => \CONTADOR|temp[1]~7_combout\,
	cout => \CONTADOR|temp[1]~8\);

-- Location: FF_X27_Y30_N19
\CONTADOR|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[1]~7_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(1));

-- Location: LCCOMB_X27_Y30_N20
\CONTADOR|temp[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[2]~9_combout\ = (\CONTADOR|temp\(2) & (!\CONTADOR|temp[1]~8\)) # (!\CONTADOR|temp\(2) & ((\CONTADOR|temp[1]~8\) # (GND)))
-- \CONTADOR|temp[2]~10\ = CARRY((!\CONTADOR|temp[1]~8\) # (!\CONTADOR|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|temp\(2),
	datad => VCC,
	cin => \CONTADOR|temp[1]~8\,
	combout => \CONTADOR|temp[2]~9_combout\,
	cout => \CONTADOR|temp[2]~10\);

-- Location: FF_X27_Y30_N21
\CONTADOR|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[2]~9_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(2));

-- Location: LCCOMB_X27_Y30_N22
\CONTADOR|temp[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[3]~11_combout\ = (\CONTADOR|temp\(3) & (\CONTADOR|temp[2]~10\ $ (GND))) # (!\CONTADOR|temp\(3) & (!\CONTADOR|temp[2]~10\ & VCC))
-- \CONTADOR|temp[3]~12\ = CARRY((\CONTADOR|temp\(3) & !\CONTADOR|temp[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|temp\(3),
	datad => VCC,
	cin => \CONTADOR|temp[2]~10\,
	combout => \CONTADOR|temp[3]~11_combout\,
	cout => \CONTADOR|temp[3]~12\);

-- Location: FF_X27_Y30_N23
\CONTADOR|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[3]~11_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(3));

-- Location: LCCOMB_X27_Y30_N24
\CONTADOR|temp[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[4]~13_combout\ = (\CONTADOR|temp\(4) & (!\CONTADOR|temp[3]~12\)) # (!\CONTADOR|temp\(4) & ((\CONTADOR|temp[3]~12\) # (GND)))
-- \CONTADOR|temp[4]~14\ = CARRY((!\CONTADOR|temp[3]~12\) # (!\CONTADOR|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|temp\(4),
	datad => VCC,
	cin => \CONTADOR|temp[3]~12\,
	combout => \CONTADOR|temp[4]~13_combout\,
	cout => \CONTADOR|temp[4]~14\);

-- Location: FF_X27_Y30_N25
\CONTADOR|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[4]~13_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(4));

-- Location: LCCOMB_X27_Y30_N26
\CONTADOR|temp[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[5]~15_combout\ = (\CONTADOR|temp\(5) & (\CONTADOR|temp[4]~14\ $ (GND))) # (!\CONTADOR|temp\(5) & (!\CONTADOR|temp[4]~14\ & VCC))
-- \CONTADOR|temp[5]~16\ = CARRY((\CONTADOR|temp\(5) & !\CONTADOR|temp[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|temp\(5),
	datad => VCC,
	cin => \CONTADOR|temp[4]~14\,
	combout => \CONTADOR|temp[5]~15_combout\,
	cout => \CONTADOR|temp[5]~16\);

-- Location: FF_X27_Y30_N27
\CONTADOR|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[5]~15_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(5));

-- Location: LCCOMB_X27_Y30_N28
\CONTADOR|temp[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[6]~17_combout\ = (\CONTADOR|temp\(6) & (!\CONTADOR|temp[5]~16\)) # (!\CONTADOR|temp\(6) & ((\CONTADOR|temp[5]~16\) # (GND)))
-- \CONTADOR|temp[6]~18\ = CARRY((!\CONTADOR|temp[5]~16\) # (!\CONTADOR|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CONTADOR|temp\(6),
	datad => VCC,
	cin => \CONTADOR|temp[5]~16\,
	combout => \CONTADOR|temp[6]~17_combout\,
	cout => \CONTADOR|temp[6]~18\);

-- Location: FF_X27_Y30_N29
\CONTADOR|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[6]~17_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(6));

-- Location: LCCOMB_X27_Y30_N30
\CONTADOR|temp[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTADOR|temp[7]~19_combout\ = \CONTADOR|temp\(7) $ (!\CONTADOR|temp[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CONTADOR|temp\(7),
	cin => \CONTADOR|temp[6]~18\,
	combout => \CONTADOR|temp[7]~19_combout\);

-- Location: FF_X27_Y30_N31
\CONTADOR|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK|sinal~clkctrl_outclk\,
	d => \CONTADOR|temp[7]~19_combout\,
	clrn => \ALT_INV_ehkey[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTADOR|temp\(7));

-- Location: LCCOMB_X25_Y33_N18
\GERADOR_CLOCK2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK2|count~0_combout\ = (!\GERADOR_CLOCK|count\(0) & \GERADOR_CLOCK2|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK|count\(0),
	datac => \GERADOR_CLOCK2|count\(1),
	combout => \GERADOR_CLOCK2|count~0_combout\);

-- Location: FF_X25_Y33_N19
\GERADOR_CLOCK2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK2|count\(1));

-- Location: LCCOMB_X25_Y33_N4
\GERADOR_CLOCK2|sinal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK2|sinal~0_combout\ = \GERADOR_CLOCK2|sinal~q\ $ (((!\GERADOR_CLOCK2|count\(1) & \GERADOR_CLOCK|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK2|count\(1),
	datac => \GERADOR_CLOCK|count\(0),
	datad => \GERADOR_CLOCK2|sinal~q\,
	combout => \GERADOR_CLOCK2|sinal~0_combout\);

-- Location: LCCOMB_X25_Y33_N28
\GERADOR_CLOCK2|sinal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \GERADOR_CLOCK2|sinal~feeder_combout\ = \GERADOR_CLOCK2|sinal~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GERADOR_CLOCK2|sinal~0_combout\,
	combout => \GERADOR_CLOCK2|sinal~feeder_combout\);

-- Location: FF_X25_Y33_N29
\GERADOR_CLOCK2|sinal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \GERADOR_CLOCK2|sinal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GERADOR_CLOCK2|sinal~q\);

-- Location: CLKCTRL_G13
\GERADOR_CLOCK2|sinal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GERADOR_CLOCK2|sinal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y1_N16
\count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~1_combout\);

-- Location: FF_X30_Y1_N17
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X30_Y1_N30
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = count(1) $ (count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \Add0~1_combout\);

-- Location: FF_X30_Y1_N31
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X30_Y1_N18
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (count(0) & ((count(2) & ((!count(1)))) # (!count(2) & (count(3) & count(1))))) # (!count(0) & (((count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \count~0_combout\);

-- Location: FF_X30_Y1_N19
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X30_Y1_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(3) $ (((count(2) & (count(0) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \Add0~0_combout\);

-- Location: FF_X30_Y1_N5
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X30_Y1_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(3) & !count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => count(2),
	combout => \Equal1~0_combout\);

-- Location: FF_X30_Y1_N29
\dig7seg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	asdata => count(0),
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig7seg[0]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N10
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (count(1)) # ((count(3)) # (count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Equal1~1_combout\);

-- Location: FF_X30_Y1_N11
\dig7seg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \Equal1~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dig7seg[1]~reg0_q\);

-- Location: LCCOMB_X30_Y1_N20
\d7seg[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg[2]~0_combout\ = (!count(2) & (!count(3) & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \d7seg[2]~0_combout\);

-- Location: LCCOMB_X29_Y1_N2
\d7seg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~1_combout\ = (\d7seg[2]~0_combout\ & (!\Equal1~1_combout\)) # (!\d7seg[2]~0_combout\ & ((\Equal1~1_combout\ & ((\FLIP_FLOP07|Q~q\))) # (!\Equal1~1_combout\ & (\FLIP_FLOP03|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d7seg[2]~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP03|Q~q\,
	datad => \FLIP_FLOP07|Q~q\,
	combout => \d7seg~1_combout\);

-- Location: LCCOMB_X29_Y1_N24
\d7seg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~2_combout\ = (\d7seg[2]~0_combout\ & ((\d7seg~1_combout\ & (\FLIP_FLOP01|Q~q\)) # (!\d7seg~1_combout\ & ((\FLIP_FLOP05|Q~q\))))) # (!\d7seg[2]~0_combout\ & (((\d7seg~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP01|Q~q\,
	datab => \d7seg[2]~0_combout\,
	datac => \FLIP_FLOP05|Q~q\,
	datad => \d7seg~1_combout\,
	combout => \d7seg~2_combout\);

-- Location: FF_X29_Y1_N25
\d7seg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \d7seg~2_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d7seg[2]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N10
\d7seg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~3_combout\ = (\d7seg[2]~0_combout\ & (((\FLIP_FLOP15|Q~q\)) # (!\Equal1~1_combout\))) # (!\d7seg[2]~0_combout\ & (\Equal1~1_combout\ & ((\FLIP_FLOP17|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d7seg[2]~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP15|Q~q\,
	datad => \FLIP_FLOP17|Q~q\,
	combout => \d7seg~3_combout\);

-- Location: LCCOMB_X29_Y1_N8
\d7seg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~4_combout\ = (\Equal1~1_combout\ & (((\d7seg~3_combout\)))) # (!\Equal1~1_combout\ & ((\d7seg~3_combout\ & (\FLIP_FLOP11|Q~q\)) # (!\d7seg~3_combout\ & ((\FLIP_FLOP13|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP11|Q~q\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP13|Q~q\,
	datad => \d7seg~3_combout\,
	combout => \d7seg~4_combout\);

-- Location: FF_X29_Y1_N9
\d7seg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \d7seg~4_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d7seg[3]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N18
\d7seg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~5_combout\ = (\d7seg[2]~0_combout\ & (!\Equal1~1_combout\)) # (!\d7seg[2]~0_combout\ & ((\Equal1~1_combout\ & ((\FLIP_FLOP16|Q~q\))) # (!\Equal1~1_combout\ & (\FLIP_FLOP12|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d7seg[2]~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP12|Q~q\,
	datad => \FLIP_FLOP16|Q~q\,
	combout => \d7seg~5_combout\);

-- Location: LCCOMB_X29_Y1_N20
\d7seg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~6_combout\ = (\d7seg[2]~0_combout\ & ((\d7seg~5_combout\ & (\FLIP_FLOP10|Q~q\)) # (!\d7seg~5_combout\ & ((\FLIP_FLOP14|Q~q\))))) # (!\d7seg[2]~0_combout\ & (((\d7seg~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP10|Q~q\,
	datab => \d7seg[2]~0_combout\,
	datac => \FLIP_FLOP14|Q~q\,
	datad => \d7seg~5_combout\,
	combout => \d7seg~6_combout\);

-- Location: FF_X29_Y1_N21
\d7seg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \d7seg~6_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d7seg[5]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N16
\d7seg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~7_combout\ = (\d7seg[2]~0_combout\ & (((\FLIP_FLOP04|Q~q\)) # (!\Equal1~1_combout\))) # (!\d7seg[2]~0_combout\ & (\Equal1~1_combout\ & ((\FLIP_FLOP06|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d7seg[2]~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP04|Q~q\,
	datad => \FLIP_FLOP06|Q~q\,
	combout => \d7seg~7_combout\);

-- Location: LCCOMB_X29_Y1_N14
\d7seg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d7seg~8_combout\ = (\Equal1~1_combout\ & (((\d7seg~7_combout\)))) # (!\Equal1~1_combout\ & ((\d7seg~7_combout\ & (\FLIP_FLOP00|Q~q\)) # (!\d7seg~7_combout\ & ((\FLIP_FLOP02|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP00|Q~q\,
	datab => \Equal1~1_combout\,
	datac => \FLIP_FLOP02|Q~q\,
	datad => \d7seg~7_combout\,
	combout => \d7seg~8_combout\);

-- Location: FF_X29_Y1_N15
\d7seg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GERADOR_CLOCK2|sinal~clkctrl_outclk\,
	d => \d7seg~8_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d7seg[6]~reg0_q\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\ehkey[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(1),
	o => \ehkey[1]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\ehkey[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(2),
	o => \ehkey[2]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\ehkey[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(3),
	o => \ehkey[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\ehkey[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(4),
	o => \ehkey[4]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\ehkey[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(5),
	o => \ehkey[5]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\ehkey[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(6),
	o => \ehkey[6]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\ehkey[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ehkey(7),
	o => \ehkey[7]~input_o\);

ww_ff1(0) <= \ff1[0]~output_o\;

ww_ff1(1) <= \ff1[1]~output_o\;

ww_ff1(2) <= \ff1[2]~output_o\;

ww_ff1(3) <= \ff1[3]~output_o\;

ww_ff1(4) <= \ff1[4]~output_o\;

ww_ff1(5) <= \ff1[5]~output_o\;

ww_ff1(6) <= \ff1[6]~output_o\;

ww_ff1(7) <= \ff1[7]~output_o\;

ww_ff1(8) <= \ff1[8]~output_o\;

ww_ff2(0) <= \ff2[0]~output_o\;

ww_ff2(1) <= \ff2[1]~output_o\;

ww_ff2(2) <= \ff2[2]~output_o\;

ww_ff2(3) <= \ff2[3]~output_o\;

ww_ff2(4) <= \ff2[4]~output_o\;

ww_ff2(5) <= \ff2[5]~output_o\;

ww_ff2(6) <= \ff2[6]~output_o\;

ww_ff2(7) <= \ff2[7]~output_o\;

ww_ff2(8) <= \ff2[8]~output_o\;

ww_acertando_notas <= \acertando_notas~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_dig7seg(0) <= \dig7seg[0]~output_o\;

ww_dig7seg(1) <= \dig7seg[1]~output_o\;

ww_d7seg(0) <= \d7seg[0]~output_o\;

ww_d7seg(1) <= \d7seg[1]~output_o\;

ww_d7seg(2) <= \d7seg[2]~output_o\;

ww_d7seg(3) <= \d7seg[3]~output_o\;

ww_d7seg(4) <= \d7seg[4]~output_o\;

ww_d7seg(5) <= \d7seg[5]~output_o\;

ww_d7seg(6) <= \d7seg[6]~output_o\;

ww_d7seg(7) <= \d7seg[7]~output_o\;

ww_d7seg(8) <= \d7seg[8]~output_o\;
END structure;


