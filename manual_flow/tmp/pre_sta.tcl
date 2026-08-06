read_liberty /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog /openlane/designs/axi2uart_bridge_top/runs/manual/results/synth.v
link_design axi2uart_bridge_top
read_sdc /openlane/designs/axi2uart_bridge_top/constraints/axi2uart_bridge.sdc
report_checks -path_delay max -sort_by_slack
report_checks -path_delay min -sort_by_slack
report_tns
report_wns
exit
