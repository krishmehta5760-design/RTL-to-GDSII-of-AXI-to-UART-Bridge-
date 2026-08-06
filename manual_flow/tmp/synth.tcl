read_verilog /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd__blackbox.v
read_verilog /openlane/designs/axi2uart_bridge_top/src/axi4lite_slave.v
read_verilog /openlane/designs/axi2uart_bridge_top/src/async_fifo.v
read_verilog /openlane/designs/axi2uart_bridge_top/src/uart_tx.v
read_verilog /openlane/designs/axi2uart_bridge_top/src/axi2uart_bridge_top.v
synth -top axi2uart_bridge_top
dfflibmap -liberty /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
stat -liberty /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
write_verilog -noattr /openlane/designs/axi2uart_bridge_top/runs/manual/results/synth.v
