-makelib ies_lib/xil_defaultlib -sv \
  "C:/CS/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/CS/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/CS/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../CO_project.srcs/sources_1/ip/cnt_clk/cnt_clk_clk_wiz.v" \
  "../../../../CO_project.srcs/sources_1/ip/cnt_clk/cnt_clk.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

