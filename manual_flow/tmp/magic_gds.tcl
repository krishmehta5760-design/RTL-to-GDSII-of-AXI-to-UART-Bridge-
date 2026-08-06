tech load /home/krish1002/pdk/sky130A/libs.tech/magic/sky130A.tech
gds read /home/krish1002/pdk/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
def read /openlane/designs/axi2uart_bridge_top/runs/manual/results/routed.def
load axi2uart_bridge_top
select top cell
drc catchall
drc count
gds write /openlane/designs/axi2uart_bridge_top/runs/manual/results/axi2uart_bridge_top1.gds
puts "=============================="
puts " GDS WRITTEN SUCCESSFULLY!"
puts "=============================="
quit -noprompt
