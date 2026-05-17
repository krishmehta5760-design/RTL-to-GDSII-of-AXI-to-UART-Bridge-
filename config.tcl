set ::env(DESIGN_NAME) "axi2uart_bridge_top"
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PORT) "s_axi_aclk"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(BASE_SDC_FILE) "$::env(DESIGN_DIR)/constraints/axi2uart_bridge.sdc"
set ::env(FP_SIZING) "relative"
set ::env(FP_CORE_UTIL) 30
set ::env(PL_TARGET_DENSITY) 0.55
set ::env(GPL_CELL_PADDING) 4
set ::env(DPL_CELL_PADDING) 4
set ::env(SYNTH_STRATEGY) "AREA 0"
set ::env(MAX_FANOUT_CONSTRAINT) 6
set ::env(ROUTING_CORES) 4
set ::env(GRT_REPAIR_ANTENNAS) 1
set ::env(RUN_HEURISTIC_DIODE_INSERTION) 1
set ::env(DIODE_ON_PORTS) "in"
set ::env(RUN_CVC) 0
