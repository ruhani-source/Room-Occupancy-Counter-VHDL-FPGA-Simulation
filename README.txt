Room Occupancy Counter System
=============================

Directory Contents:
-------------------
1. OccupancyCounter.vhd            - Main VHDL code
2. OccupancyCounter.do             - VHDL testbench for simulation
5. OccupancyCounter.xdc            - Xilinx constraints file for Nexys A7
6. runme.log(synth_1 and impl_1)   - Vivado synthesis and implementation log files
7. ruhani_kareer_40315722.pdf      - Tecnhical Report 
8. README.txt                      - This file


HOW TO USE MODELSIM TOOLS TO PERFORM VHDL SIMULATION
-----------------------------------------------------
Step1: Open a Linux Terminal
Step2: Enter: source /CMC/ENVIRONMENT/modelsim.vhd
      It is necessary to source the modelsim.env file every time you login in, or whenever you open a
      new terminal window.
Step3: Go in the directory where the .vhd and .do files are stored using the cd command
Step4: The Modelsim tool used to compile VHDL source code is called vcom 
       Enter: vcom OccupancyCounter.vhd
       A small message giving the version number of the tool will be displayed along with some information 
       pertaining to the VHDL code being compiled and you will be returned to the Linux prompt if your code contains no syntax errors.
Step5: To simulate the VHDL model, use the vsim command
       Enter: vsim work. <entity name>
Step6: Three windows will open. These are the Objects window, the main Modelsim simulation window and and Wave window.
Step7: In the Modelsim window, enter in the transcript terminal: do OccupancyCounter.do 
Step8: Observe the simulation results in the Wave Window


USE OF XILINX VIVADO TOOLS TO PERFORM SYNTHESIS AND IMPLEMENTATION 
-------------------------------------------------------------------
Step1: Open a Linux Terminal
Step2: To setup the user’s Linux environment to run the Vivado tools, enter from the Linux prommpt :
        source /CMC/tools/xilinx/Vivado_2018.2/Vivado/2018.2/settings64_CMC_central_license.csh
Step3: cd into your working directory where your files are stored
Step4: Start the Xilinx Vivado tools by invoking the < vivado & > command from the Linux prompt
Step5: From the main Vivado window, create a new Project targeting the Nexys A7 board
Step6: Add all VHDL files to the design sources.
Step7: Set the OccupancyCounter.xdc file as constraints target file
Step8: Run synthesis and implementation to see FPGA utilization and the RTL elaborated schematics
Step9: Create the Bitsream by selecting Generate Bitsream in the main Vivado Window
Step9: Attach a USB cable to PROG/UART jplug on the baord insert the other end of the USB cable to the computer
Step10: Program the FPGA board with the .bit file by selecting Open Hardware Manager in the main Vivado window


Author: Ruhani Kareer
Date: June 2025
-------------------------------------------------------------------------------------------




       


