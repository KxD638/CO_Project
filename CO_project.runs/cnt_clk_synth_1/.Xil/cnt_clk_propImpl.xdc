set_property SRC_FILE_INFO {cfile:c:/Users/dengkaixuan/vivado_project/CS202Project/CO_project.srcs/sources_1/ip/cnt_clk/cnt_clk.xdc rfile:../../../CO_project.srcs/sources_1/ip/cnt_clk/cnt_clk.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
