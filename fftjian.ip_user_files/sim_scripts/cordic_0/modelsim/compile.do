vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93 \
"../../../../fftjian.srcs/sources_1/ip/cordic_0/sim/cordic_0.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

