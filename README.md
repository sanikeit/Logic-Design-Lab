# Logic-Design-Lab
This Repository contains IIT Indore Lab COntent Logic Design Lab CS 256 , 4th Sem of CSE (Ques and Solution).
I hope it will help someone to understand where they stuck or some one who have no idea in same or related ques.
I used Quartus 15.1 .

Complete Question PDF's are there in there respective folders.



***************************************************************************************************************************************************


Questions are: -


*********************************************************************************************
LAB1:
*********************************************************************************************
Design the complete circuit above in one schematic file (Primary inputs of the above circuit 
are: X, Y, Z, C and D; Primary Output is F) in Quartus, where the component 1 should be 
coded in VHDL and component 2 designed in schematic.
**********************************************************************************************


*************************************************************************************************
LAB2: 
**************************************************************************************************
(1) Implementation of Simple Logic Functions

1. Implement a 3-input NAND function using 2-input NAND gates only, and draw a schematic 
diagram.

2. Determine how to implement a 2-input OR function using 2-input NAND gates only, and draw a 
schematic diagram. Also implement 2-input OR function using 2-input AND gates and inverters.

3. Implement the function Z = f (A, B) = A + BC using 2-input OR gate and 2-input AND gate.
(a) Implement the same function using only NAND gates.
(b) Make up a truth table for the function.
(c) Expand and simplify the Boolean equation to express Z as a sum of products in canonical form. 
Implement the sum of products notation using only NAND gates. 

*****************************************************************************************************

*****************************************************************************************************
(2) Implementation of a Customized Logic Function

6. Show the un-simplified logic equation for your customized function, (see next page), expressed as a 
sum of minterms.

7. Obtain the truth table for the function.

8. Simplify the function using K-map.

9. Convert the simplified logic equation into a NAND gate implementation. (Use of stand-alone
inverters is also allowed). Draw a schematic diagram for the implementation.
Customized Functions:
(One of the following customized functions will be assigned to you by your laboratory instructor)
1. F1 = ∑ (2, 7, 9,12,13,14,15)
2. F2 = ∑ (2, 4, 5, 6,11,12,14)
3. F3 = ∑ (2, 5, 7, 9,13,14,15)
4. F4 = ∑ (0, 4, 5, 8,10,12,15)
5. F5 = ∑ (0, 2, 7, 8, 9,12,13)
6. F6 = ∑ (0, 5, 8,10,11,12,14)
7. F7 = ∑ (3, 6, 8, 9,10,11,13)
8. F8 = ∑ (1, 2, 3, 6, 7,10,13)
9. F9 = ∑ (1, 6, 8, 9,10,12,14)
10. F10 = ∑ (1, 2, 3, 6, 7,10,13)
11. F11 = ∑ (0, 2, 4, 5, 6, 8,15)
12. F12 = ∑ (2, 3, 5, 6, 7, 8,10)
13. F13 = ∑ (0,1, 2, 4, 6, 9,10
*************************************************************************************************************  

*************************************************************************************************
LAB3: 
**************************************************************************************************
Adder and Subtractor Unit
**************************************************************************************************
1. Objectives:
-In this lab you will build a 4-bit adder-subtractor unit (ASU).
-You are asked to prepare and compile a VHDL file to implement the 4-bit ASU.
-The decoded output of the three significant bits of the ASU will consist of a set of four different 
-signals (ABCD-signals), which will be assigned individually. (See page 2 for various examples.)
***************************************************************************************************
2. Lab Preparation
1) Code a VHDL file to implement the ASU represented.
2) Minimize the logic expressions for your customized ABCD-signals. These minimized logic 
expressions are to be implemented as combinational circuit C in Figure 1 (shown below).
3) Modify the VHDL file obtained in 1) to implement the minimized logic expressions for ABCD 
signals.
4) Using Functional Simulator, verify the circuit described by the VHDL file obtained in 3). Observe 
the following signals: X3, X2, X1, X0, Y3, Y2, Y1, Y0, S3, S2, S1, S0, Cout, Cin
****************************************************************************************************
****************************************************************************************************
Lab 4:
****************************************************************************************************
Implement a 4-bit digital comparator using a structural VHDL model.

****************************************************************************************************
****************************************************************************************************
Lab 5:
****************************************************************************************************
(1) Implement BCD to seven-segment Decoder. 
(2) Implement 16x1 MUX using 2x1 Muxes only. 
(3) Implement 4x16 Decoder using 2x4 Decoders only.
****************************************************************************************************
