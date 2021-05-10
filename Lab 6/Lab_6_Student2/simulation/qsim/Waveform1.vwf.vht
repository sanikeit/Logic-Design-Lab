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
-- Generated on "05/07/2021 22:47:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          updown_4bit_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY updown_4bit_counter_vhd_vec_tst IS
END updown_4bit_counter_vhd_vec_tst;
ARCHITECTURE updown_4bit_counter_arch OF updown_4bit_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL M : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT updown_4bit_counter
	PORT (
	Clk : IN STD_LOGIC;
	M : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : updown_4bit_counter
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	M => M,
	Q => Q
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 10000 ps;
	Clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- M
t_prcs_M: PROCESS
BEGIN
	M <= '0';
	WAIT FOR 320000 ps;
	M <= '1';
	WAIT FOR 320000 ps;
	M <= '0';
	WAIT FOR 320000 ps;
	M <= '1';
WAIT;
END PROCESS t_prcs_M;
END updown_4bit_counter_arch;
