read_lef /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
read_lef /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef
read_def /openlane/designs/axi2uart_bridge_top/runs/manual/results/routed.def
extract_parasitics \
  -ext_model_file /home/krish1002/pdk/sky130A/libs.tech/openlane/rules.openrcx.sky130A.nom.calibre
write_spef /openlane/designs/axi2uart_bridge_top/runs/manual/results/routed.spef
exit
