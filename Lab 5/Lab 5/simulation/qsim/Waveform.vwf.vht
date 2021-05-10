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
-- Generated on "05/05/2021 19:16:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_16x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_16x1_vhd_vec_tst IS
END mux_16x1_vhd_vec_tst;
ARCHITECTURE mux_16x1_arch OF mux_16x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT mux_16x1
	PORT (
	A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC;
	S3 : IN STD_LOGIC;
	Y : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux_16x1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	Y => Y
	);
-- A[15]
t_prcs_A_15: PROCESS
BEGIN
	A(15) <= '1';
	WAIT FOR 160000 ps;
	A(15) <= '0';
	WAIT FOR 160000 ps;
	A(15) <= '1';
	WAIT FOR 480000 ps;
	A(15) <= '0';
	WAIT FOR 160000 ps;
	A(15) <= '1';
WAIT;
END PROCESS t_prcs_A_15;
-- A[14]
t_prcs_A_14: PROCESS
BEGIN
	A(14) <= '0';
	WAIT FOR 320000 ps;
	A(14) <= '1';
	WAIT FOR 160000 ps;
	A(14) <= '0';
	WAIT FOR 320000 ps;
	A(14) <= '1';
WAIT;
END PROCESS t_prcs_A_14;
-- A[13]
t_prcs_A_13: PROCESS
BEGIN
	A(13) <= '1';
	WAIT FOR 160000 ps;
	A(13) <= '0';
	WAIT FOR 320000 ps;
	A(13) <= '1';
WAIT;
END PROCESS t_prcs_A_13;
-- A[12]
t_prcs_A_12: PROCESS
BEGIN
	A(12) <= '1';
	WAIT FOR 160000 ps;
	A(12) <= '0';
	WAIT FOR 160000 ps;
	A(12) <= '1';
	WAIT FOR 480000 ps;
	A(12) <= '0';
WAIT;
END PROCESS t_prcs_A_12;
-- A[11]
t_prcs_A_11: PROCESS
BEGIN
	A(11) <= '0';
	WAIT FOR 320000 ps;
	A(11) <= '1';
	WAIT FOR 160000 ps;
	A(11) <= '0';
	WAIT FOR 160000 ps;
	A(11) <= '1';
	WAIT FOR 160000 ps;
	A(11) <= '0';
	WAIT FOR 160000 ps;
	A(11) <= '1';
WAIT;
END PROCESS t_prcs_A_11;
-- A[10]
t_prcs_A_10: PROCESS
BEGIN
	A(10) <= '0';
	WAIT FOR 640000 ps;
	A(10) <= '1';
	WAIT FOR 160000 ps;
	A(10) <= '0';
WAIT;
END PROCESS t_prcs_A_10;
-- A[9]
t_prcs_A_9: PROCESS
BEGIN
	A(9) <= '1';
	WAIT FOR 640000 ps;
	A(9) <= '0';
	WAIT FOR 160000 ps;
	A(9) <= '1';
WAIT;
END PROCESS t_prcs_A_9;
-- A[8]
t_prcs_A_8: PROCESS
BEGIN
	A(8) <= '1';
	WAIT FOR 160000 ps;
	A(8) <= '0';
	WAIT FOR 160000 ps;
	A(8) <= '1';
	WAIT FOR 480000 ps;
	A(8) <= '0';
	WAIT FOR 160000 ps;
	A(8) <= '1';
WAIT;
END PROCESS t_prcs_A_8;
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '1';
	WAIT FOR 480000 ps;
	A(7) <= '0';
	WAIT FOR 320000 ps;
	A(7) <= '1';
	WAIT FOR 160000 ps;
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
	WAIT FOR 160000 ps;
	A(6) <= '1';
	WAIT FOR 160000 ps;
	A(6) <= '0';
	WAIT FOR 320000 ps;
	A(6) <= '1';
	WAIT FOR 160000 ps;
	A(6) <= '0';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
	WAIT FOR 480000 ps;
	A(5) <= '1';
	WAIT FOR 160000 ps;
	A(5) <= '0';
	WAIT FOR 160000 ps;
	A(5) <= '1';
	WAIT FOR 160000 ps;
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '1';
	WAIT FOR 160000 ps;
	A(4) <= '0';
	WAIT FOR 160000 ps;
	A(4) <= '1';
	WAIT FOR 320000 ps;
	A(4) <= '0';
	WAIT FOR 320000 ps;
	A(4) <= '1';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '1';
	WAIT FOR 160000 ps;
	A(3) <= '0';
	WAIT FOR 160000 ps;
	A(3) <= '1';
	WAIT FOR 160000 ps;
	A(3) <= '0';
	WAIT FOR 320000 ps;
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
	WAIT FOR 320000 ps;
	A(2) <= '0';
	WAIT FOR 160000 ps;
	A(2) <= '1';
	WAIT FOR 160000 ps;
	A(2) <= '0';
	WAIT FOR 320000 ps;
	A(2) <= '1';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
	WAIT FOR 320000 ps;
	A(1) <= '1';
	WAIT FOR 320000 ps;
	A(1) <= '0';
	WAIT FOR 160000 ps;
	A(1) <= '1';
	WAIT FOR 160000 ps;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
	WAIT FOR 160000 ps;
	A(0) <= '1';
	WAIT FOR 160000 ps;
	A(0) <= '0';
	WAIT FOR 160000 ps;
	A(0) <= '1';
	WAIT FOR 160000 ps;
	A(0) <= '0';
	WAIT FOR 160000 ps;
	A(0) <= '1';
	WAIT FOR 160000 ps;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;

-- S3
t_prcs_S3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		S3 <= '0';
		WAIT FOR 80000 ps;
		S3 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	S3 <= '0';
WAIT;
END PROCESS t_prcs_S3;

-- S2
t_prcs_S2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		S2 <= '0';
		WAIT FOR 40000 ps;
		S2 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	S2 <= '0';
WAIT;
END PROCESS t_prcs_S2;

-- S1
t_prcs_S1: PROCESS
BEGIN
LOOP
	S1 <= '0';
	WAIT FOR 20000 ps;
	S1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S1;

-- S0
t_prcs_S0: PROCESS
BEGIN
LOOP
	S0 <= '0';
	WAIT FOR 10000 ps;
	S0 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S0;
END mux_16x1_arch;
