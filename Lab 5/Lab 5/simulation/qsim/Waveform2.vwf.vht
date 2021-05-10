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
-- Generated on "05/05/2021 19:20:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sevensegment_decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sevensegment_decoder_vhd_vec_tst IS
END sevensegment_decoder_vhd_vec_tst;
ARCHITECTURE sevensegment_decoder_arch OF sevensegment_decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seven_segment : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT sevensegment_decoder
	PORT (
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	seven_segment : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sevensegment_decoder
	PORT MAP (
-- list connections between master ports and signals
	input => input,
	seven_segment => seven_segment
	);
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		input(3) <= '0';
		WAIT FOR 160000 ps;
		input(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		input(2) <= '0';
		WAIT FOR 80000 ps;
		input(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		input(1) <= '0';
		WAIT FOR 40000 ps;
		input(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
LOOP
	input(0) <= '0';
	WAIT FOR 20000 ps;
	input(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_0;
END sevensegment_decoder_arch;
