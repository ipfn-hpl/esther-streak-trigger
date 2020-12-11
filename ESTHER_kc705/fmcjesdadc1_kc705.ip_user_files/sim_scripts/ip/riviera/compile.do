vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/home/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_eq.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_drp.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_rate.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_reset.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_sync.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gtp_pipe_rate.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gtp_pipe_drp.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gtp_pipe_reset.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_user.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pipe_wrapper.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_qpll_drp.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_qpll_reset.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_qpll_wrapper.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_rxeq_scan.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_top.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_core_top.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_rx_null_gen.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_rx_pipeline.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_rx.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_top.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_tx_pipeline.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_tx_thrtl_ctl.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_axi_basic_tx.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_7x.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_bram_7x.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_bram_top_7x.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_brams_7x.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_pipe_lane.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_pipe_misc.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie_pipe_pipeline.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gt_top.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gt_common.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gtp_cpllpd_ovrd.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gtx_cpllpd_ovrd.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gt_rx_valid_filter_7x.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_gt_wrapper.v" \
"../../../../esther-trigger-hdl/src/ip/source/pcie_7x_0_pcie2_top.v" \
"../../../../esther-trigger-hdl/src/ip/sim/pcie_7x_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

