vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../CO_project.srcs/sources_1/ip/uart_bmpg_0/uart_bmpg.v" \
"../../../../CO_project.srcs/sources_1/ip/uart_bmpg_0/upg.v" \
"../../../../CO_project.srcs/sources_1/ip/uart_bmpg_0/sim/uart_bmpg_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

