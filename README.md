# RTL-to-GLS-Implementation-of-Low-Power-Configurable-Multi-Clock-Digital-System
It is responsible of receiving commands through UART receiver to do different system functions as register file reading/writing or doing some processing using ALU block and send result as well as CRC bits of result using 4 bytes frame through UART transmitter communication protocol.                 
Project phases: 
-	RTL Design from Scratch of system blocks (ALU, Register File, Asynchronous FIFO, Integer Clock Divider, Clock Gating, Synchronizers, Main Controller, UART TX, UART RX).
-	Integrate and verify functionality through self-checking testbench. 
-	Constraining the system using synthesis TCL scripts.
-	Synthesize and optimize the design using design compiler tool.
-	Analyze Timing paths and fix setup and hold violations.
-	Verify Functionality equivalence using Formality tool
-	Physical implementation of the system passing through ASIC flow phases and generate the GDS File.
-	Verify functionality post-layout considering the actual delays. 




std library used (TSMC's 130nm (0.13µm) CMOS): 
scmetro_tsmc_cl013g_rvt_ss_1p08v_125c
  
