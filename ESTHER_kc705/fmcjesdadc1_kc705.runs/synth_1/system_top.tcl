# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config  -ruleid {1}  -id {Vivado 12-1790}  -string {{Evaluation} {features} {should} {NOT} {be} {used} {in} {production} {systems.}}  -new_severity {WARNING} 
set_msg_config  -ruleid {10}  -id {Place 30-73}  -string {{axi_spi}}  -new_severity {WARNING} 
set_msg_config  -ruleid {11}  -string {{PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY}}  -new_severity {WARNING} 
set_msg_config  -ruleid {2}  -id {BD 41-1343}  -new_severity {WARNING} 
set_msg_config  -ruleid {3}  -id {BD 41-1306}  -new_severity {WARNING} 
set_msg_config  -ruleid {4}  -id {BD 41-1276}  -severity {CRITICAL WARNING}  -new_severity {ERROR} 
set_msg_config  -ruleid {5}  -id {IP_Flow 19-3656}  -new_severity {INFO} 
set_msg_config  -ruleid {6}  -id {IP_Flow 19-4623}  -new_severity {INFO} 
set_msg_config  -ruleid {7}  -id {IP_Flow 19-459}  -new_severity {INFO} 
set_msg_config  -ruleid {8}  -id {Synth 8-3331}  -new_severity {INFO} 
set_msg_config  -ruleid {9}  -id {Designutils 20-3303}  -string {{HDPYFinalizeIO}}  -new_severity {INFO} 
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/francisco/kc705_changes/fmcjesdadc1_kc705.cache/wt [current_project]
set_property parent.project_path /home/francisco/kc705_changes/fmcjesdadc1_kc705.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:1.1 [current_project]
set_property ip_repo_paths /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/library [current_project]
set_property ip_output_repo /home/francisco/kc705_changes/fmcjesdadc1_kc705.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/shapi_stdrt_dev_inc.vh
read_verilog -library xil_defaultlib {
  /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/new/CFD.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO_DMA_TX_ENGINE.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO_EP.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO_EP_SHAPI_REGS.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO_RX_ENGINE.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/PIO_TO_CTRL.v
  /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/library/xilinx/common/ad_iobuf.v
  /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/library/common/ad_sysref_gen.v
  /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/projects/fmcjesdadc1/common/fmcjesdadc1_spi.v
  /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/new/mux3.v
  /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/new/n_trigger_gen.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/pci_dma_engine.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/pcie_7x_0_pipe_clock.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/pcie_7x_0_support.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/pcie_app_7x.v
  /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/imports/hdl/system_wrapper.v
  /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/new/threshold.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/pcie/xilinx_pcie_2_1_ep_7x.v
  /home/francisco/kc705_changes/esther-trigger-hdl/src/hdl/system_top.v
}
add_files /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_mb_0/system_sys_mb_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_mb_0/system_sys_mb_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_dlmb_0/system_sys_dlmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_ilmb_0/system_sys_ilmb_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_lmb_bram_0/system_sys_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_mb_debug_0/system_sys_mb_debug_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_mb_debug_0/system_sys_mb_debug_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_200m_rstgen_0/system_sys_200m_rstgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_sys_200m_rstgen_0/system_sys_200m_rstgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ddr_cntrl_0/system_axi_ddr_cntrl_0/user_design/constraints/system_axi_ddr_cntrl_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ddr_cntrl_0/system_axi_ddr_cntrl_0/user_design/constraints/system_axi_ddr_cntrl_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ddr_cntrl_0/system_axi_ddr_cntrl_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ethernet_0/system_axi_ethernet_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ethernet_0/system_axi_ethernet_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ethernet_0/system_axi_ethernet_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ethernet_0/system_axi_ethernet_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_iic_main_0/system_axi_iic_main_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_uart_0/system_axi_uart_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_uart_0/system_axi_uart_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_uart_0/system_axi_uart_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_timer_0/system_axi_timer_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_timer_0/system_axi_timer_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_lcd_0/system_axi_gpio_lcd_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_lcd_0/system_axi_gpio_lcd_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_lcd_0/system_axi_gpio_lcd_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_spi_0/system_axi_spi_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_spi_0/system_axi_spi_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_spi_0/system_axi_spi_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_spi_0/system_axi_spi_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_0/system_axi_gpio_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_0/system_axi_gpio_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_gpio_0/system_axi_gpio_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_intc_0/system_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_intc_0/system_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_intc_0/system_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_linear_flash_0/system_axi_linear_flash_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_linear_flash_0/system_axi_linear_flash_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_linear_flash_0/system_axi_linear_flash_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_12/bd_518a_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_21/bd_518a_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_27/bd_518a_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_36/bd_518a_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_43/bd_518a_s04a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_47/bd_518a_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_48/bd_518a_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_49/bd_518a_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_50/bd_518a_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_51/bd_518a_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_52/bd_518a_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_44/bd_518a_sawn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_45/bd_518a_swn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_46/bd_518a_sbn_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_37/bd_518a_sawn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_38/bd_518a_swn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_39/bd_518a_sbn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_28/bd_518a_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_29/bd_518a_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_30/bd_518a_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_31/bd_518a_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_32/bd_518a_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_22/bd_518a_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_23/bd_518a_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_13/bd_518a_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_14/bd_518a_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_15/bd_518a_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_16/bd_518a_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_17/bd_518a_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_4/bd_518a_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_5/bd_518a_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_6/bd_518a_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_7/bd_518a_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_8/bd_518a_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_1/bd_518a_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_1/bd_518a_psr0_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_2/bd_518a_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_2/bd_518a_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_3/bd_518a_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/bd_0/ip/ip_3/bd_518a_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_mem_interconnect_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_clock_mon_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_xfer_status_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/ad_rst_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_xfer_cntrl_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_clock_mon_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_xfer_status_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/ad_rst_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_xfer_cntrl_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ad9250_0_dma_0/system_axi_ad9250_0_dma_0_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ad9250_1_dma_0/system_axi_ad9250_1_dma_0_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_util_fmcjesdadc1_xcvr_0/util_adxcvr_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ad9250_jesd_rstgen_0/system_axi_ad9250_jesd_rstgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_axi_ad9250_jesd_rstgen_0/system_axi_ad9250_jesd_rstgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/xilinx/common/up_clock_mon_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_rx_axi_0/system_rx_axi_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_rx_axi_0/axi_jesd204_rx_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_rx_0/system_rx_0_constr.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_tier2_xbar_0_0/system_tier2_xbar_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_tier2_xbar_1_0/system_tier2_xbar_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_tier2_xbar_2_0/system_tier2_xbar_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/bd/system/system_ooc.xdc]

