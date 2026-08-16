create_clock -name clk_axi  -period 10.0 [get_ports {s_axi_aclk}]
create_clock -name clk_uart -period 100.0 [get_ports {uart_clk}]

set_clock_groups -asynchronous \
    -group [get_clocks {clk_axi}] \
    -group [get_clocks {clk_uart}]

set_input_delay  2.0 -clock clk_axi [get_ports {s_axi_awaddr s_axi_awvalid s_axi_wdata s_axi_wstrb s_axi_wvalid s_axi_bready}]
set_output_delay 2.0 -clock clk_axi [get_ports {s_axi_awready s_axi_wready s_axi_bresp s_axi_bvalid}]

set_output_delay 5.0 -clock clk_uart [get_ports {uart_tx_out}]

set_false_path -from [get_ports {s_axi_aresetn}]
set_false_path -from [get_ports {uart_rst_n}]
