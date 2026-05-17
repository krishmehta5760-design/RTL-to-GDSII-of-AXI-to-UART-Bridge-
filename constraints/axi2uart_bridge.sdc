# ============================================================
# SDC (Synopsys Design Constraints) for AXI4-Lite to UART Bridge
# This file is used by OpenLane / OpenSTA for timing analysis.
# ============================================================

# ------------------------------------------------------------
# 1. DEFINE THE TWO CLOCKS
# ------------------------------------------------------------
# Fast AXI system clock: 100 MHz = 10 ns period
create_clock -name clk_axi  -period 10.0 [get_ports {s_axi_aclk}]

# Slow UART baud clock: 10 MHz = 100 ns period
create_clock -name clk_uart -period 100.0 [get_ports {uart_clk}]

# ------------------------------------------------------------
# 2. DECLARE CLOCKS AS ASYNCHRONOUS
# ------------------------------------------------------------
# These two clocks have NO phase relationship. They come from
# different oscillators. Telling the timing tool they are
# asynchronous prevents it from trying to analyze cross-domain
# paths (which would always fail timing and block your design).
set_clock_groups -asynchronous \
    -group [get_clocks {clk_axi}] \
    -group [get_clocks {clk_uart}]

# ------------------------------------------------------------
# 3. INPUT/OUTPUT DELAYS
# ------------------------------------------------------------
# These tell the timing tool how much time signals take to 
# arrive at our inputs or leave our outputs (board-level delay).
# Using conservative estimates.

# AXI domain inputs (from the CPU / interconnect)
set_input_delay  2.0 -clock clk_axi [get_ports {s_axi_aw* s_axi_w* s_axi_bready}]

# AXI domain outputs (back to the CPU / interconnect)
set_output_delay 2.0 -clock clk_axi [get_ports {s_axi_awready s_axi_wready s_axi_b*}]

# UART domain
set_input_delay  5.0 -clock clk_uart [get_ports {uart_rst_n}]
set_output_delay 5.0 -clock clk_uart [get_ports {uart_tx_out}]

# ------------------------------------------------------------
# 4. FALSE PATHS ON RESET (Optional but recommended)
# ------------------------------------------------------------
# Reset signals are asynchronous by nature. Don't time them.
set_false_path -from [get_ports {s_axi_aresetn}]
set_false_path -from [get_ports {uart_rst_n}]
