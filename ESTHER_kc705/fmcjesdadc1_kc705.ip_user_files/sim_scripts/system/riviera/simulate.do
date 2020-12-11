onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -L xilinx_vip -L xil_defaultlib -L xpm -L microblaze_v10_0_7 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_15 -L blk_mem_gen_v8_4_1 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_14 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L lib_bmg_v1_0_10 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L axi_ethernetlite_v3_0_15 -L lib_pkg_v1_0_2 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_20 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_21 -L axi_timer_v2_0_19 -L axi_gpio_v2_0_19 -L dist_mem_gen_v8_0_12 -L axi_quad_spi_v3_2_16 -L axi_intc_v4_1_11 -L xlconcat_v2_1_1 -L emc_common_v3_0_5 -L axi_emc_v3_0_17 -L xlconstant_v1_1_5 -L smartconnect_v1_0 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_17 -L axi_data_fifo_v2_1_16 -L axi_crossbar_v2_1_18 -L axi_protocol_converter_v2_1_17 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {system.udo}

run -all

endsim

quit -force