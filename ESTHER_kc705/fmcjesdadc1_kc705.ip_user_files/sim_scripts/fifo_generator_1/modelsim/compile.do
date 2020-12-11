vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_2

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_1/sim/fifo_generator_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

