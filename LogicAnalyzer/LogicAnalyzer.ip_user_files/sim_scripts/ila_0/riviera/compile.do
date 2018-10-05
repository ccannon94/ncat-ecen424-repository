vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../LogicAnalyzer.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../LogicAnalyzer.srcs/sources_1/ip/ila_0/hdl/verilog" \
"C:/Xilinx2017v4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx2017v4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx2017v4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../LogicAnalyzer.srcs/sources_1/ip/ila_0/sim/ila_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

