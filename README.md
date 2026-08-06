# AXI4-Lite to UART Bridge: RTL-to-GDSII Flow

This repository contains the complete design, verification, and physical implementation (RTL-to-GDSII) of a high-performance **AXI4-Lite to UART Bridge**. The project is implemented using Verilog, verified with a comprehensive self-checking testbench, and taken through the **OpenLane** physical design flow targeting the **Skywater 130nm (sky130A)** Process Design Kit (PDK).

Achieved **DRC/LVS clean signoff** with positive timing slack across multiple clock domains.

## 🌟 Key Features

- **Standard AXI4-Lite Slave Interface:** Operates in a 100 MHz fast clock domain.
- **32-bit to 8-bit Byte Unpacking:** Advanced FSM handles 32-bit AXI writes, unpacking them into 4 consecutive 8-bit byte writes.
- **WSTRB (Write Strobe) Support:** Fully supports partial word writes, ignoring masked bytes (critical for C firmware compatibility).
- **Clock Domain Crossing (CDC):** Safely transfers data from the 100 MHz AXI domain to the 10 MHz UART domain using a robust **Asynchronous FIFO** based on Clifford E. Cummings' architecture (Gray-code pointers, 2-flop synchronizers).
- **UART Transmitter:** Serializes data at a standard 115200 baud rate (configurable via parameters).
- **Multi-Clock Constraints:** Proper `set_clock_groups -asynchronous` constraints defined in SDC to prevent false timing violations during physical design.

## 🏗️ Hardware Architecture

1. **`axi4lite_slave.v` (Domain 1 - 100 MHz):** Accepts 32-bit writes from the CPU. A state machine evaluates the `WSTRB` signal and sequentially pushes valid bytes into the FIFO.
2. **`async_fifo.v` (CDC Bridge):** A 16-byte deep asynchronous FIFO that bridges the fast AXI clock and the slow UART clock.
3. **`uart_tx.v` (Domain 2 - 10 MHz):** Pops data from the FIFO and serializes it out over the `uart_tx_out` pin using standard 8N1 UART protocol.
4. **`axi2uart_bridge_top.v`:** The top-level module containing a clean, race-free Pop FSM that safely pulls data from the FIFO and feeds it to the UART.

## 📊 Physical Implementation Results (OpenLane / Sky130)

<img width="793" height="786" alt="image" src="https://github.com/user-attachments/assets/960419be-584e-465a-aa5e-b9761048acdf" />

The design was hardened using the OpenLane v1 flow. 

| Metric | Result |
|--------|--------|
| **Technology Node** | Skywater 130nm (sky130_fd_sc_hd) |
| **DRC Violations** | **0** (Clean) ✅ |
| **LVS Errors** | **0** (Clean) ✅ |
| **Routing / Antenna Violations** | **0** ✅ |
| **Timing (WNS)** | **0.0 ns** (Timing Met) ✅ |
| **Final Cell Count** | 718 cells |
| **Chip Area** | 12,050 µm² (0.047 mm²) |
| **Core Utilization** | 35.5% |

## 🧪 Simulation & Verification

The project includes a robust, self-checking testbench (`tb_axi2uart_bridge.v`) that operates a scoreboard to verify data integrity across clock domains. It features a clock-edge-based UART receiver to eliminate timing drift.

**Tested Scenarios (23/23 PASS):**
1. Full 32-bit word writes (WSTRB = `4'b1111`)
2. Partial writes (WSTRB = `4'b0011`)
3. Single byte writes (WSTRB = `4'b0001`)
4. Back-to-back rapid AXI writes
5. FIFO Burst Stress testing

### Running the Simulation
Requirements: `iverilog`, `gtkwave`
```bash
make clean
make sim
make wave  # To open GTKWave
```

## 🚀 Running the OpenLane Flow

To replicate the physical design flow using OpenLane (Docker-based v1):

1. Copy the `src/`, `constraints/`, and `config.tcl` files into your OpenLane `designs/axi2uart_bridge_top` directory.
2. Launch the OpenLane Docker container.
3. Run the flow:
```bash
./flow.tcl -design axi2uart_bridge_top
```

## 📂 Repository Structure

```text
├── src/
│   ├── axi2uart_bridge_top.v  # Top-level integration
│   ├── axi4lite_slave.v       # 32-bit AXI unpacker
│   ├── async_fifo.v           # CDC Async FIFO
│   └── uart_tx.v              # UART transmitter
├── tb/
│   └── tb_axi2uart_bridge.v   # Self-checking testbench
├── constraints/
│   └── axi2uart_bridge.sdc    # SDC timing constraints
├── config.tcl                 # OpenLane v1 configuration
├── Makefile                   # Simulation shortcuts
└── README.md
```
