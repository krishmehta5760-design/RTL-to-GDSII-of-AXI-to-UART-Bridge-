# ============================================================
# Makefile for AXI4-Lite to UART Bridge
# Simulation using Icarus Verilog + GTKWave
# ============================================================

# Source files
SRC_DIR = src
TB_DIR  = tb

SRCS = $(SRC_DIR)/uart_tx.v \
       $(SRC_DIR)/async_fifo.v \
       $(SRC_DIR)/axi4lite_slave.v \
       $(SRC_DIR)/axi2uart_bridge_top.v

TB   = $(TB_DIR)/tb_axi2uart_bridge.v

# Output
SIM_OUT = sim_axi2uart
VCD_OUT = axi2uart_bridge.vcd

# ============================================================
# Targets
# ============================================================

# Default: compile + run
.PHONY: all
all: sim

# Compile with Icarus Verilog
$(SIM_OUT): $(SRCS) $(TB)
	iverilog -g2012 -o $(SIM_OUT) $(TB) $(SRCS)

# Run simulation
.PHONY: sim
sim: $(SIM_OUT)
	vvp $(SIM_OUT)

# Open waveform viewer
.PHONY: wave
wave: sim
	gtkwave $(VCD_OUT) &

# Clean up
.PHONY: clean
clean:
	rm -f $(SIM_OUT) $(VCD_OUT)

# Help
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make sim   - Compile and run simulation"
	@echo "  make wave  - Run simulation and open GTKWave"
	@echo "  make clean - Remove generated files"
