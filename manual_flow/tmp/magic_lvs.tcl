tech load /home/krish1002/pdk/sky130A/libs.tech/magic/sky130A.tech
gds read /openlane/designs/axi2uart_bridge_top/runs/manual/results/axi2uart_bridge_top.gds
load axi2uart_bridge_top
extract all
ext2spice lvs
ext2spice -o /openlane/designs/axi2uart_bridge_top/runs/manual/results/layout.spice
quit -noprompt
