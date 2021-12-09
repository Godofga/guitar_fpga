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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/25/2021 21:36:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL d7seg : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL dig7seg : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ehkey : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT main
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	d7seg : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	dig7seg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ehkey : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	d7seg => d7seg,
	dig7seg => dig7seg,
	ehkey => ehkey,
	KEY => KEY,
	LED => LED
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 500 ps;
	CLOCK_50 <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- ehkey[9]
t_prcs_ehkey_9: PROCESS
BEGIN
	ehkey(9) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_9;
-- ehkey[8]
t_prcs_ehkey_8: PROCESS
BEGIN
	ehkey(8) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_8;
-- ehkey[7]
t_prcs_ehkey_7: PROCESS
BEGIN
	ehkey(7) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_7;
-- ehkey[6]
t_prcs_ehkey_6: PROCESS
BEGIN
	ehkey(6) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_6;
-- ehkey[5]
t_prcs_ehkey_5: PROCESS
BEGIN
	ehkey(5) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_5;
-- ehkey[4]
t_prcs_ehkey_4: PROCESS
BEGIN
	ehkey(4) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_4;
-- ehkey[3]
t_prcs_ehkey_3: PROCESS
BEGIN
	ehkey(3) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_3;
-- ehkey[2]
t_prcs_ehkey_2: PROCESS
BEGIN
	ehkey(2) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_2;
-- ehkey[1]
t_prcs_ehkey_1: PROCESS
BEGIN
	ehkey(1) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_1;
-- ehkey[0]
t_prcs_ehkey_0: PROCESS
BEGIN
	ehkey(0) <= '0';
	WAIT FOR 150000 ps;
	ehkey(0) <= '1';
	WAIT FOR 90000 ps;
	ehkey(0) <= '0';
	WAIT FOR 540000 ps;
	ehkey(0) <= '1';
	WAIT FOR 30000 ps;
	ehkey(0) <= '0';
WAIT;
END PROCESS t_prcs_ehkey_0;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END main_arch;
