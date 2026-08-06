# AXI4-Lite to UART Bridge — RTL to GDSII

This project implements a hardware bridge that connects a high-speed, memory-mapped CPU bus (AXI4-Lite) to a slow, serial communication peripheral (UART). 

What makes this repository unique is that it doesn't stop at simulation. The design was pushed through a **complete RTL-to-GDSII physical ASIC flow** using the open-source SkyWater 130nm PDK. Rather than using an automated push-button script like OpenLane, the OpenROAD physical design flow was **executed manually step-by-step** to deeply understand floorplanning, power planning, clock domain crossing, and routing constraints.

---

## 🏗️ Architecture

The system consists of three main modules:

1. **AXI4-Lite Slave FSM:** 
   Handles the strict AXI valid/ready handshake. Because AXI operates on 32-bit data words and UART transmits 8-bit bytes, this module unpacks the 32-bit word into four 8-bit bytes sequentially over four clock cycles using AXI write strobes (`WSTRB`).
2. **Asynchronous FIFO (CDC):** 
   The AXI bus operates at a much higher frequency (e.g., 100 MHz) than the UART logic (e.g., 10 MHz). To safely pass data across these two asynchronous clock domains without metastability, an Async FIFO was implemented using Cummings' Gray-code pointer synchronization.
3. **UART Transmitter:** 
   Pops bytes from the FIFO and shifts them out serially with standard Start and Stop bits.

---

## 🛠️ Physical Design: The Manual ASIC Flow

This design was laid out on the **SkyWater 130nm (sky130_fd_sc_hd)** standard cell library. The physical design was scripted manually via custom TCL scripts (`pnr.tcl`) to interact directly with the OpenROAD toolchain.

<img width="788" height="794" alt="image" src="https://github.com/user-attachments/assets/4530f627-85bd-4f1e-8c3c-17c910458883" />


### Flow Highlights:
* **Synthesis (Yosys):** Mapped abstract Verilog logic (flip-flops, combinational gates) to the physical Sky130 standard cells.
* **Floorplanning:** Optimized the core to a **65% utilization**. Lower utilizations (e.g., 30%) caused the placement engine to cluster cells to minimize wirelength, resulting in a lopsided layout. 65% provided a beautifully balanced placement.
* **Pin Placement:** Constrained I/O pins to `met2` (vertical) and `met3` (horizontal) to avoid interfering with internal standard cell routing (`met1`) and the power grid (`met4`/`met5`).
* **Power Distribution Network (PDN):** Solved standard cell floating power pin issues by globally connecting `VPWR`/`VPB` and `VGND`/`VNB`. Built a hierarchical grid with thick power straps on `met4`/`met5` and cell-level rails on `met1`.
* **Clock Tree Synthesis & Routing:** Handled clock buffering and routed the design using TritonRoute, solving database net-type issues to achieve a 100% clean route.
* **Signoff:** Parasitics extracted via OpenRCX and timed via OpenSTA. LVS verified with Netgen and final GDSII streamed out via Magic.

---

## 📊 Final Tape-Out Metrics

| Metric | Result |
| :--- | :--- |
| **Technology Node** | SkyWater 130nm (`sky130A`) |
| **Die Area** | 10,133.5 µm² |
| **Core Utilization** | 65.0 % |
| **Worst Negative Slack (WNS)** | +0.00 ns (Timing Clean) |
| **DRC Violations** | 0 |
| **LVS Status** | Clean |

---

## 🚀 Future Improvements

* **Address Decoding:** Utilize the `AWADDR` channel to decode multiple memory-mapped registers (e.g., Baud Rate Divider Configuration, Status Registers).
* **AXI Read Channels:** Implement the `AR` and `R` channels to allow the CPU to read incoming serial data.
* **UART Receiver:** Add an RX module and RX FIFO to support full-duplex communication.
