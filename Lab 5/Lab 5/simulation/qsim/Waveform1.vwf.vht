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
-- Generated on "05/05/2021 19:17:30"
                                                             
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
END mux_16x1_arch;