read_ip -quiet /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_ooc.xdc]

read_ip -quiet /home/francisco/kc705_changes/esther-trigger-hdl/src/ip/pcie_7x_0.xci
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/esther-trigger-hdl/src/ip/source/pcie_7x_0-PCIE_X0Y0.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/esther-trigger-hdl/src/ip/synth/pcie_7x_0_ooc.xdc]

read_ip -quiet /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1.xci
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_1/fifo_generator_1_ooc.xdc]

read_ip -quiet /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_2/fifo_generator_2.xci
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_2/fifo_generator_2.xdc]
set_property used_in_implementation false [get_files -all /home/francisco/kc705_changes/fmcjesdadc1_kc705.srcs/sources_1/ip/fifo_generator_2/fifo_generator_2_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/francisco/kc705_changes/esther-trigger-hdl/src/constraints/kc705_sma_constr.xdc
set_property used_in_implementation false [get_files /home/francisco/kc705_changes/esther-trigger-hdl/src/constraints/kc705_sma_constr.xdc]

read_xdc /home/francisco/kc705_changes/esther-trigger-hdl/src/constraints/xilinx_pcie_7x_ep_x4g2.xdc
set_property used_in_implementation false [get_files /home/francisco/kc705_changes/esther-trigger-hdl/src/constraints/xilinx_pcie_7x_ep_x4g2.xdc]

read_xdc /home/francisco/kc705_changes/system_constr.xdc
set_property used_in_implementation false [get_files /home/francisco/kc705_changes/system_constr.xdc]

read_xdc /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/projects/common/kc705/kc705_system_constr.xdc
set_property used_in_implementation false [get_files /home/bernardo/FPGA/ESTHER_TRIGGER/hdl/projects/common/kc705/kc705_system_constr.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top system_top -part xc7k325tffg900-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_top_utilization_synth.rpt -pb system_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
