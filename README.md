# Room-Occupancy-Counter-VHDL-FPGA-Simulation
This project implements a digital system in VHDL that accurately tracks the number of people in a room using two photocell-based binary sensors one at the entrance and one at the exit. The system maintains a running count of occupants, compares it against a programmable 8-bit maximum capacity, and activates a max capacity signal once it is reached.

Key features:
🚪 Entry/Exit Detection: Photocell sensors trigger binary signals for real-time counting.
📈 Max Capacity Logic: Custom threshold set via 8-bit input; triggers alert when full.
🔁 Reset Capability: Reset signal restores system to initial state for reusability.
⚙️ Fully Modular Design: Built using VHDL components including counters, flip-flops, MUXes, and comparators.
🧪 Testbench & Simulation: Comprehensive testbench with defined test cases for functional and edge case validation.
💻 Simulation & Synthesis: Designed for Xilinx Nexys A7 FPGA using Vivado; includes synthesis and simulation logs.

📁 Structure
src/ – VHDL source files
tb/ – Testbench files
sim/ – Simulation results
synth/ – Synthesis logs and reports
docs/ – Design diagrams and documentation

🚀 Tools Used
Language: VHDL
Simulator: Xilinx Vivado
Target FPGA: Nexys A7
Development Environment: Vivado Design Suite

📌 Use Case

Ideal for demonstrating digital logic design, state machine implementation, and FPGA simulation workflows for academic or professional portfolios.
