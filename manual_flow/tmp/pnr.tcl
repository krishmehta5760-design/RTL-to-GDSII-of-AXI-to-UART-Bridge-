read_lef /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
read_lef /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
read_liberty /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog /openlane/designs/axi2uart_bridge_top/runs/manual/results/synth.v
link_design axi2uart_bridge_top
read_sdc /openlane/designs/axi2uart_bridge_top/constraints/axi2uart_bridge.sdc

initialize_floorplan -utilization 65 -aspect_ratio 1.0 -core_space {5 5 5 5} -site unithd
make_tracks
place_pins -hor_layers met3 -ver_layers met2

tapcell -endcap_cpp 2 -distance 13 -tapcell_master sky130_fd_sc_hd__tapvpwrvgnd_1 -endcap_master sky130_fd_sc_hd__decap_3

add_global_connection -net VPWR -pin_pattern VPWR -power
add_global_connection -net VPWR -pin_pattern VPB
add_global_connection -net VGND -pin_pattern VGND -ground
add_global_connection -net VGND -pin_pattern VNB
pdngen

global_placement -density 0.7
estimate_parasitics -placement
repair_design
detailed_placement
check_placement -verbose

set_wire_rc -clock -layer met5
clock_tree_synthesis -root_buf sky130_fd_sc_hd__clkbuf_16 -buf_list {sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_2 sky130_fd_sc_hd__clkbuf_1} -sink_clustering_enable
detailed_placement
estimate_parasitics -placement
repair_timing -hold

set_routing_layers -signal met1-met5 -clock met3-met5
global_route -guide_file /openlane/designs/axi2uart_bridge_top/runs/manual/tmp/global.guide -congestion_iterations 50
repair_antennas sky130_fd_sc_hd__diode_2

set block [ord::get_db_block]
foreach net [$block getNets] {
  if {[$net getSigType] == "GROUND" && [$net getName] != "VGND"} { $net setSigType SIGNAL }
  if {[$net getSigType] == "POWER" && [$net getName] != "VPWR"} { $net setSigType SIGNAL }
}

detailed_route -output_drc /openlane/designs/axi2uart_bridge_top/runs/manual/logs/drt_drc.rpt -bottom_routing_layer met1 -top_routing_layer met5 -verbose 1

write_def /openlane/designs/axi2uart_bridge_top/runs/manual/results/routed.def
write_verilog /openlane/designs/axi2uart_bridge_top/runs/manual/results/routed.v
exit
