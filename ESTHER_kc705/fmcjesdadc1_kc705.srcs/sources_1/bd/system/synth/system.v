//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Tue Sep 17 13:21:26 2019
//Host        : marte-sb1 running 64-bit Debian GNU/Linux 10 (buster)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_ad9250_jesd_imp_YL5HSW
   (device_clk,
    irq,
    phy_en_char_align,
    rx_data_tdata,
    rx_data_tvalid,
    rx_eof,
    rx_phy0_rxcharisk,
    rx_phy0_rxdata,
    rx_phy0_rxdisperr,
    rx_phy0_rxnotintable,
    rx_phy1_rxcharisk,
    rx_phy1_rxdata,
    rx_phy1_rxdisperr,
    rx_phy1_rxnotintable,
    rx_phy2_rxcharisk,
    rx_phy2_rxdata,
    rx_phy2_rxdisperr,
    rx_phy2_rxnotintable,
    rx_phy3_rxcharisk,
    rx_phy3_rxdata,
    rx_phy3_rxdisperr,
    rx_phy3_rxnotintable,
    rx_sof,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arprot,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    sync,
    sysref);
  input device_clk;
  output irq;
  output phy_en_char_align;
  output [127:0]rx_data_tdata;
  output rx_data_tvalid;
  output [3:0]rx_eof;
  input [3:0]rx_phy0_rxcharisk;
  input [31:0]rx_phy0_rxdata;
  input [3:0]rx_phy0_rxdisperr;
  input [3:0]rx_phy0_rxnotintable;
  input [3:0]rx_phy1_rxcharisk;
  input [31:0]rx_phy1_rxdata;
  input [3:0]rx_phy1_rxdisperr;
  input [3:0]rx_phy1_rxnotintable;
  input [3:0]rx_phy2_rxcharisk;
  input [31:0]rx_phy2_rxdata;
  input [3:0]rx_phy2_rxdisperr;
  input [3:0]rx_phy2_rxnotintable;
  input [3:0]rx_phy3_rxcharisk;
  input [31:0]rx_phy3_rxdata;
  input [3:0]rx_phy3_rxdisperr;
  input [3:0]rx_phy3_rxnotintable;
  output [3:0]rx_sof;
  input s_axi_aclk;
  input [31:0]s_axi_araddr;
  input s_axi_aresetn;
  input [2:0]s_axi_arprot;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output [0:0]sync;
  input sysref;

  wire device_clk_1;
  wire rx_axi_core_reset;
  wire rx_axi_irq;
  wire [7:0]rx_axi_rx_cfg_beats_per_multiframe;
  wire [7:0]rx_axi_rx_cfg_buffer_delay;
  wire rx_axi_rx_cfg_buffer_early_release;
  wire rx_axi_rx_cfg_disable_char_replacement;
  wire rx_axi_rx_cfg_disable_scrambler;
  wire [2:0]rx_axi_rx_cfg_err_statistics_mask;
  wire rx_axi_rx_cfg_err_statistics_reset;
  wire [3:0]rx_axi_rx_cfg_lanes_disable;
  wire [0:0]rx_axi_rx_cfg_links_disable;
  wire [7:0]rx_axi_rx_cfg_lmfc_offset;
  wire [7:0]rx_axi_rx_cfg_octets_per_frame;
  wire rx_axi_rx_cfg_sysref_disable;
  wire rx_axi_rx_cfg_sysref_oneshot;
  wire [3:0]rx_phy0_1_rxcharisk;
  wire [31:0]rx_phy0_1_rxdata;
  wire [3:0]rx_phy0_1_rxdisperr;
  wire [3:0]rx_phy0_1_rxnotintable;
  wire [3:0]rx_phy1_1_rxcharisk;
  wire [31:0]rx_phy1_1_rxdata;
  wire [3:0]rx_phy1_1_rxdisperr;
  wire [3:0]rx_phy1_1_rxnotintable;
  wire [3:0]rx_phy2_1_rxcharisk;
  wire [31:0]rx_phy2_1_rxdata;
  wire [3:0]rx_phy2_1_rxdisperr;
  wire [3:0]rx_phy2_1_rxnotintable;
  wire [3:0]rx_phy3_1_rxcharisk;
  wire [31:0]rx_phy3_1_rxdata;
  wire [3:0]rx_phy3_1_rxdisperr;
  wire [3:0]rx_phy3_1_rxnotintable;
  wire rx_phy_en_char_align;
  wire [127:0]rx_rx_data;
  wire [3:0]rx_rx_eof;
  wire rx_rx_event_sysref_alignment_error;
  wire rx_rx_event_sysref_edge;
  wire [7:0]rx_rx_ilas_config_addr;
  wire [127:0]rx_rx_ilas_config_data;
  wire [3:0]rx_rx_ilas_config_valid;
  wire [3:0]rx_rx_sof;
  wire [1:0]rx_rx_status_ctrl_state;
  wire [127:0]rx_rx_status_err_statistics_cnt;
  wire [7:0]rx_rx_status_lane_cgs_state;
  wire [3:0]rx_rx_status_lane_ifs_ready;
  wire [55:0]rx_rx_status_lane_latency;
  wire rx_rx_valid;
  wire [0:0]rx_sync;
  wire [31:0]s_axi_1_ARADDR;
  wire [2:0]s_axi_1_ARPROT;
  wire s_axi_1_ARREADY;
  wire s_axi_1_ARVALID;
  wire [31:0]s_axi_1_AWADDR;
  wire [2:0]s_axi_1_AWPROT;
  wire s_axi_1_AWREADY;
  wire s_axi_1_AWVALID;
  wire s_axi_1_BREADY;
  wire [1:0]s_axi_1_BRESP;
  wire s_axi_1_BVALID;
  wire [31:0]s_axi_1_RDATA;
  wire s_axi_1_RREADY;
  wire [1:0]s_axi_1_RRESP;
  wire s_axi_1_RVALID;
  wire [31:0]s_axi_1_WDATA;
  wire s_axi_1_WREADY;
  wire [3:0]s_axi_1_WSTRB;
  wire s_axi_1_WVALID;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire sysref_1;

  assign device_clk_1 = device_clk;
  assign irq = rx_axi_irq;
  assign phy_en_char_align = rx_phy_en_char_align;
  assign rx_data_tdata[127:0] = rx_rx_data;
  assign rx_data_tvalid = rx_rx_valid;
  assign rx_eof[3:0] = rx_rx_eof;
  assign rx_phy0_1_rxcharisk = rx_phy0_rxcharisk[3:0];
  assign rx_phy0_1_rxdata = rx_phy0_rxdata[31:0];
  assign rx_phy0_1_rxdisperr = rx_phy0_rxdisperr[3:0];
  assign rx_phy0_1_rxnotintable = rx_phy0_rxnotintable[3:0];
  assign rx_phy1_1_rxcharisk = rx_phy1_rxcharisk[3:0];
  assign rx_phy1_1_rxdata = rx_phy1_rxdata[31:0];
  assign rx_phy1_1_rxdisperr = rx_phy1_rxdisperr[3:0];
  assign rx_phy1_1_rxnotintable = rx_phy1_rxnotintable[3:0];
  assign rx_phy2_1_rxcharisk = rx_phy2_rxcharisk[3:0];
  assign rx_phy2_1_rxdata = rx_phy2_rxdata[31:0];
  assign rx_phy2_1_rxdisperr = rx_phy2_rxdisperr[3:0];
  assign rx_phy2_1_rxnotintable = rx_phy2_rxnotintable[3:0];
  assign rx_phy3_1_rxcharisk = rx_phy3_rxcharisk[3:0];
  assign rx_phy3_1_rxdata = rx_phy3_rxdata[31:0];
  assign rx_phy3_1_rxdisperr = rx_phy3_rxdisperr[3:0];
  assign rx_phy3_1_rxnotintable = rx_phy3_rxnotintable[3:0];
  assign rx_sof[3:0] = rx_rx_sof;
  assign s_axi_1_ARADDR = s_axi_araddr[31:0];
  assign s_axi_1_ARPROT = s_axi_arprot[2:0];
  assign s_axi_1_ARVALID = s_axi_arvalid;
  assign s_axi_1_AWADDR = s_axi_awaddr[31:0];
  assign s_axi_1_AWPROT = s_axi_awprot[2:0];
  assign s_axi_1_AWVALID = s_axi_awvalid;
  assign s_axi_1_BREADY = s_axi_bready;
  assign s_axi_1_RREADY = s_axi_rready;
  assign s_axi_1_WDATA = s_axi_wdata[31:0];
  assign s_axi_1_WSTRB = s_axi_wstrb[3:0];
  assign s_axi_1_WVALID = s_axi_wvalid;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_arready = s_axi_1_ARREADY;
  assign s_axi_awready = s_axi_1_AWREADY;
  assign s_axi_bresp[1:0] = s_axi_1_BRESP;
  assign s_axi_bvalid = s_axi_1_BVALID;
  assign s_axi_rdata[31:0] = s_axi_1_RDATA;
  assign s_axi_rresp[1:0] = s_axi_1_RRESP;
  assign s_axi_rvalid = s_axi_1_RVALID;
  assign s_axi_wready = s_axi_1_WREADY;
  assign sync[0] = rx_sync;
  assign sysref_1 = sysref;
  system_rx_0 rx
       (.cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .cfg_links_disable(rx_axi_rx_cfg_links_disable),
        .cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .clk(device_clk_1),
        .ctrl_err_statistics_mask(rx_axi_rx_cfg_err_statistics_mask),
        .ctrl_err_statistics_reset(rx_axi_rx_cfg_err_statistics_reset),
        .event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .event_sysref_edge(rx_rx_event_sysref_edge),
        .ilas_config_addr(rx_rx_ilas_config_addr),
        .ilas_config_data(rx_rx_ilas_config_data),
        .ilas_config_valid(rx_rx_ilas_config_valid),
        .phy_charisk({rx_phy3_1_rxcharisk,rx_phy2_1_rxcharisk,rx_phy1_1_rxcharisk,rx_phy0_1_rxcharisk}),
        .phy_data({rx_phy3_1_rxdata,rx_phy2_1_rxdata,rx_phy1_1_rxdata,rx_phy0_1_rxdata}),
        .phy_disperr({rx_phy3_1_rxdisperr,rx_phy2_1_rxdisperr,rx_phy1_1_rxdisperr,rx_phy0_1_rxdisperr}),
        .phy_en_char_align(rx_phy_en_char_align),
        .phy_notintable({rx_phy3_1_rxnotintable,rx_phy2_1_rxnotintable,rx_phy1_1_rxnotintable,rx_phy0_1_rxnotintable}),
        .reset(rx_axi_core_reset),
        .rx_data(rx_rx_data),
        .rx_eof(rx_rx_eof),
        .rx_sof(rx_rx_sof),
        .rx_valid(rx_rx_valid),
        .status_ctrl_state(rx_rx_status_ctrl_state),
        .status_err_statistics_cnt(rx_rx_status_err_statistics_cnt),
        .status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .status_lane_latency(rx_rx_status_lane_latency),
        .sync(rx_sync),
        .sysref(sysref_1));
  system_rx_axi_0 rx_axi
       (.core_cfg_beats_per_multiframe(rx_axi_rx_cfg_beats_per_multiframe),
        .core_cfg_buffer_delay(rx_axi_rx_cfg_buffer_delay),
        .core_cfg_buffer_early_release(rx_axi_rx_cfg_buffer_early_release),
        .core_cfg_disable_char_replacement(rx_axi_rx_cfg_disable_char_replacement),
        .core_cfg_disable_scrambler(rx_axi_rx_cfg_disable_scrambler),
        .core_cfg_lanes_disable(rx_axi_rx_cfg_lanes_disable),
        .core_cfg_links_disable(rx_axi_rx_cfg_links_disable),
        .core_cfg_lmfc_offset(rx_axi_rx_cfg_lmfc_offset),
        .core_cfg_octets_per_frame(rx_axi_rx_cfg_octets_per_frame),
        .core_cfg_sysref_disable(rx_axi_rx_cfg_sysref_disable),
        .core_cfg_sysref_oneshot(rx_axi_rx_cfg_sysref_oneshot),
        .core_clk(device_clk_1),
        .core_ctrl_err_statistics_mask(rx_axi_rx_cfg_err_statistics_mask),
        .core_ctrl_err_statistics_reset(rx_axi_rx_cfg_err_statistics_reset),
        .core_event_sysref_alignment_error(rx_rx_event_sysref_alignment_error),
        .core_event_sysref_edge(rx_rx_event_sysref_edge),
        .core_ilas_config_addr(rx_rx_ilas_config_addr),
        .core_ilas_config_data(rx_rx_ilas_config_data),
        .core_ilas_config_valid(rx_rx_ilas_config_valid),
        .core_reset(rx_axi_core_reset),
        .core_reset_ext(1'b0),
        .core_status_ctrl_state(rx_rx_status_ctrl_state),
        .core_status_err_statistics_cnt(rx_rx_status_err_statistics_cnt),
        .core_status_lane_cgs_state(rx_rx_status_lane_cgs_state),
        .core_status_lane_ifs_ready(rx_rx_status_lane_ifs_ready),
        .core_status_lane_latency(rx_rx_status_lane_latency),
        .irq(rx_axi_irq),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_1_ARADDR[13:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arprot(s_axi_1_ARPROT),
        .s_axi_arready(s_axi_1_ARREADY),
        .s_axi_arvalid(s_axi_1_ARVALID),
        .s_axi_awaddr(s_axi_1_AWADDR[13:0]),
        .s_axi_awprot(s_axi_1_AWPROT),
        .s_axi_awready(s_axi_1_AWREADY),
        .s_axi_awvalid(s_axi_1_AWVALID),
        .s_axi_bready(s_axi_1_BREADY),
        .s_axi_bresp(s_axi_1_BRESP),
        .s_axi_bvalid(s_axi_1_BVALID),
        .s_axi_rdata(s_axi_1_RDATA),
        .s_axi_rready(s_axi_1_RREADY),
        .s_axi_rresp(s_axi_1_RRESP),
        .s_axi_rvalid(s_axi_1_RVALID),
        .s_axi_wdata(s_axi_1_WDATA),
        .s_axi_wready(s_axi_1_WREADY),
        .s_axi_wstrb(s_axi_1_WSTRB),
        .s_axi_wvalid(s_axi_1_WVALID));
endmodule

module i00_couplers_imp_KQSTVX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i00_couplers_to_i00_couplers_ARADDR;
  wire [2:0]i00_couplers_to_i00_couplers_ARPROT;
  wire [0:0]i00_couplers_to_i00_couplers_ARREADY;
  wire [0:0]i00_couplers_to_i00_couplers_ARVALID;
  wire [31:0]i00_couplers_to_i00_couplers_AWADDR;
  wire [2:0]i00_couplers_to_i00_couplers_AWPROT;
  wire [0:0]i00_couplers_to_i00_couplers_AWREADY;
  wire [0:0]i00_couplers_to_i00_couplers_AWVALID;
  wire [0:0]i00_couplers_to_i00_couplers_BREADY;
  wire [1:0]i00_couplers_to_i00_couplers_BRESP;
  wire [0:0]i00_couplers_to_i00_couplers_BVALID;
  wire [31:0]i00_couplers_to_i00_couplers_RDATA;
  wire [0:0]i00_couplers_to_i00_couplers_RREADY;
  wire [1:0]i00_couplers_to_i00_couplers_RRESP;
  wire [0:0]i00_couplers_to_i00_couplers_RVALID;
  wire [31:0]i00_couplers_to_i00_couplers_WDATA;
  wire [0:0]i00_couplers_to_i00_couplers_WREADY;
  wire [3:0]i00_couplers_to_i00_couplers_WSTRB;
  wire [0:0]i00_couplers_to_i00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i00_couplers_to_i00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i00_couplers_to_i00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i00_couplers_to_i00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i00_couplers_to_i00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i00_couplers_to_i00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i00_couplers_to_i00_couplers_AWVALID;
  assign M_AXI_bready[0] = i00_couplers_to_i00_couplers_BREADY;
  assign M_AXI_rready[0] = i00_couplers_to_i00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i00_couplers_to_i00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i00_couplers_to_i00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i00_couplers_to_i00_couplers_WVALID;
  assign S_AXI_arready[0] = i00_couplers_to_i00_couplers_ARREADY;
  assign S_AXI_awready[0] = i00_couplers_to_i00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i00_couplers_to_i00_couplers_BRESP;
  assign S_AXI_bvalid[0] = i00_couplers_to_i00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i00_couplers_to_i00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i00_couplers_to_i00_couplers_RRESP;
  assign S_AXI_rvalid[0] = i00_couplers_to_i00_couplers_RVALID;
  assign S_AXI_wready[0] = i00_couplers_to_i00_couplers_WREADY;
  assign i00_couplers_to_i00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i00_couplers_to_i00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i00_couplers_to_i00_couplers_ARREADY = M_AXI_arready[0];
  assign i00_couplers_to_i00_couplers_ARVALID = S_AXI_arvalid[0];
  assign i00_couplers_to_i00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i00_couplers_to_i00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i00_couplers_to_i00_couplers_AWREADY = M_AXI_awready[0];
  assign i00_couplers_to_i00_couplers_AWVALID = S_AXI_awvalid[0];
  assign i00_couplers_to_i00_couplers_BREADY = S_AXI_bready[0];
  assign i00_couplers_to_i00_couplers_BRESP = M_AXI_bresp[1:0];
  assign i00_couplers_to_i00_couplers_BVALID = M_AXI_bvalid[0];
  assign i00_couplers_to_i00_couplers_RDATA = M_AXI_rdata[31:0];
  assign i00_couplers_to_i00_couplers_RREADY = S_AXI_rready[0];
  assign i00_couplers_to_i00_couplers_RRESP = M_AXI_rresp[1:0];
  assign i00_couplers_to_i00_couplers_RVALID = M_AXI_rvalid[0];
  assign i00_couplers_to_i00_couplers_WDATA = S_AXI_wdata[31:0];
  assign i00_couplers_to_i00_couplers_WREADY = M_AXI_wready[0];
  assign i00_couplers_to_i00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i00_couplers_to_i00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i01_couplers_imp_1RG3T24
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i01_couplers_to_i01_couplers_ARADDR;
  wire [2:0]i01_couplers_to_i01_couplers_ARPROT;
  wire [0:0]i01_couplers_to_i01_couplers_ARREADY;
  wire [0:0]i01_couplers_to_i01_couplers_ARVALID;
  wire [31:0]i01_couplers_to_i01_couplers_AWADDR;
  wire [2:0]i01_couplers_to_i01_couplers_AWPROT;
  wire [0:0]i01_couplers_to_i01_couplers_AWREADY;
  wire [0:0]i01_couplers_to_i01_couplers_AWVALID;
  wire [0:0]i01_couplers_to_i01_couplers_BREADY;
  wire [1:0]i01_couplers_to_i01_couplers_BRESP;
  wire [0:0]i01_couplers_to_i01_couplers_BVALID;
  wire [31:0]i01_couplers_to_i01_couplers_RDATA;
  wire [0:0]i01_couplers_to_i01_couplers_RREADY;
  wire [1:0]i01_couplers_to_i01_couplers_RRESP;
  wire [0:0]i01_couplers_to_i01_couplers_RVALID;
  wire [31:0]i01_couplers_to_i01_couplers_WDATA;
  wire [0:0]i01_couplers_to_i01_couplers_WREADY;
  wire [3:0]i01_couplers_to_i01_couplers_WSTRB;
  wire [0:0]i01_couplers_to_i01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i01_couplers_to_i01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i01_couplers_to_i01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i01_couplers_to_i01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i01_couplers_to_i01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i01_couplers_to_i01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i01_couplers_to_i01_couplers_AWVALID;
  assign M_AXI_bready[0] = i01_couplers_to_i01_couplers_BREADY;
  assign M_AXI_rready[0] = i01_couplers_to_i01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i01_couplers_to_i01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i01_couplers_to_i01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i01_couplers_to_i01_couplers_WVALID;
  assign S_AXI_arready[0] = i01_couplers_to_i01_couplers_ARREADY;
  assign S_AXI_awready[0] = i01_couplers_to_i01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i01_couplers_to_i01_couplers_BRESP;
  assign S_AXI_bvalid[0] = i01_couplers_to_i01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i01_couplers_to_i01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i01_couplers_to_i01_couplers_RRESP;
  assign S_AXI_rvalid[0] = i01_couplers_to_i01_couplers_RVALID;
  assign S_AXI_wready[0] = i01_couplers_to_i01_couplers_WREADY;
  assign i01_couplers_to_i01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i01_couplers_to_i01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i01_couplers_to_i01_couplers_ARREADY = M_AXI_arready[0];
  assign i01_couplers_to_i01_couplers_ARVALID = S_AXI_arvalid[0];
  assign i01_couplers_to_i01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i01_couplers_to_i01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i01_couplers_to_i01_couplers_AWREADY = M_AXI_awready[0];
  assign i01_couplers_to_i01_couplers_AWVALID = S_AXI_awvalid[0];
  assign i01_couplers_to_i01_couplers_BREADY = S_AXI_bready[0];
  assign i01_couplers_to_i01_couplers_BRESP = M_AXI_bresp[1:0];
  assign i01_couplers_to_i01_couplers_BVALID = M_AXI_bvalid[0];
  assign i01_couplers_to_i01_couplers_RDATA = M_AXI_rdata[31:0];
  assign i01_couplers_to_i01_couplers_RREADY = S_AXI_rready[0];
  assign i01_couplers_to_i01_couplers_RRESP = M_AXI_rresp[1:0];
  assign i01_couplers_to_i01_couplers_RVALID = M_AXI_rvalid[0];
  assign i01_couplers_to_i01_couplers_WDATA = S_AXI_wdata[31:0];
  assign i01_couplers_to_i01_couplers_WREADY = M_AXI_wready[0];
  assign i01_couplers_to_i01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i01_couplers_to_i01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module i02_couplers_imp_1KZKN5A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]i02_couplers_to_i02_couplers_ARADDR;
  wire [2:0]i02_couplers_to_i02_couplers_ARPROT;
  wire [0:0]i02_couplers_to_i02_couplers_ARREADY;
  wire [0:0]i02_couplers_to_i02_couplers_ARVALID;
  wire [31:0]i02_couplers_to_i02_couplers_AWADDR;
  wire [2:0]i02_couplers_to_i02_couplers_AWPROT;
  wire [0:0]i02_couplers_to_i02_couplers_AWREADY;
  wire [0:0]i02_couplers_to_i02_couplers_AWVALID;
  wire [0:0]i02_couplers_to_i02_couplers_BREADY;
  wire [1:0]i02_couplers_to_i02_couplers_BRESP;
  wire [0:0]i02_couplers_to_i02_couplers_BVALID;
  wire [31:0]i02_couplers_to_i02_couplers_RDATA;
  wire [0:0]i02_couplers_to_i02_couplers_RREADY;
  wire [1:0]i02_couplers_to_i02_couplers_RRESP;
  wire [0:0]i02_couplers_to_i02_couplers_RVALID;
  wire [31:0]i02_couplers_to_i02_couplers_WDATA;
  wire [0:0]i02_couplers_to_i02_couplers_WREADY;
  wire [3:0]i02_couplers_to_i02_couplers_WSTRB;
  wire [0:0]i02_couplers_to_i02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = i02_couplers_to_i02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = i02_couplers_to_i02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = i02_couplers_to_i02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = i02_couplers_to_i02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = i02_couplers_to_i02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = i02_couplers_to_i02_couplers_AWVALID;
  assign M_AXI_bready[0] = i02_couplers_to_i02_couplers_BREADY;
  assign M_AXI_rready[0] = i02_couplers_to_i02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = i02_couplers_to_i02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = i02_couplers_to_i02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = i02_couplers_to_i02_couplers_WVALID;
  assign S_AXI_arready[0] = i02_couplers_to_i02_couplers_ARREADY;
  assign S_AXI_awready[0] = i02_couplers_to_i02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = i02_couplers_to_i02_couplers_BRESP;
  assign S_AXI_bvalid[0] = i02_couplers_to_i02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = i02_couplers_to_i02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = i02_couplers_to_i02_couplers_RRESP;
  assign S_AXI_rvalid[0] = i02_couplers_to_i02_couplers_RVALID;
  assign S_AXI_wready[0] = i02_couplers_to_i02_couplers_WREADY;
  assign i02_couplers_to_i02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign i02_couplers_to_i02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign i02_couplers_to_i02_couplers_ARREADY = M_AXI_arready[0];
  assign i02_couplers_to_i02_couplers_ARVALID = S_AXI_arvalid[0];
  assign i02_couplers_to_i02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign i02_couplers_to_i02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign i02_couplers_to_i02_couplers_AWREADY = M_AXI_awready[0];
  assign i02_couplers_to_i02_couplers_AWVALID = S_AXI_awvalid[0];
  assign i02_couplers_to_i02_couplers_BREADY = S_AXI_bready[0];
  assign i02_couplers_to_i02_couplers_BRESP = M_AXI_bresp[1:0];
  assign i02_couplers_to_i02_couplers_BVALID = M_AXI_bvalid[0];
  assign i02_couplers_to_i02_couplers_RDATA = M_AXI_rdata[31:0];
  assign i02_couplers_to_i02_couplers_RREADY = S_AXI_rready[0];
  assign i02_couplers_to_i02_couplers_RRESP = M_AXI_rresp[1:0];
  assign i02_couplers_to_i02_couplers_RVALID = M_AXI_rvalid[0];
  assign i02_couplers_to_i02_couplers_WDATA = S_AXI_wdata[31:0];
  assign i02_couplers_to_i02_couplers_WREADY = M_AXI_wready[0];
  assign i02_couplers_to_i02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign i02_couplers_to_i02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_I5GH1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1UBGIXM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_1J5P44O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_T17W6X
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_15FU5SC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_GFBASD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_59JXRJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m07_couplers_imp_1GBLMBI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_E05M9W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [31:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m09_couplers_imp_17AVPN9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [31:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [31:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [31:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [3:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[31:0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[31:0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_1J5SI6G
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m10_couplers_ARADDR;
  wire [1:0]auto_pc_to_m10_couplers_ARBURST;
  wire [3:0]auto_pc_to_m10_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m10_couplers_ARLEN;
  wire [0:0]auto_pc_to_m10_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m10_couplers_ARPROT;
  wire auto_pc_to_m10_couplers_ARREADY;
  wire [2:0]auto_pc_to_m10_couplers_ARSIZE;
  wire auto_pc_to_m10_couplers_ARVALID;
  wire [31:0]auto_pc_to_m10_couplers_AWADDR;
  wire [1:0]auto_pc_to_m10_couplers_AWBURST;
  wire [3:0]auto_pc_to_m10_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m10_couplers_AWLEN;
  wire [0:0]auto_pc_to_m10_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m10_couplers_AWPROT;
  wire auto_pc_to_m10_couplers_AWREADY;
  wire [2:0]auto_pc_to_m10_couplers_AWSIZE;
  wire auto_pc_to_m10_couplers_AWVALID;
  wire auto_pc_to_m10_couplers_BREADY;
  wire [1:0]auto_pc_to_m10_couplers_BRESP;
  wire auto_pc_to_m10_couplers_BVALID;
  wire [31:0]auto_pc_to_m10_couplers_RDATA;
  wire auto_pc_to_m10_couplers_RLAST;
  wire auto_pc_to_m10_couplers_RREADY;
  wire [1:0]auto_pc_to_m10_couplers_RRESP;
  wire auto_pc_to_m10_couplers_RVALID;
  wire [31:0]auto_pc_to_m10_couplers_WDATA;
  wire auto_pc_to_m10_couplers_WLAST;
  wire auto_pc_to_m10_couplers_WREADY;
  wire [3:0]auto_pc_to_m10_couplers_WSTRB;
  wire auto_pc_to_m10_couplers_WVALID;
  wire [31:0]m10_couplers_to_auto_pc_ARADDR;
  wire [2:0]m10_couplers_to_auto_pc_ARPROT;
  wire m10_couplers_to_auto_pc_ARREADY;
  wire m10_couplers_to_auto_pc_ARVALID;
  wire [31:0]m10_couplers_to_auto_pc_AWADDR;
  wire [2:0]m10_couplers_to_auto_pc_AWPROT;
  wire m10_couplers_to_auto_pc_AWREADY;
  wire m10_couplers_to_auto_pc_AWVALID;
  wire m10_couplers_to_auto_pc_BREADY;
  wire [1:0]m10_couplers_to_auto_pc_BRESP;
  wire m10_couplers_to_auto_pc_BVALID;
  wire [31:0]m10_couplers_to_auto_pc_RDATA;
  wire m10_couplers_to_auto_pc_RREADY;
  wire [1:0]m10_couplers_to_auto_pc_RRESP;
  wire m10_couplers_to_auto_pc_RVALID;
  wire [31:0]m10_couplers_to_auto_pc_WDATA;
  wire m10_couplers_to_auto_pc_WREADY;
  wire [3:0]m10_couplers_to_auto_pc_WSTRB;
  wire m10_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m10_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m10_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m10_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m10_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_m10_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m10_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m10_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m10_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m10_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m10_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m10_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_m10_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m10_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m10_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m10_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m10_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m10_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m10_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m10_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m10_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m10_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m10_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m10_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m10_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m10_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m10_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m10_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m10_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m10_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m10_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m10_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m10_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m10_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m10_couplers_WREADY = M_AXI_wready;
  assign m10_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m10_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m10_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m10_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m10_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m10_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m10_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m10_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m10_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m10_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m10_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m10_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m10_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m10_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m10_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m10_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m10_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m10_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m10_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m10_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m10_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m10_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m10_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m10_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m10_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m10_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m10_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m10_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m10_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m10_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m10_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m10_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m10_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m10_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m10_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m10_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m10_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m10_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m10_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m10_couplers_WVALID),
        .s_axi_araddr(m10_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(m10_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m10_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m10_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m10_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(m10_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m10_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m10_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m10_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m10_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m10_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m10_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m10_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m10_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m10_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m10_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m10_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m10_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m10_couplers_to_auto_pc_WVALID));
endmodule

module m11_couplers_imp_T19VO9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m11_couplers_to_m11_couplers_ARADDR;
  wire [2:0]m11_couplers_to_m11_couplers_ARPROT;
  wire m11_couplers_to_m11_couplers_ARREADY;
  wire m11_couplers_to_m11_couplers_ARVALID;
  wire [31:0]m11_couplers_to_m11_couplers_AWADDR;
  wire [2:0]m11_couplers_to_m11_couplers_AWPROT;
  wire m11_couplers_to_m11_couplers_AWREADY;
  wire m11_couplers_to_m11_couplers_AWVALID;
  wire m11_couplers_to_m11_couplers_BREADY;
  wire [1:0]m11_couplers_to_m11_couplers_BRESP;
  wire m11_couplers_to_m11_couplers_BVALID;
  wire [31:0]m11_couplers_to_m11_couplers_RDATA;
  wire m11_couplers_to_m11_couplers_RREADY;
  wire [1:0]m11_couplers_to_m11_couplers_RRESP;
  wire m11_couplers_to_m11_couplers_RVALID;
  wire [31:0]m11_couplers_to_m11_couplers_WDATA;
  wire m11_couplers_to_m11_couplers_WREADY;
  wire [3:0]m11_couplers_to_m11_couplers_WSTRB;
  wire m11_couplers_to_m11_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m11_couplers_to_m11_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m11_couplers_to_m11_couplers_ARPROT;
  assign M_AXI_arvalid = m11_couplers_to_m11_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m11_couplers_to_m11_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m11_couplers_to_m11_couplers_AWPROT;
  assign M_AXI_awvalid = m11_couplers_to_m11_couplers_AWVALID;
  assign M_AXI_bready = m11_couplers_to_m11_couplers_BREADY;
  assign M_AXI_rready = m11_couplers_to_m11_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m11_couplers_to_m11_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m11_couplers_to_m11_couplers_WSTRB;
  assign M_AXI_wvalid = m11_couplers_to_m11_couplers_WVALID;
  assign S_AXI_arready = m11_couplers_to_m11_couplers_ARREADY;
  assign S_AXI_awready = m11_couplers_to_m11_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m11_couplers_to_m11_couplers_BRESP;
  assign S_AXI_bvalid = m11_couplers_to_m11_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m11_couplers_to_m11_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m11_couplers_to_m11_couplers_RRESP;
  assign S_AXI_rvalid = m11_couplers_to_m11_couplers_RVALID;
  assign S_AXI_wready = m11_couplers_to_m11_couplers_WREADY;
  assign m11_couplers_to_m11_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m11_couplers_to_m11_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m11_couplers_to_m11_couplers_ARREADY = M_AXI_arready;
  assign m11_couplers_to_m11_couplers_ARVALID = S_AXI_arvalid;
  assign m11_couplers_to_m11_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m11_couplers_to_m11_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m11_couplers_to_m11_couplers_AWREADY = M_AXI_awready;
  assign m11_couplers_to_m11_couplers_AWVALID = S_AXI_awvalid;
  assign m11_couplers_to_m11_couplers_BREADY = S_AXI_bready;
  assign m11_couplers_to_m11_couplers_BRESP = M_AXI_bresp[1:0];
  assign m11_couplers_to_m11_couplers_BVALID = M_AXI_bvalid;
  assign m11_couplers_to_m11_couplers_RDATA = M_AXI_rdata[31:0];
  assign m11_couplers_to_m11_couplers_RREADY = S_AXI_rready;
  assign m11_couplers_to_m11_couplers_RRESP = M_AXI_rresp[1:0];
  assign m11_couplers_to_m11_couplers_RVALID = M_AXI_rvalid;
  assign m11_couplers_to_m11_couplers_WDATA = S_AXI_wdata[31:0];
  assign m11_couplers_to_m11_couplers_WREADY = M_AXI_wready;
  assign m11_couplers_to_m11_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m11_couplers_to_m11_couplers_WVALID = S_AXI_wvalid;
endmodule

module m12_couplers_imp_I5JGX7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m12_couplers_to_m12_couplers_ARADDR;
  wire [2:0]m12_couplers_to_m12_couplers_ARPROT;
  wire m12_couplers_to_m12_couplers_ARREADY;
  wire m12_couplers_to_m12_couplers_ARVALID;
  wire [31:0]m12_couplers_to_m12_couplers_AWADDR;
  wire [2:0]m12_couplers_to_m12_couplers_AWPROT;
  wire m12_couplers_to_m12_couplers_AWREADY;
  wire m12_couplers_to_m12_couplers_AWVALID;
  wire m12_couplers_to_m12_couplers_BREADY;
  wire [1:0]m12_couplers_to_m12_couplers_BRESP;
  wire m12_couplers_to_m12_couplers_BVALID;
  wire [31:0]m12_couplers_to_m12_couplers_RDATA;
  wire m12_couplers_to_m12_couplers_RREADY;
  wire [1:0]m12_couplers_to_m12_couplers_RRESP;
  wire m12_couplers_to_m12_couplers_RVALID;
  wire [31:0]m12_couplers_to_m12_couplers_WDATA;
  wire m12_couplers_to_m12_couplers_WREADY;
  wire [3:0]m12_couplers_to_m12_couplers_WSTRB;
  wire m12_couplers_to_m12_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m12_couplers_to_m12_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m12_couplers_to_m12_couplers_ARPROT;
  assign M_AXI_arvalid = m12_couplers_to_m12_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m12_couplers_to_m12_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m12_couplers_to_m12_couplers_AWPROT;
  assign M_AXI_awvalid = m12_couplers_to_m12_couplers_AWVALID;
  assign M_AXI_bready = m12_couplers_to_m12_couplers_BREADY;
  assign M_AXI_rready = m12_couplers_to_m12_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m12_couplers_to_m12_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m12_couplers_to_m12_couplers_WSTRB;
  assign M_AXI_wvalid = m12_couplers_to_m12_couplers_WVALID;
  assign S_AXI_arready = m12_couplers_to_m12_couplers_ARREADY;
  assign S_AXI_awready = m12_couplers_to_m12_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m12_couplers_to_m12_couplers_BRESP;
  assign S_AXI_bvalid = m12_couplers_to_m12_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m12_couplers_to_m12_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m12_couplers_to_m12_couplers_RRESP;
  assign S_AXI_rvalid = m12_couplers_to_m12_couplers_RVALID;
  assign S_AXI_wready = m12_couplers_to_m12_couplers_WREADY;
  assign m12_couplers_to_m12_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m12_couplers_to_m12_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m12_couplers_to_m12_couplers_ARREADY = M_AXI_arready;
  assign m12_couplers_to_m12_couplers_ARVALID = S_AXI_arvalid;
  assign m12_couplers_to_m12_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m12_couplers_to_m12_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m12_couplers_to_m12_couplers_AWREADY = M_AXI_awready;
  assign m12_couplers_to_m12_couplers_AWVALID = S_AXI_awvalid;
  assign m12_couplers_to_m12_couplers_BREADY = S_AXI_bready;
  assign m12_couplers_to_m12_couplers_BRESP = M_AXI_bresp[1:0];
  assign m12_couplers_to_m12_couplers_BVALID = M_AXI_bvalid;
  assign m12_couplers_to_m12_couplers_RDATA = M_AXI_rdata[31:0];
  assign m12_couplers_to_m12_couplers_RREADY = S_AXI_rready;
  assign m12_couplers_to_m12_couplers_RRESP = M_AXI_rresp[1:0];
  assign m12_couplers_to_m12_couplers_RVALID = M_AXI_rvalid;
  assign m12_couplers_to_m12_couplers_WDATA = S_AXI_wdata[31:0];
  assign m12_couplers_to_m12_couplers_WREADY = M_AXI_wready;
  assign m12_couplers_to_m12_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m12_couplers_to_m12_couplers_WVALID = S_AXI_wvalid;
endmodule

module m13_couplers_imp_1UBI48Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m13_couplers_to_m13_couplers_ARADDR;
  wire [2:0]m13_couplers_to_m13_couplers_ARPROT;
  wire m13_couplers_to_m13_couplers_ARREADY;
  wire m13_couplers_to_m13_couplers_ARVALID;
  wire [31:0]m13_couplers_to_m13_couplers_AWADDR;
  wire [2:0]m13_couplers_to_m13_couplers_AWPROT;
  wire m13_couplers_to_m13_couplers_AWREADY;
  wire m13_couplers_to_m13_couplers_AWVALID;
  wire m13_couplers_to_m13_couplers_BREADY;
  wire [1:0]m13_couplers_to_m13_couplers_BRESP;
  wire m13_couplers_to_m13_couplers_BVALID;
  wire [31:0]m13_couplers_to_m13_couplers_RDATA;
  wire m13_couplers_to_m13_couplers_RREADY;
  wire [1:0]m13_couplers_to_m13_couplers_RRESP;
  wire m13_couplers_to_m13_couplers_RVALID;
  wire [31:0]m13_couplers_to_m13_couplers_WDATA;
  wire m13_couplers_to_m13_couplers_WREADY;
  wire [3:0]m13_couplers_to_m13_couplers_WSTRB;
  wire m13_couplers_to_m13_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m13_couplers_to_m13_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m13_couplers_to_m13_couplers_ARPROT;
  assign M_AXI_arvalid = m13_couplers_to_m13_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m13_couplers_to_m13_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m13_couplers_to_m13_couplers_AWPROT;
  assign M_AXI_awvalid = m13_couplers_to_m13_couplers_AWVALID;
  assign M_AXI_bready = m13_couplers_to_m13_couplers_BREADY;
  assign M_AXI_rready = m13_couplers_to_m13_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m13_couplers_to_m13_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m13_couplers_to_m13_couplers_WSTRB;
  assign M_AXI_wvalid = m13_couplers_to_m13_couplers_WVALID;
  assign S_AXI_arready = m13_couplers_to_m13_couplers_ARREADY;
  assign S_AXI_awready = m13_couplers_to_m13_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m13_couplers_to_m13_couplers_BRESP;
  assign S_AXI_bvalid = m13_couplers_to_m13_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m13_couplers_to_m13_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m13_couplers_to_m13_couplers_RRESP;
  assign S_AXI_rvalid = m13_couplers_to_m13_couplers_RVALID;
  assign S_AXI_wready = m13_couplers_to_m13_couplers_WREADY;
  assign m13_couplers_to_m13_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m13_couplers_to_m13_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m13_couplers_to_m13_couplers_ARREADY = M_AXI_arready;
  assign m13_couplers_to_m13_couplers_ARVALID = S_AXI_arvalid;
  assign m13_couplers_to_m13_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m13_couplers_to_m13_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m13_couplers_to_m13_couplers_AWREADY = M_AXI_awready;
  assign m13_couplers_to_m13_couplers_AWVALID = S_AXI_awvalid;
  assign m13_couplers_to_m13_couplers_BREADY = S_AXI_bready;
  assign m13_couplers_to_m13_couplers_BRESP = M_AXI_bresp[1:0];
  assign m13_couplers_to_m13_couplers_BVALID = M_AXI_bvalid;
  assign m13_couplers_to_m13_couplers_RDATA = M_AXI_rdata[31:0];
  assign m13_couplers_to_m13_couplers_RREADY = S_AXI_rready;
  assign m13_couplers_to_m13_couplers_RRESP = M_AXI_rresp[1:0];
  assign m13_couplers_to_m13_couplers_RVALID = M_AXI_rvalid;
  assign m13_couplers_to_m13_couplers_WDATA = S_AXI_wdata[31:0];
  assign m13_couplers_to_m13_couplers_WREADY = M_AXI_wready;
  assign m13_couplers_to_m13_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m13_couplers_to_m13_couplers_WVALID = S_AXI_wvalid;
endmodule

module m14_couplers_imp_59NWCV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m14_couplers_to_m14_couplers_ARADDR;
  wire [2:0]m14_couplers_to_m14_couplers_ARPROT;
  wire m14_couplers_to_m14_couplers_ARREADY;
  wire m14_couplers_to_m14_couplers_ARVALID;
  wire [31:0]m14_couplers_to_m14_couplers_AWADDR;
  wire [2:0]m14_couplers_to_m14_couplers_AWPROT;
  wire m14_couplers_to_m14_couplers_AWREADY;
  wire m14_couplers_to_m14_couplers_AWVALID;
  wire m14_couplers_to_m14_couplers_BREADY;
  wire [1:0]m14_couplers_to_m14_couplers_BRESP;
  wire m14_couplers_to_m14_couplers_BVALID;
  wire [31:0]m14_couplers_to_m14_couplers_RDATA;
  wire m14_couplers_to_m14_couplers_RREADY;
  wire [1:0]m14_couplers_to_m14_couplers_RRESP;
  wire m14_couplers_to_m14_couplers_RVALID;
  wire [31:0]m14_couplers_to_m14_couplers_WDATA;
  wire m14_couplers_to_m14_couplers_WREADY;
  wire [3:0]m14_couplers_to_m14_couplers_WSTRB;
  wire m14_couplers_to_m14_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m14_couplers_to_m14_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m14_couplers_to_m14_couplers_ARPROT;
  assign M_AXI_arvalid = m14_couplers_to_m14_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m14_couplers_to_m14_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m14_couplers_to_m14_couplers_AWPROT;
  assign M_AXI_awvalid = m14_couplers_to_m14_couplers_AWVALID;
  assign M_AXI_bready = m14_couplers_to_m14_couplers_BREADY;
  assign M_AXI_rready = m14_couplers_to_m14_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m14_couplers_to_m14_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m14_couplers_to_m14_couplers_WSTRB;
  assign M_AXI_wvalid = m14_couplers_to_m14_couplers_WVALID;
  assign S_AXI_arready = m14_couplers_to_m14_couplers_ARREADY;
  assign S_AXI_awready = m14_couplers_to_m14_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m14_couplers_to_m14_couplers_BRESP;
  assign S_AXI_bvalid = m14_couplers_to_m14_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m14_couplers_to_m14_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m14_couplers_to_m14_couplers_RRESP;
  assign S_AXI_rvalid = m14_couplers_to_m14_couplers_RVALID;
  assign S_AXI_wready = m14_couplers_to_m14_couplers_WREADY;
  assign m14_couplers_to_m14_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m14_couplers_to_m14_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m14_couplers_to_m14_couplers_ARREADY = M_AXI_arready;
  assign m14_couplers_to_m14_couplers_ARVALID = S_AXI_arvalid;
  assign m14_couplers_to_m14_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m14_couplers_to_m14_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m14_couplers_to_m14_couplers_AWREADY = M_AXI_awready;
  assign m14_couplers_to_m14_couplers_AWVALID = S_AXI_awvalid;
  assign m14_couplers_to_m14_couplers_BREADY = S_AXI_bready;
  assign m14_couplers_to_m14_couplers_BRESP = M_AXI_bresp[1:0];
  assign m14_couplers_to_m14_couplers_BVALID = M_AXI_bvalid;
  assign m14_couplers_to_m14_couplers_RDATA = M_AXI_rdata[31:0];
  assign m14_couplers_to_m14_couplers_RREADY = S_AXI_rready;
  assign m14_couplers_to_m14_couplers_RRESP = M_AXI_rresp[1:0];
  assign m14_couplers_to_m14_couplers_RVALID = M_AXI_rvalid;
  assign m14_couplers_to_m14_couplers_WDATA = S_AXI_wdata[31:0];
  assign m14_couplers_to_m14_couplers_WREADY = M_AXI_wready;
  assign m14_couplers_to_m14_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m14_couplers_to_m14_couplers_WVALID = S_AXI_wvalid;
endmodule

module m15_couplers_imp_1GBO6CE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m15_couplers_to_m15_couplers_ARADDR;
  wire [2:0]m15_couplers_to_m15_couplers_ARPROT;
  wire m15_couplers_to_m15_couplers_ARREADY;
  wire m15_couplers_to_m15_couplers_ARVALID;
  wire [31:0]m15_couplers_to_m15_couplers_AWADDR;
  wire [2:0]m15_couplers_to_m15_couplers_AWPROT;
  wire m15_couplers_to_m15_couplers_AWREADY;
  wire m15_couplers_to_m15_couplers_AWVALID;
  wire m15_couplers_to_m15_couplers_BREADY;
  wire [1:0]m15_couplers_to_m15_couplers_BRESP;
  wire m15_couplers_to_m15_couplers_BVALID;
  wire [31:0]m15_couplers_to_m15_couplers_RDATA;
  wire m15_couplers_to_m15_couplers_RREADY;
  wire [1:0]m15_couplers_to_m15_couplers_RRESP;
  wire m15_couplers_to_m15_couplers_RVALID;
  wire [31:0]m15_couplers_to_m15_couplers_WDATA;
  wire m15_couplers_to_m15_couplers_WREADY;
  wire [3:0]m15_couplers_to_m15_couplers_WSTRB;
  wire m15_couplers_to_m15_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m15_couplers_to_m15_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m15_couplers_to_m15_couplers_ARPROT;
  assign M_AXI_arvalid = m15_couplers_to_m15_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m15_couplers_to_m15_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m15_couplers_to_m15_couplers_AWPROT;
  assign M_AXI_awvalid = m15_couplers_to_m15_couplers_AWVALID;
  assign M_AXI_bready = m15_couplers_to_m15_couplers_BREADY;
  assign M_AXI_rready = m15_couplers_to_m15_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m15_couplers_to_m15_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m15_couplers_to_m15_couplers_WSTRB;
  assign M_AXI_wvalid = m15_couplers_to_m15_couplers_WVALID;
  assign S_AXI_arready = m15_couplers_to_m15_couplers_ARREADY;
  assign S_AXI_awready = m15_couplers_to_m15_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m15_couplers_to_m15_couplers_BRESP;
  assign S_AXI_bvalid = m15_couplers_to_m15_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m15_couplers_to_m15_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m15_couplers_to_m15_couplers_RRESP;
  assign S_AXI_rvalid = m15_couplers_to_m15_couplers_RVALID;
  assign S_AXI_wready = m15_couplers_to_m15_couplers_WREADY;
  assign m15_couplers_to_m15_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m15_couplers_to_m15_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m15_couplers_to_m15_couplers_ARREADY = M_AXI_arready;
  assign m15_couplers_to_m15_couplers_ARVALID = S_AXI_arvalid;
  assign m15_couplers_to_m15_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m15_couplers_to_m15_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m15_couplers_to_m15_couplers_AWREADY = M_AXI_awready;
  assign m15_couplers_to_m15_couplers_AWVALID = S_AXI_awvalid;
  assign m15_couplers_to_m15_couplers_BREADY = S_AXI_bready;
  assign m15_couplers_to_m15_couplers_BRESP = M_AXI_bresp[1:0];
  assign m15_couplers_to_m15_couplers_BVALID = M_AXI_bvalid;
  assign m15_couplers_to_m15_couplers_RDATA = M_AXI_rdata[31:0];
  assign m15_couplers_to_m15_couplers_RREADY = S_AXI_rready;
  assign m15_couplers_to_m15_couplers_RRESP = M_AXI_rresp[1:0];
  assign m15_couplers_to_m15_couplers_RVALID = M_AXI_rvalid;
  assign m15_couplers_to_m15_couplers_WDATA = S_AXI_wdata[31:0];
  assign m15_couplers_to_m15_couplers_WREADY = M_AXI_wready;
  assign m15_couplers_to_m15_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m15_couplers_to_m15_couplers_WVALID = S_AXI_wvalid;
endmodule

module m16_couplers_imp_15FXTD8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m16_couplers_to_m16_couplers_ARADDR;
  wire [2:0]m16_couplers_to_m16_couplers_ARPROT;
  wire m16_couplers_to_m16_couplers_ARREADY;
  wire m16_couplers_to_m16_couplers_ARVALID;
  wire [31:0]m16_couplers_to_m16_couplers_AWADDR;
  wire [2:0]m16_couplers_to_m16_couplers_AWPROT;
  wire m16_couplers_to_m16_couplers_AWREADY;
  wire m16_couplers_to_m16_couplers_AWVALID;
  wire m16_couplers_to_m16_couplers_BREADY;
  wire [1:0]m16_couplers_to_m16_couplers_BRESP;
  wire m16_couplers_to_m16_couplers_BVALID;
  wire [31:0]m16_couplers_to_m16_couplers_RDATA;
  wire m16_couplers_to_m16_couplers_RREADY;
  wire [1:0]m16_couplers_to_m16_couplers_RRESP;
  wire m16_couplers_to_m16_couplers_RVALID;
  wire [31:0]m16_couplers_to_m16_couplers_WDATA;
  wire m16_couplers_to_m16_couplers_WREADY;
  wire [3:0]m16_couplers_to_m16_couplers_WSTRB;
  wire m16_couplers_to_m16_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m16_couplers_to_m16_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m16_couplers_to_m16_couplers_ARPROT;
  assign M_AXI_arvalid = m16_couplers_to_m16_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m16_couplers_to_m16_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m16_couplers_to_m16_couplers_AWPROT;
  assign M_AXI_awvalid = m16_couplers_to_m16_couplers_AWVALID;
  assign M_AXI_bready = m16_couplers_to_m16_couplers_BREADY;
  assign M_AXI_rready = m16_couplers_to_m16_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m16_couplers_to_m16_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m16_couplers_to_m16_couplers_WSTRB;
  assign M_AXI_wvalid = m16_couplers_to_m16_couplers_WVALID;
  assign S_AXI_arready = m16_couplers_to_m16_couplers_ARREADY;
  assign S_AXI_awready = m16_couplers_to_m16_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m16_couplers_to_m16_couplers_BRESP;
  assign S_AXI_bvalid = m16_couplers_to_m16_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m16_couplers_to_m16_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m16_couplers_to_m16_couplers_RRESP;
  assign S_AXI_rvalid = m16_couplers_to_m16_couplers_RVALID;
  assign S_AXI_wready = m16_couplers_to_m16_couplers_WREADY;
  assign m16_couplers_to_m16_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m16_couplers_to_m16_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m16_couplers_to_m16_couplers_ARREADY = M_AXI_arready;
  assign m16_couplers_to_m16_couplers_ARVALID = S_AXI_arvalid;
  assign m16_couplers_to_m16_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m16_couplers_to_m16_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m16_couplers_to_m16_couplers_AWREADY = M_AXI_awready;
  assign m16_couplers_to_m16_couplers_AWVALID = S_AXI_awvalid;
  assign m16_couplers_to_m16_couplers_BREADY = S_AXI_bready;
  assign m16_couplers_to_m16_couplers_BRESP = M_AXI_bresp[1:0];
  assign m16_couplers_to_m16_couplers_BVALID = M_AXI_bvalid;
  assign m16_couplers_to_m16_couplers_RDATA = M_AXI_rdata[31:0];
  assign m16_couplers_to_m16_couplers_RREADY = S_AXI_rready;
  assign m16_couplers_to_m16_couplers_RRESP = M_AXI_rresp[1:0];
  assign m16_couplers_to_m16_couplers_RVALID = M_AXI_rvalid;
  assign m16_couplers_to_m16_couplers_WDATA = S_AXI_wdata[31:0];
  assign m16_couplers_to_m16_couplers_WREADY = M_AXI_wready;
  assign m16_couplers_to_m16_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m16_couplers_to_m16_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_WZLZH6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=65,numReposBlks=42,numNonXlnxBlks=13,numHierBlks=23,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (adc_data_a,
    adc_data_b,
    adc_data_c,
    adc_data_d,
    adc_enable_a,
    adc_enable_b,
    adc_enable_c,
    adc_enable_d,
    adc_valid_a,
    adc_valid_b,
    adc_valid_c,
    adc_valid_d,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    gpio0_i,
    gpio0_o,
    gpio0_t,
    gpio1_i,
    gpio1_o,
    gpio1_t,
    gpio_lcd_tri_i,
    gpio_lcd_tri_o,
    gpio_lcd_tri_t,
    iic_main_scl_i,
    iic_main_scl_o,
    iic_main_scl_t,
    iic_main_sda_i,
    iic_main_sda_o,
    iic_main_sda_t,
    linear_flash_addr,
    linear_flash_adv_ldn,
    linear_flash_ce_n,
    linear_flash_dq_i,
    linear_flash_dq_o,
    linear_flash_dq_t,
    linear_flash_oen,
    linear_flash_wen,
    mdio_mdc,
    mdio_mdio_i,
    mdio_mdio_o,
    mdio_mdio_t,
    mii_col,
    mii_crs,
    mii_rst_n,
    mii_rx_clk,
    mii_rx_dv,
    mii_rx_er,
    mii_rxd,
    mii_tx_clk,
    mii_tx_en,
    mii_txd,
    rx_core_clk,
    rx_data_0_n,
    rx_data_0_p,
    rx_data_1_n,
    rx_data_1_p,
    rx_data_2_n,
    rx_data_2_p,
    rx_data_3_n,
    rx_data_3_p,
    rx_ref_clk_0,
    rx_sync_0,
    rx_sysref_0,
    spi_clk_i,
    spi_clk_o,
    spi_csn_i,
    spi_csn_o,
    spi_sdi_i,
    spi_sdo_i,
    spi_sdo_o,
    sys_clk_n,
    sys_clk_p,
    sys_rst,
    uart_sin,
    uart_sout);
  output [31:0]adc_data_a;
  output [31:0]adc_data_b;
  output [31:0]adc_data_c;
  output [31:0]adc_data_d;
  output adc_enable_a;
  output adc_enable_b;
  output adc_enable_c;
  output adc_enable_d;
  output adc_valid_a;
  output adc_valid_b;
  output adc_valid_c;
  output adc_valid_d;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [13:0]ddr3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 BA" *) output [2:0]ddr3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CAS_N" *) output ddr3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_N" *) output [0:0]ddr3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_P" *) output [0:0]ddr3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CKE" *) output [0:0]ddr3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CS_N" *) output [0:0]ddr3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DM" *) output [7:0]ddr3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQ" *) inout [63:0]ddr3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_N" *) inout [7:0]ddr3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_P" *) inout [7:0]ddr3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ODT" *) output [0:0]ddr3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RAS_N" *) output ddr3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RESET_N" *) output ddr3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 WE_N" *) output ddr3_we_n;
  input [31:0]gpio0_i;
  output [31:0]gpio0_o;
  output [31:0]gpio0_t;
  input [31:0]gpio1_i;
  output [31:0]gpio1_o;
  output [31:0]gpio1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_lcd TRI_I" *) input [6:0]gpio_lcd_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_lcd TRI_O" *) output [6:0]gpio_lcd_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_lcd TRI_T" *) output [6:0]gpio_lcd_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_I" *) input iic_main_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_O" *) output iic_main_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SCL_T" *) output iic_main_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_I" *) input iic_main_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_O" *) output iic_main_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic_main SDA_T" *) output iic_main_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash ADDR" *) output [26:1]linear_flash_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash ADV_LDN" *) output linear_flash_adv_ldn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash CE_N" *) output linear_flash_ce_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash DQ_I" *) input [15:0]linear_flash_dq_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash DQ_O" *) output [15:0]linear_flash_dq_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash DQ_T" *) output [15:0]linear_flash_dq_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash OEN" *) output linear_flash_oen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 linear_flash WEN" *) output linear_flash_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio, CAN_DEBUG false" *) output mdio_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_I" *) input mdio_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_O" *) output mdio_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio MDIO_T" *) output mdio_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii COL" *) input mii_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii CRS" *) input mii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii RST_N" *) output mii_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii RX_CLK" *) input mii_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii RX_DV" *) input mii_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii RX_ER" *) input mii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii RXD" *) input [3:0]mii_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii TX_CLK" *) input mii_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii TX_EN" *) output mii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 mii TXD" *) output [3:0]mii_txd;
  output rx_core_clk;
  input rx_data_0_n;
  input rx_data_0_p;
  input rx_data_1_n;
  input rx_data_1_p;
  input rx_data_2_n;
  input rx_data_2_p;
  input rx_data_3_n;
  input rx_data_3_p;
  input rx_ref_clk_0;
  output [0:0]rx_sync_0;
  input rx_sysref_0;
  input spi_clk_i;
  output spi_clk_o;
  input [7:0]spi_csn_i;
  output [7:0]spi_csn_o;
  input spi_sdi_i;
  input spi_sdo_i;
  output spi_sdo_o;
  input sys_clk_n;
  input sys_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, POLARITY ACTIVE_HIGH" *) input sys_rst;
  input uart_sin;
  output uart_sout;

  wire [0:31]Conn1_ABUS;
  wire Conn1_ADDRSTROBE;
  wire [0:3]Conn1_BE;
  wire Conn1_CE;
  wire [0:31]Conn1_READDBUS;
  wire Conn1_READSTROBE;
  wire Conn1_READY;
  wire Conn1_UE;
  wire Conn1_WAIT;
  wire [0:31]Conn1_WRITEDBUS;
  wire Conn1_WRITESTROBE;
  wire [0:31]Conn_ABUS;
  wire Conn_ADDRSTROBE;
  wire [0:3]Conn_BE;
  wire Conn_CE;
  wire [0:31]Conn_READDBUS;
  wire Conn_READSTROBE;
  wire Conn_READY;
  wire Conn_UE;
  wire Conn_WAIT;
  wire [0:31]Conn_WRITEDBUS;
  wire Conn_WRITESTROBE;
  wire [11:0]GND_12_dout;
  wire [0:0]GND_1_dout;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [0:0]S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [0:0]S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire axi_ad9250_0_core_adc_clk;
  wire [31:0]axi_ad9250_0_core_adc_data_a;
  wire [31:0]axi_ad9250_0_core_adc_data_b;
  wire axi_ad9250_0_core_adc_enable_a;
  wire axi_ad9250_0_core_adc_enable_b;
  wire axi_ad9250_0_core_adc_valid_a;
  wire axi_ad9250_0_core_adc_valid_b;
  wire axi_ad9250_0_cpack_fifo_wr_overflow;
  wire [63:0]axi_ad9250_0_cpack_packed_fifo_wr_DATA;
  wire axi_ad9250_0_cpack_packed_fifo_wr_EN;
  wire axi_ad9250_0_cpack_packed_fifo_wr_OVERFLOW;
  wire axi_ad9250_0_cpack_packed_fifo_wr_SYNC;
  wire axi_ad9250_0_dma_irq;
  wire [31:0]axi_ad9250_0_dma_m_dest_axi_AWADDR;
  wire [1:0]axi_ad9250_0_dma_m_dest_axi_AWBURST;
  wire [3:0]axi_ad9250_0_dma_m_dest_axi_AWCACHE;
  wire [7:0]axi_ad9250_0_dma_m_dest_axi_AWLEN;
  wire [2:0]axi_ad9250_0_dma_m_dest_axi_AWPROT;
  wire axi_ad9250_0_dma_m_dest_axi_AWREADY;
  wire [2:0]axi_ad9250_0_dma_m_dest_axi_AWSIZE;
  wire axi_ad9250_0_dma_m_dest_axi_AWVALID;
  wire axi_ad9250_0_dma_m_dest_axi_BREADY;
  wire [1:0]axi_ad9250_0_dma_m_dest_axi_BRESP;
  wire axi_ad9250_0_dma_m_dest_axi_BVALID;
  wire [511:0]axi_ad9250_0_dma_m_dest_axi_WDATA;
  wire axi_ad9250_0_dma_m_dest_axi_WLAST;
  wire axi_ad9250_0_dma_m_dest_axi_WREADY;
  wire [63:0]axi_ad9250_0_dma_m_dest_axi_WSTRB;
  wire axi_ad9250_0_dma_m_dest_axi_WVALID;
  wire axi_ad9250_1_core_adc_clk;
  wire [31:0]axi_ad9250_1_core_adc_data_a;
  wire [31:0]axi_ad9250_1_core_adc_data_b;
  wire axi_ad9250_1_core_adc_enable_a;
  wire axi_ad9250_1_core_adc_enable_b;
  wire axi_ad9250_1_core_adc_valid_a;
  wire axi_ad9250_1_core_adc_valid_b;
  wire axi_ad9250_1_cpack_fifo_wr_overflow;
  wire [63:0]axi_ad9250_1_cpack_packed_fifo_wr_DATA;
  wire axi_ad9250_1_cpack_packed_fifo_wr_EN;
  wire axi_ad9250_1_cpack_packed_fifo_wr_OVERFLOW;
  wire axi_ad9250_1_cpack_packed_fifo_wr_SYNC;
  wire axi_ad9250_1_dma_irq;
  wire [31:0]axi_ad9250_1_dma_m_dest_axi_AWADDR;
  wire [1:0]axi_ad9250_1_dma_m_dest_axi_AWBURST;
  wire [3:0]axi_ad9250_1_dma_m_dest_axi_AWCACHE;
  wire [7:0]axi_ad9250_1_dma_m_dest_axi_AWLEN;
  wire [2:0]axi_ad9250_1_dma_m_dest_axi_AWPROT;
  wire axi_ad9250_1_dma_m_dest_axi_AWREADY;
  wire [2:0]axi_ad9250_1_dma_m_dest_axi_AWSIZE;
  wire axi_ad9250_1_dma_m_dest_axi_AWVALID;
  wire axi_ad9250_1_dma_m_dest_axi_BREADY;
  wire [1:0]axi_ad9250_1_dma_m_dest_axi_BRESP;
  wire axi_ad9250_1_dma_m_dest_axi_BVALID;
  wire [511:0]axi_ad9250_1_dma_m_dest_axi_WDATA;
  wire axi_ad9250_1_dma_m_dest_axi_WLAST;
  wire axi_ad9250_1_dma_m_dest_axi_WREADY;
  wire [63:0]axi_ad9250_1_dma_m_dest_axi_WSTRB;
  wire axi_ad9250_1_dma_m_dest_axi_WVALID;
  wire axi_ad9250_jesd_irq;
  wire axi_ad9250_jesd_phy_en_char_align;
  wire [0:0]axi_ad9250_jesd_rstgen_peripheral_reset;
  wire [127:0]axi_ad9250_jesd_rx_data_tdata;
  wire [3:0]axi_ad9250_jesd_rx_sof;
  wire [0:0]axi_ad9250_jesd_sync;
  wire [31:0]axi_ad9250_xcvr_m_axi_ARADDR;
  wire [2:0]axi_ad9250_xcvr_m_axi_ARPROT;
  wire axi_ad9250_xcvr_m_axi_ARREADY;
  wire axi_ad9250_xcvr_m_axi_ARVALID;
  wire [31:0]axi_ad9250_xcvr_m_axi_AWADDR;
  wire [2:0]axi_ad9250_xcvr_m_axi_AWPROT;
  wire axi_ad9250_xcvr_m_axi_AWREADY;
  wire axi_ad9250_xcvr_m_axi_AWVALID;
  wire axi_ad9250_xcvr_m_axi_BREADY;
  wire [1:0]axi_ad9250_xcvr_m_axi_BRESP;
  wire axi_ad9250_xcvr_m_axi_BVALID;
  wire [31:0]axi_ad9250_xcvr_m_axi_RDATA;
  wire axi_ad9250_xcvr_m_axi_RREADY;
  wire [1:0]axi_ad9250_xcvr_m_axi_RRESP;
  wire axi_ad9250_xcvr_m_axi_RVALID;
  wire [31:0]axi_ad9250_xcvr_m_axi_WDATA;
  wire axi_ad9250_xcvr_m_axi_WREADY;
  wire [3:0]axi_ad9250_xcvr_m_axi_WSTRB;
  wire axi_ad9250_xcvr_m_axi_WVALID;
  wire [11:0]axi_ad9250_xcvr_up_ch_0_addr;
  wire axi_ad9250_xcvr_up_ch_0_enb;
  wire axi_ad9250_xcvr_up_ch_0_lpm_dfe_n;
  wire [2:0]axi_ad9250_xcvr_up_ch_0_out_clk_sel;
  wire axi_ad9250_xcvr_up_ch_0_pll_locked;
  wire [2:0]axi_ad9250_xcvr_up_ch_0_rate;
  wire [15:0]axi_ad9250_xcvr_up_ch_0_rdata;
  wire axi_ad9250_xcvr_up_ch_0_ready;
  wire axi_ad9250_xcvr_up_ch_0_rst;
  wire axi_ad9250_xcvr_up_ch_0_rst_done;
  wire [1:0]axi_ad9250_xcvr_up_ch_0_sys_clk_sel;
  wire axi_ad9250_xcvr_up_ch_0_user_ready;
  wire [15:0]axi_ad9250_xcvr_up_ch_0_wdata;
  wire axi_ad9250_xcvr_up_ch_0_wr;
  wire [11:0]axi_ad9250_xcvr_up_ch_1_addr;
  wire axi_ad9250_xcvr_up_ch_1_enb;
  wire axi_ad9250_xcvr_up_ch_1_lpm_dfe_n;
  wire [2:0]axi_ad9250_xcvr_up_ch_1_out_clk_sel;
  wire axi_ad9250_xcvr_up_ch_1_pll_locked;
  wire [2:0]axi_ad9250_xcvr_up_ch_1_rate;
  wire [15:0]axi_ad9250_xcvr_up_ch_1_rdata;
  wire axi_ad9250_xcvr_up_ch_1_ready;
  wire axi_ad9250_xcvr_up_ch_1_rst;
  wire axi_ad9250_xcvr_up_ch_1_rst_done;
  wire [1:0]axi_ad9250_xcvr_up_ch_1_sys_clk_sel;
  wire axi_ad9250_xcvr_up_ch_1_user_ready;
  wire [15:0]axi_ad9250_xcvr_up_ch_1_wdata;
  wire axi_ad9250_xcvr_up_ch_1_wr;
  wire [11:0]axi_ad9250_xcvr_up_ch_2_addr;
  wire axi_ad9250_xcvr_up_ch_2_enb;
  wire axi_ad9250_xcvr_up_ch_2_lpm_dfe_n;
  wire [2:0]axi_ad9250_xcvr_up_ch_2_out_clk_sel;
  wire axi_ad9250_xcvr_up_ch_2_pll_locked;
  wire [2:0]axi_ad9250_xcvr_up_ch_2_rate;
  wire [15:0]axi_ad9250_xcvr_up_ch_2_rdata;
  wire axi_ad9250_xcvr_up_ch_2_ready;
  wire axi_ad9250_xcvr_up_ch_2_rst;
  wire axi_ad9250_xcvr_up_ch_2_rst_done;
  wire [1:0]axi_ad9250_xcvr_up_ch_2_sys_clk_sel;
  wire axi_ad9250_xcvr_up_ch_2_user_ready;
  wire [15:0]axi_ad9250_xcvr_up_ch_2_wdata;
  wire axi_ad9250_xcvr_up_ch_2_wr;
  wire [11:0]axi_ad9250_xcvr_up_ch_3_addr;
  wire axi_ad9250_xcvr_up_ch_3_enb;
  wire axi_ad9250_xcvr_up_ch_3_lpm_dfe_n;
  wire [2:0]axi_ad9250_xcvr_up_ch_3_out_clk_sel;
  wire axi_ad9250_xcvr_up_ch_3_pll_locked;
  wire [2:0]axi_ad9250_xcvr_up_ch_3_rate;
  wire [15:0]axi_ad9250_xcvr_up_ch_3_rdata;
  wire axi_ad9250_xcvr_up_ch_3_ready;
  wire axi_ad9250_xcvr_up_ch_3_rst;
  wire axi_ad9250_xcvr_up_ch_3_rst_done;
  wire [1:0]axi_ad9250_xcvr_up_ch_3_sys_clk_sel;
  wire axi_ad9250_xcvr_up_ch_3_user_ready;
  wire [15:0]axi_ad9250_xcvr_up_ch_3_wdata;
  wire axi_ad9250_xcvr_up_ch_3_wr;
  wire [11:0]axi_ad9250_xcvr_up_es_0_addr;
  wire axi_ad9250_xcvr_up_es_0_enb;
  wire [15:0]axi_ad9250_xcvr_up_es_0_rdata;
  wire axi_ad9250_xcvr_up_es_0_ready;
  wire axi_ad9250_xcvr_up_es_0_reset;
  wire [15:0]axi_ad9250_xcvr_up_es_0_wdata;
  wire axi_ad9250_xcvr_up_es_0_wr;
  wire [11:0]axi_ad9250_xcvr_up_es_1_addr;
  wire axi_ad9250_xcvr_up_es_1_enb;
  wire [15:0]axi_ad9250_xcvr_up_es_1_rdata;
  wire axi_ad9250_xcvr_up_es_1_ready;
  wire axi_ad9250_xcvr_up_es_1_reset;
  wire [15:0]axi_ad9250_xcvr_up_es_1_wdata;
  wire axi_ad9250_xcvr_up_es_1_wr;
  wire [11:0]axi_ad9250_xcvr_up_es_2_addr;
  wire axi_ad9250_xcvr_up_es_2_enb;
  wire [15:0]axi_ad9250_xcvr_up_es_2_rdata;
  wire axi_ad9250_xcvr_up_es_2_ready;
  wire axi_ad9250_xcvr_up_es_2_reset;
  wire [15:0]axi_ad9250_xcvr_up_es_2_wdata;
  wire axi_ad9250_xcvr_up_es_2_wr;
  wire [11:0]axi_ad9250_xcvr_up_es_3_addr;
  wire axi_ad9250_xcvr_up_es_3_enb;
  wire [15:0]axi_ad9250_xcvr_up_es_3_rdata;
  wire axi_ad9250_xcvr_up_es_3_ready;
  wire axi_ad9250_xcvr_up_es_3_reset;
  wire [15:0]axi_ad9250_xcvr_up_es_3_wdata;
  wire axi_ad9250_xcvr_up_es_3_wr;
  wire axi_ad9250_xcvr_up_pll_rst;
  wire [31:0]axi_cpu_interconnect_M00_AXI_ARADDR;
  wire axi_cpu_interconnect_M00_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_AWADDR;
  wire axi_cpu_interconnect_M00_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M00_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_BRESP;
  wire axi_cpu_interconnect_M00_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M00_AXI_RRESP;
  wire axi_cpu_interconnect_M00_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M00_AXI_WDATA;
  wire axi_cpu_interconnect_M00_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M00_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M00_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_ARADDR;
  wire axi_cpu_interconnect_M01_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_AWADDR;
  wire axi_cpu_interconnect_M01_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M01_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M01_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_BRESP;
  wire axi_cpu_interconnect_M01_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M01_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M01_AXI_RRESP;
  wire axi_cpu_interconnect_M01_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M01_AXI_WDATA;
  wire axi_cpu_interconnect_M01_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M01_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M01_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_ARADDR;
  wire axi_cpu_interconnect_M02_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M02_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_AWADDR;
  wire axi_cpu_interconnect_M02_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M02_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M02_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_BRESP;
  wire axi_cpu_interconnect_M02_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M02_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M02_AXI_RRESP;
  wire axi_cpu_interconnect_M02_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M02_AXI_WDATA;
  wire axi_cpu_interconnect_M02_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M02_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M02_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_ARADDR;
  wire axi_cpu_interconnect_M03_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M03_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_AWADDR;
  wire axi_cpu_interconnect_M03_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M03_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M03_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_BRESP;
  wire axi_cpu_interconnect_M03_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M03_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M03_AXI_RRESP;
  wire axi_cpu_interconnect_M03_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M03_AXI_WDATA;
  wire axi_cpu_interconnect_M03_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M03_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M03_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_ARADDR;
  wire axi_cpu_interconnect_M04_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M04_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_AWADDR;
  wire axi_cpu_interconnect_M04_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M04_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M04_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_BRESP;
  wire axi_cpu_interconnect_M04_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M04_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M04_AXI_RRESP;
  wire axi_cpu_interconnect_M04_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M04_AXI_WDATA;
  wire axi_cpu_interconnect_M04_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M04_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M04_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_ARADDR;
  wire axi_cpu_interconnect_M05_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M05_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_AWADDR;
  wire axi_cpu_interconnect_M05_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M05_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M05_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_BRESP;
  wire axi_cpu_interconnect_M05_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M05_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M05_AXI_RRESP;
  wire axi_cpu_interconnect_M05_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M05_AXI_WDATA;
  wire axi_cpu_interconnect_M05_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M05_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M05_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_ARADDR;
  wire axi_cpu_interconnect_M06_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M06_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_AWADDR;
  wire axi_cpu_interconnect_M06_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M06_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M06_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_BRESP;
  wire axi_cpu_interconnect_M06_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M06_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M06_AXI_RRESP;
  wire axi_cpu_interconnect_M06_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M06_AXI_WDATA;
  wire axi_cpu_interconnect_M06_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M06_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M06_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M07_AXI_ARPROT;
  wire axi_cpu_interconnect_M07_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M07_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M07_AXI_AWPROT;
  wire axi_cpu_interconnect_M07_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M07_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M07_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M07_AXI_BRESP;
  wire axi_cpu_interconnect_M07_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M07_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M07_AXI_RRESP;
  wire axi_cpu_interconnect_M07_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M07_AXI_WDATA;
  wire axi_cpu_interconnect_M07_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M07_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M07_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_ARADDR;
  wire axi_cpu_interconnect_M08_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M08_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_AWADDR;
  wire axi_cpu_interconnect_M08_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M08_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M08_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M08_AXI_BRESP;
  wire axi_cpu_interconnect_M08_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M08_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M08_AXI_RRESP;
  wire axi_cpu_interconnect_M08_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M08_AXI_WDATA;
  wire axi_cpu_interconnect_M08_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M08_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M08_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_ARADDR;
  wire axi_cpu_interconnect_M09_AXI_ARREADY;
  wire [0:0]axi_cpu_interconnect_M09_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_AWADDR;
  wire axi_cpu_interconnect_M09_AXI_AWREADY;
  wire [0:0]axi_cpu_interconnect_M09_AXI_AWVALID;
  wire [0:0]axi_cpu_interconnect_M09_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M09_AXI_BRESP;
  wire axi_cpu_interconnect_M09_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_RDATA;
  wire [0:0]axi_cpu_interconnect_M09_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M09_AXI_RRESP;
  wire axi_cpu_interconnect_M09_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M09_AXI_WDATA;
  wire axi_cpu_interconnect_M09_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M09_AXI_WSTRB;
  wire [0:0]axi_cpu_interconnect_M09_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_ARADDR;
  wire [1:0]axi_cpu_interconnect_M10_AXI_ARBURST;
  wire [3:0]axi_cpu_interconnect_M10_AXI_ARCACHE;
  wire [7:0]axi_cpu_interconnect_M10_AXI_ARLEN;
  wire [0:0]axi_cpu_interconnect_M10_AXI_ARLOCK;
  wire [2:0]axi_cpu_interconnect_M10_AXI_ARPROT;
  wire axi_cpu_interconnect_M10_AXI_ARREADY;
  wire [2:0]axi_cpu_interconnect_M10_AXI_ARSIZE;
  wire axi_cpu_interconnect_M10_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_AWADDR;
  wire [1:0]axi_cpu_interconnect_M10_AXI_AWBURST;
  wire [3:0]axi_cpu_interconnect_M10_AXI_AWCACHE;
  wire [7:0]axi_cpu_interconnect_M10_AXI_AWLEN;
  wire [0:0]axi_cpu_interconnect_M10_AXI_AWLOCK;
  wire [2:0]axi_cpu_interconnect_M10_AXI_AWPROT;
  wire axi_cpu_interconnect_M10_AXI_AWREADY;
  wire [2:0]axi_cpu_interconnect_M10_AXI_AWSIZE;
  wire axi_cpu_interconnect_M10_AXI_AWVALID;
  wire axi_cpu_interconnect_M10_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M10_AXI_BRESP;
  wire axi_cpu_interconnect_M10_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_RDATA;
  wire axi_cpu_interconnect_M10_AXI_RLAST;
  wire axi_cpu_interconnect_M10_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M10_AXI_RRESP;
  wire axi_cpu_interconnect_M10_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M10_AXI_WDATA;
  wire axi_cpu_interconnect_M10_AXI_WLAST;
  wire axi_cpu_interconnect_M10_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M10_AXI_WSTRB;
  wire axi_cpu_interconnect_M10_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M11_AXI_ARPROT;
  wire axi_cpu_interconnect_M11_AXI_ARREADY;
  wire axi_cpu_interconnect_M11_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M11_AXI_AWPROT;
  wire axi_cpu_interconnect_M11_AXI_AWREADY;
  wire axi_cpu_interconnect_M11_AXI_AWVALID;
  wire axi_cpu_interconnect_M11_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M11_AXI_BRESP;
  wire axi_cpu_interconnect_M11_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_RDATA;
  wire axi_cpu_interconnect_M11_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M11_AXI_RRESP;
  wire axi_cpu_interconnect_M11_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M11_AXI_WDATA;
  wire axi_cpu_interconnect_M11_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M11_AXI_WSTRB;
  wire axi_cpu_interconnect_M11_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M12_AXI_ARPROT;
  wire axi_cpu_interconnect_M12_AXI_ARREADY;
  wire axi_cpu_interconnect_M12_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M12_AXI_AWPROT;
  wire axi_cpu_interconnect_M12_AXI_AWREADY;
  wire axi_cpu_interconnect_M12_AXI_AWVALID;
  wire axi_cpu_interconnect_M12_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M12_AXI_BRESP;
  wire axi_cpu_interconnect_M12_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_RDATA;
  wire axi_cpu_interconnect_M12_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M12_AXI_RRESP;
  wire axi_cpu_interconnect_M12_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M12_AXI_WDATA;
  wire axi_cpu_interconnect_M12_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M12_AXI_WSTRB;
  wire axi_cpu_interconnect_M12_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M13_AXI_ARPROT;
  wire axi_cpu_interconnect_M13_AXI_ARREADY;
  wire axi_cpu_interconnect_M13_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M13_AXI_AWPROT;
  wire axi_cpu_interconnect_M13_AXI_AWREADY;
  wire axi_cpu_interconnect_M13_AXI_AWVALID;
  wire axi_cpu_interconnect_M13_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M13_AXI_BRESP;
  wire axi_cpu_interconnect_M13_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_RDATA;
  wire axi_cpu_interconnect_M13_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M13_AXI_RRESP;
  wire axi_cpu_interconnect_M13_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M13_AXI_WDATA;
  wire axi_cpu_interconnect_M13_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M13_AXI_WSTRB;
  wire axi_cpu_interconnect_M13_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M14_AXI_ARPROT;
  wire axi_cpu_interconnect_M14_AXI_ARREADY;
  wire axi_cpu_interconnect_M14_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M14_AXI_AWPROT;
  wire axi_cpu_interconnect_M14_AXI_AWREADY;
  wire axi_cpu_interconnect_M14_AXI_AWVALID;
  wire axi_cpu_interconnect_M14_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M14_AXI_BRESP;
  wire axi_cpu_interconnect_M14_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_RDATA;
  wire axi_cpu_interconnect_M14_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M14_AXI_RRESP;
  wire axi_cpu_interconnect_M14_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M14_AXI_WDATA;
  wire axi_cpu_interconnect_M14_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M14_AXI_WSTRB;
  wire axi_cpu_interconnect_M14_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M15_AXI_ARPROT;
  wire axi_cpu_interconnect_M15_AXI_ARREADY;
  wire axi_cpu_interconnect_M15_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M15_AXI_AWPROT;
  wire axi_cpu_interconnect_M15_AXI_AWREADY;
  wire axi_cpu_interconnect_M15_AXI_AWVALID;
  wire axi_cpu_interconnect_M15_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M15_AXI_BRESP;
  wire axi_cpu_interconnect_M15_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_RDATA;
  wire axi_cpu_interconnect_M15_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M15_AXI_RRESP;
  wire axi_cpu_interconnect_M15_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M15_AXI_WDATA;
  wire axi_cpu_interconnect_M15_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M15_AXI_WSTRB;
  wire axi_cpu_interconnect_M15_AXI_WVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_ARADDR;
  wire [2:0]axi_cpu_interconnect_M16_AXI_ARPROT;
  wire axi_cpu_interconnect_M16_AXI_ARREADY;
  wire axi_cpu_interconnect_M16_AXI_ARVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_AWADDR;
  wire [2:0]axi_cpu_interconnect_M16_AXI_AWPROT;
  wire axi_cpu_interconnect_M16_AXI_AWREADY;
  wire axi_cpu_interconnect_M16_AXI_AWVALID;
  wire axi_cpu_interconnect_M16_AXI_BREADY;
  wire [1:0]axi_cpu_interconnect_M16_AXI_BRESP;
  wire axi_cpu_interconnect_M16_AXI_BVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_RDATA;
  wire axi_cpu_interconnect_M16_AXI_RREADY;
  wire [1:0]axi_cpu_interconnect_M16_AXI_RRESP;
  wire axi_cpu_interconnect_M16_AXI_RVALID;
  wire [31:0]axi_cpu_interconnect_M16_AXI_WDATA;
  wire axi_cpu_interconnect_M16_AXI_WREADY;
  wire [3:0]axi_cpu_interconnect_M16_AXI_WSTRB;
  wire axi_cpu_interconnect_M16_AXI_WVALID;
  wire [13:0]axi_ddr_cntrl_DDR3_ADDR;
  wire [2:0]axi_ddr_cntrl_DDR3_BA;
  wire axi_ddr_cntrl_DDR3_CAS_N;
  wire [0:0]axi_ddr_cntrl_DDR3_CKE;
  wire [0:0]axi_ddr_cntrl_DDR3_CK_N;
  wire [0:0]axi_ddr_cntrl_DDR3_CK_P;
  wire [0:0]axi_ddr_cntrl_DDR3_CS_N;
  wire [7:0]axi_ddr_cntrl_DDR3_DM;
  wire [63:0]axi_ddr_cntrl_DDR3_DQ;
  wire [7:0]axi_ddr_cntrl_DDR3_DQS_N;
  wire [7:0]axi_ddr_cntrl_DDR3_DQS_P;
  wire [0:0]axi_ddr_cntrl_DDR3_ODT;
  wire axi_ddr_cntrl_DDR3_RAS_N;
  wire axi_ddr_cntrl_DDR3_RESET_N;
  wire axi_ddr_cntrl_DDR3_WE_N;
  wire axi_ddr_cntrl_mmcm_locked;
  wire axi_ethernet_MDIO_MDC;
  wire axi_ethernet_MDIO_MDIO_I;
  wire axi_ethernet_MDIO_MDIO_O;
  wire axi_ethernet_MDIO_MDIO_T;
  wire axi_ethernet_MII_COL;
  wire axi_ethernet_MII_CRS;
  wire axi_ethernet_MII_RST_N;
  wire [3:0]axi_ethernet_MII_RXD;
  wire axi_ethernet_MII_RX_CLK;
  wire axi_ethernet_MII_RX_DV;
  wire axi_ethernet_MII_RX_ER;
  wire [3:0]axi_ethernet_MII_TXD;
  wire axi_ethernet_MII_TX_CLK;
  wire axi_ethernet_MII_TX_EN;
  wire axi_ethernet_ip2intc_irpt;
  wire [31:0]axi_gpio_gpio2_io_o;
  wire [31:0]axi_gpio_gpio2_io_t;
  wire [31:0]axi_gpio_gpio_io_o;
  wire [31:0]axi_gpio_gpio_io_t;
  wire axi_gpio_ip2intc_irpt;
  wire [6:0]axi_gpio_lcd_GPIO_TRI_I;
  wire [6:0]axi_gpio_lcd_GPIO_TRI_O;
  wire [6:0]axi_gpio_lcd_GPIO_TRI_T;
  wire axi_gpio_lcd_ip2intc_irpt;
  wire axi_iic_main_IIC_SCL_I;
  wire axi_iic_main_IIC_SCL_O;
  wire axi_iic_main_IIC_SCL_T;
  wire axi_iic_main_IIC_SDA_I;
  wire axi_iic_main_IIC_SDA_O;
  wire axi_iic_main_IIC_SDA_T;
  wire axi_iic_main_iic2intc_irpt;
  wire axi_intc_interrupt_INTERRUPT;
  wire [26:1]axi_linear_flash_EMC_INTF_ADDR;
  wire axi_linear_flash_EMC_INTF_ADV_LDN;
  wire [0:0]axi_linear_flash_EMC_INTF_CE_N;
  wire [15:0]axi_linear_flash_EMC_INTF_DQ_I;
  wire [15:0]axi_linear_flash_EMC_INTF_DQ_O;
  wire [15:0]axi_linear_flash_EMC_INTF_DQ_T;
  wire [0:0]axi_linear_flash_EMC_INTF_OEN;
  wire axi_linear_flash_EMC_INTF_WEN;
  wire [29:0]axi_mem_interconnect_M00_AXI_ARADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_ARBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARCACHE;
  wire [7:0]axi_mem_interconnect_M00_AXI_ARLEN;
  wire [0:0]axi_mem_interconnect_M00_AXI_ARLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_ARQOS;
  wire axi_mem_interconnect_M00_AXI_ARREADY;
  wire [2:0]axi_mem_interconnect_M00_AXI_ARSIZE;
  wire axi_mem_interconnect_M00_AXI_ARVALID;
  wire [29:0]axi_mem_interconnect_M00_AXI_AWADDR;
  wire [1:0]axi_mem_interconnect_M00_AXI_AWBURST;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWCACHE;
  wire [7:0]axi_mem_interconnect_M00_AXI_AWLEN;
  wire [0:0]axi_mem_interconnect_M00_AXI_AWLOCK;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWPROT;
  wire [3:0]axi_mem_interconnect_M00_AXI_AWQOS;
  wire axi_mem_interconnect_M00_AXI_AWREADY;
  wire [2:0]axi_mem_interconnect_M00_AXI_AWSIZE;
  wire axi_mem_interconnect_M00_AXI_AWVALID;
  wire axi_mem_interconnect_M00_AXI_BREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_BRESP;
  wire axi_mem_interconnect_M00_AXI_BVALID;
  wire [511:0]axi_mem_interconnect_M00_AXI_RDATA;
  wire axi_mem_interconnect_M00_AXI_RLAST;
  wire axi_mem_interconnect_M00_AXI_RREADY;
  wire [1:0]axi_mem_interconnect_M00_AXI_RRESP;
  wire axi_mem_interconnect_M00_AXI_RVALID;
  wire [511:0]axi_mem_interconnect_M00_AXI_WDATA;
  wire axi_mem_interconnect_M00_AXI_WLAST;
  wire axi_mem_interconnect_M00_AXI_WREADY;
  wire [63:0]axi_mem_interconnect_M00_AXI_WSTRB;
  wire axi_mem_interconnect_M00_AXI_WVALID;
  wire axi_spi_io0_o;
  wire axi_spi_ip2intc_irpt;
  wire axi_spi_sck_o;
  wire [7:0]axi_spi_ss_o;
  wire [8:0]axi_sysid_0_rom_addr;
  wire axi_timer_interrupt;
  wire axi_uart_interrupt;
  wire axi_uart_tx;
  wire [63:0]data_bsplit_split_data_0;
  wire [63:0]data_bsplit_split_data_1;
  wire [31:0]gpio0_i_1;
  wire [31:0]gpio1_i_1;
  wire [31:0]rom_sys_0_rom_data;
  wire rx_data_0_n_1;
  wire rx_data_0_p_1;
  wire rx_data_1_n_1;
  wire rx_data_1_p_1;
  wire rx_data_2_n_1;
  wire rx_data_2_p_1;
  wire rx_data_3_n_1;
  wire rx_data_3_p_1;
  wire rx_ref_clk_0_1;
  wire spi_clk_i_1;
  wire [7:0]spi_csn_i_1;
  wire spi_sdi_i_1;
  wire spi_sdo_i_1;
  wire sys_200m_clk;
  wire [0:0]sys_200m_reset;
  wire [0:0]sys_200m_resetn;
  wire sys_200m_rst;
  wire sys_clk_n_1;
  wire sys_clk_p_1;
  wire [15:0]sys_concat_intc_dout;
  wire sys_cpu_clk;
  wire [0:0]sys_cpu_reset;
  wire [0:0]sys_cpu_resetn;
  wire [0:31]sys_dlmb_cntlr_BRAM_PORT_ADDR;
  wire sys_dlmb_cntlr_BRAM_PORT_CLK;
  wire [0:31]sys_dlmb_cntlr_BRAM_PORT_DIN;
  wire [31:0]sys_dlmb_cntlr_BRAM_PORT_DOUT;
  wire sys_dlmb_cntlr_BRAM_PORT_EN;
  wire sys_dlmb_cntlr_BRAM_PORT_RST;
  wire [0:3]sys_dlmb_cntlr_BRAM_PORT_WE;
  wire [0:31]sys_ilmb_cntlr_BRAM_PORT_ADDR;
  wire sys_ilmb_cntlr_BRAM_PORT_CLK;
  wire [0:31]sys_ilmb_cntlr_BRAM_PORT_DIN;
  wire [31:0]sys_ilmb_cntlr_BRAM_PORT_DOUT;
  wire sys_ilmb_cntlr_BRAM_PORT_EN;
  wire sys_ilmb_cntlr_BRAM_PORT_RST;
  wire [0:3]sys_ilmb_cntlr_BRAM_PORT_WE;
  wire [0:31]sys_mb_DLMB_ABUS;
  wire sys_mb_DLMB_ADDRSTROBE;
  wire [0:3]sys_mb_DLMB_BE;
  wire sys_mb_DLMB_CE;
  wire [0:31]sys_mb_DLMB_READDBUS;
  wire sys_mb_DLMB_READSTROBE;
  wire sys_mb_DLMB_READY;
  wire sys_mb_DLMB_UE;
  wire sys_mb_DLMB_WAIT;
  wire [0:31]sys_mb_DLMB_WRITEDBUS;
  wire sys_mb_DLMB_WRITESTROBE;
  wire [0:31]sys_mb_ILMB_ABUS;
  wire sys_mb_ILMB_ADDRSTROBE;
  wire sys_mb_ILMB_CE;
  wire [0:31]sys_mb_ILMB_READDBUS;
  wire sys_mb_ILMB_READSTROBE;
  wire sys_mb_ILMB_READY;
  wire sys_mb_ILMB_UE;
  wire sys_mb_ILMB_WAIT;
  wire [31:0]sys_mb_M_AXI_DC_ARADDR;
  wire [1:0]sys_mb_M_AXI_DC_ARBURST;
  wire [3:0]sys_mb_M_AXI_DC_ARCACHE;
  wire [7:0]sys_mb_M_AXI_DC_ARLEN;
  wire sys_mb_M_AXI_DC_ARLOCK;
  wire [2:0]sys_mb_M_AXI_DC_ARPROT;
  wire [3:0]sys_mb_M_AXI_DC_ARQOS;
  wire sys_mb_M_AXI_DC_ARREADY;
  wire [2:0]sys_mb_M_AXI_DC_ARSIZE;
  wire sys_mb_M_AXI_DC_ARVALID;
  wire [31:0]sys_mb_M_AXI_DC_AWADDR;
  wire [1:0]sys_mb_M_AXI_DC_AWBURST;
  wire [3:0]sys_mb_M_AXI_DC_AWCACHE;
  wire [7:0]sys_mb_M_AXI_DC_AWLEN;
  wire sys_mb_M_AXI_DC_AWLOCK;
  wire [2:0]sys_mb_M_AXI_DC_AWPROT;
  wire [3:0]sys_mb_M_AXI_DC_AWQOS;
  wire sys_mb_M_AXI_DC_AWREADY;
  wire [2:0]sys_mb_M_AXI_DC_AWSIZE;
  wire sys_mb_M_AXI_DC_AWVALID;
  wire sys_mb_M_AXI_DC_BREADY;
  wire [1:0]sys_mb_M_AXI_DC_BRESP;
  wire sys_mb_M_AXI_DC_BVALID;
  wire [31:0]sys_mb_M_AXI_DC_RDATA;
  wire sys_mb_M_AXI_DC_RLAST;
  wire sys_mb_M_AXI_DC_RREADY;
  wire [1:0]sys_mb_M_AXI_DC_RRESP;
  wire sys_mb_M_AXI_DC_RVALID;
  wire [31:0]sys_mb_M_AXI_DC_WDATA;
  wire sys_mb_M_AXI_DC_WLAST;
  wire sys_mb_M_AXI_DC_WREADY;
  wire [3:0]sys_mb_M_AXI_DC_WSTRB;
  wire sys_mb_M_AXI_DC_WVALID;
  wire [31:0]sys_mb_M_AXI_IC_ARADDR;
  wire [1:0]sys_mb_M_AXI_IC_ARBURST;
  wire [3:0]sys_mb_M_AXI_IC_ARCACHE;
  wire [7:0]sys_mb_M_AXI_IC_ARLEN;
  wire sys_mb_M_AXI_IC_ARLOCK;
  wire [2:0]sys_mb_M_AXI_IC_ARPROT;
  wire [3:0]sys_mb_M_AXI_IC_ARQOS;
  wire sys_mb_M_AXI_IC_ARREADY;
  wire [2:0]sys_mb_M_AXI_IC_ARSIZE;
  wire sys_mb_M_AXI_IC_ARVALID;
  wire [31:0]sys_mb_M_AXI_IC_RDATA;
  wire sys_mb_M_AXI_IC_RLAST;
  wire sys_mb_M_AXI_IC_RREADY;
  wire [1:0]sys_mb_M_AXI_IC_RRESP;
  wire sys_mb_M_AXI_IC_RVALID;
  wire sys_mb_debug_Debug_SYS_Rst;
  wire sys_mb_debug_MBDEBUG_0_CAPTURE;
  wire sys_mb_debug_MBDEBUG_0_CLK;
  wire sys_mb_debug_MBDEBUG_0_DISABLE;
  wire [0:7]sys_mb_debug_MBDEBUG_0_REG_EN;
  wire sys_mb_debug_MBDEBUG_0_RST;
  wire sys_mb_debug_MBDEBUG_0_SHIFT;
  wire sys_mb_debug_MBDEBUG_0_TDI;
  wire sys_mb_debug_MBDEBUG_0_TDO;
  wire sys_mb_debug_MBDEBUG_0_UPDATE;
  wire sys_rst_1;
  wire [0:0]sys_rstgen_bus_struct_reset;
  wire sys_rstgen_mb_reset;
  wire sysref_1;
  wire uart_sin_1;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_0_rxcharisk;
  wire [31:0]util_fmcjesdadc1_xcvr_rx_0_rxdata;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_0_rxdisperr;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_0_rxnotintable;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_1_rxcharisk;
  wire [31:0]util_fmcjesdadc1_xcvr_rx_1_rxdata;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_1_rxdisperr;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_1_rxnotintable;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_2_rxcharisk;
  wire [31:0]util_fmcjesdadc1_xcvr_rx_2_rxdata;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_2_rxdisperr;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_2_rxnotintable;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_3_rxcharisk;
  wire [31:0]util_fmcjesdadc1_xcvr_rx_3_rxdata;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_3_rxdisperr;
  wire [3:0]util_fmcjesdadc1_xcvr_rx_3_rxnotintable;
  wire util_fmcjesdadc1_xcvr_rx_out_clk_0;
  wire [31:0]NLW_axi_linear_flash_mem_a_UNCONNECTED;

  assign adc_data_a[31:0] = axi_ad9250_0_core_adc_data_a;
  assign adc_data_b[31:0] = axi_ad9250_0_core_adc_data_b;
  assign adc_data_c[31:0] = axi_ad9250_1_core_adc_data_a;
  assign adc_data_d[31:0] = axi_ad9250_1_core_adc_data_b;
  assign adc_enable_a = axi_ad9250_0_core_adc_enable_a;
  assign adc_enable_b = axi_ad9250_0_core_adc_enable_b;
  assign adc_enable_c = axi_ad9250_1_core_adc_enable_a;
  assign adc_enable_d = axi_ad9250_1_core_adc_enable_b;
  assign adc_valid_a = axi_ad9250_0_core_adc_valid_a;
  assign adc_valid_b = axi_ad9250_0_core_adc_valid_b;
  assign adc_valid_c = axi_ad9250_1_core_adc_valid_a;
  assign adc_valid_d = axi_ad9250_1_core_adc_valid_b;
  assign axi_ethernet_MDIO_MDIO_I = mdio_mdio_i;
  assign axi_ethernet_MII_COL = mii_col;
  assign axi_ethernet_MII_CRS = mii_crs;
  assign axi_ethernet_MII_RXD = mii_rxd[3:0];
  assign axi_ethernet_MII_RX_CLK = mii_rx_clk;
  assign axi_ethernet_MII_RX_DV = mii_rx_dv;
  assign axi_ethernet_MII_RX_ER = mii_rx_er;
  assign axi_ethernet_MII_TX_CLK = mii_tx_clk;
  assign axi_gpio_lcd_GPIO_TRI_I = gpio_lcd_tri_i[6:0];
  assign axi_iic_main_IIC_SCL_I = iic_main_scl_i;
  assign axi_iic_main_IIC_SDA_I = iic_main_sda_i;
  assign axi_linear_flash_EMC_INTF_DQ_I = linear_flash_dq_i[15:0];
  assign ddr3_addr[13:0] = axi_ddr_cntrl_DDR3_ADDR;
  assign ddr3_ba[2:0] = axi_ddr_cntrl_DDR3_BA;
  assign ddr3_cas_n = axi_ddr_cntrl_DDR3_CAS_N;
  assign ddr3_ck_n[0] = axi_ddr_cntrl_DDR3_CK_N;
  assign ddr3_ck_p[0] = axi_ddr_cntrl_DDR3_CK_P;
  assign ddr3_cke[0] = axi_ddr_cntrl_DDR3_CKE;
  assign ddr3_cs_n[0] = axi_ddr_cntrl_DDR3_CS_N;
  assign ddr3_dm[7:0] = axi_ddr_cntrl_DDR3_DM;
  assign ddr3_odt[0] = axi_ddr_cntrl_DDR3_ODT;
  assign ddr3_ras_n = axi_ddr_cntrl_DDR3_RAS_N;
  assign ddr3_reset_n = axi_ddr_cntrl_DDR3_RESET_N;
  assign ddr3_we_n = axi_ddr_cntrl_DDR3_WE_N;
  assign gpio0_i_1 = gpio0_i[31:0];
  assign gpio0_o[31:0] = axi_gpio_gpio_io_o;
  assign gpio0_t[31:0] = axi_gpio_gpio_io_t;
  assign gpio1_i_1 = gpio1_i[31:0];
  assign gpio1_o[31:0] = axi_gpio_gpio2_io_o;
  assign gpio1_t[31:0] = axi_gpio_gpio2_io_t;
  assign gpio_lcd_tri_o[6:0] = axi_gpio_lcd_GPIO_TRI_O;
  assign gpio_lcd_tri_t[6:0] = axi_gpio_lcd_GPIO_TRI_T;
  assign iic_main_scl_o = axi_iic_main_IIC_SCL_O;
  assign iic_main_scl_t = axi_iic_main_IIC_SCL_T;
  assign iic_main_sda_o = axi_iic_main_IIC_SDA_O;
  assign iic_main_sda_t = axi_iic_main_IIC_SDA_T;
  assign linear_flash_addr[26:1] = axi_linear_flash_EMC_INTF_ADDR;
  assign linear_flash_adv_ldn = axi_linear_flash_EMC_INTF_ADV_LDN;
  assign linear_flash_ce_n = axi_linear_flash_EMC_INTF_CE_N;
  assign linear_flash_dq_o[15:0] = axi_linear_flash_EMC_INTF_DQ_O;
  assign linear_flash_dq_t[15:0] = axi_linear_flash_EMC_INTF_DQ_T;
  assign linear_flash_oen = axi_linear_flash_EMC_INTF_OEN;
  assign linear_flash_wen = axi_linear_flash_EMC_INTF_WEN;
  assign mdio_mdc = axi_ethernet_MDIO_MDC;
  assign mdio_mdio_o = axi_ethernet_MDIO_MDIO_O;
  assign mdio_mdio_t = axi_ethernet_MDIO_MDIO_T;
  assign mii_rst_n = axi_ethernet_MII_RST_N;
  assign mii_tx_en = axi_ethernet_MII_TX_EN;
  assign mii_txd[3:0] = axi_ethernet_MII_TXD;
  assign rx_core_clk = util_fmcjesdadc1_xcvr_rx_out_clk_0;
  assign rx_data_0_n_1 = rx_data_0_n;
  assign rx_data_0_p_1 = rx_data_0_p;
  assign rx_data_1_n_1 = rx_data_1_n;
  assign rx_data_1_p_1 = rx_data_1_p;
  assign rx_data_2_n_1 = rx_data_2_n;
  assign rx_data_2_p_1 = rx_data_2_p;
  assign rx_data_3_n_1 = rx_data_3_n;
  assign rx_data_3_p_1 = rx_data_3_p;
  assign rx_ref_clk_0_1 = rx_ref_clk_0;
  assign rx_sync_0[0] = axi_ad9250_jesd_sync;
  assign spi_clk_i_1 = spi_clk_i;
  assign spi_clk_o = axi_spi_sck_o;
  assign spi_csn_i_1 = spi_csn_i[7:0];
  assign spi_csn_o[7:0] = axi_spi_ss_o;
  assign spi_sdi_i_1 = spi_sdi_i;
  assign spi_sdo_i_1 = spi_sdo_i;
  assign spi_sdo_o = axi_spi_io0_o;
  assign sys_clk_n_1 = sys_clk_n;
  assign sys_clk_p_1 = sys_clk_p;
  assign sys_rst_1 = sys_rst;
  assign sysref_1 = rx_sysref_0;
  assign uart_sin_1 = uart_sin;
  assign uart_sout = axi_uart_tx;
  system_GND_1_0 GND_1
       (.dout(GND_1_dout));
  system_GND_12_0 GND_12
       (.dout(GND_12_dout));
  system_axi_ad9250_0_core_0 axi_ad9250_0_core
       (.adc_clk(axi_ad9250_0_core_adc_clk),
        .adc_data_a(axi_ad9250_0_core_adc_data_a),
        .adc_data_b(axi_ad9250_0_core_adc_data_b),
        .adc_dovf(axi_ad9250_0_cpack_fifo_wr_overflow),
        .adc_enable_a(axi_ad9250_0_core_adc_enable_a),
        .adc_enable_b(axi_ad9250_0_core_adc_enable_b),
        .adc_valid_a(axi_ad9250_0_core_adc_valid_a),
        .adc_valid_b(axi_ad9250_0_core_adc_valid_b),
        .rx_clk(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_data(data_bsplit_split_data_0),
        .rx_sof(axi_ad9250_jesd_rx_sof),
        .rx_valid(1'b0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M12_AXI_ARADDR[11:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M12_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M12_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M12_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M12_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_cpu_interconnect_M12_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M12_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M12_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M12_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M12_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M12_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M12_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M12_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M12_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M12_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M12_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M12_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M12_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M12_AXI_WVALID));
  system_axi_ad9250_0_cpack_0 axi_ad9250_0_cpack
       (.clk(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .enable_0(axi_ad9250_0_core_adc_enable_a),
        .enable_1(axi_ad9250_0_core_adc_enable_b),
        .fifo_wr_data_0(axi_ad9250_0_core_adc_data_a),
        .fifo_wr_data_1(axi_ad9250_0_core_adc_data_b),
        .fifo_wr_en(axi_ad9250_0_core_adc_valid_a),
        .fifo_wr_overflow(axi_ad9250_0_cpack_fifo_wr_overflow),
        .packed_fifo_wr_data(axi_ad9250_0_cpack_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(axi_ad9250_0_cpack_packed_fifo_wr_EN),
        .packed_fifo_wr_overflow(axi_ad9250_0_cpack_packed_fifo_wr_OVERFLOW),
        .packed_fifo_wr_sync(axi_ad9250_0_cpack_packed_fifo_wr_SYNC),
        .reset(axi_ad9250_jesd_rstgen_peripheral_reset));
  system_axi_ad9250_0_dma_0 axi_ad9250_0_dma
       (.fifo_wr_clk(axi_ad9250_0_core_adc_clk),
        .fifo_wr_din(axi_ad9250_0_cpack_packed_fifo_wr_DATA),
        .fifo_wr_en(axi_ad9250_0_cpack_packed_fifo_wr_EN),
        .fifo_wr_overflow(axi_ad9250_0_cpack_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(axi_ad9250_0_cpack_packed_fifo_wr_SYNC),
        .irq(axi_ad9250_0_dma_irq),
        .m_dest_axi_aclk(sys_200m_clk),
        .m_dest_axi_aresetn(sys_200m_resetn),
        .m_dest_axi_awaddr(axi_ad9250_0_dma_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_ad9250_0_dma_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_ad9250_0_dma_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_ad9250_0_dma_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_ad9250_0_dma_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_ad9250_0_dma_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_ad9250_0_dma_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_ad9250_0_dma_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_ad9250_0_dma_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_ad9250_0_dma_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_ad9250_0_dma_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_ad9250_0_dma_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_ad9250_0_dma_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_ad9250_0_dma_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_ad9250_0_dma_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_ad9250_0_dma_m_dest_axi_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M15_AXI_ARADDR[10:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M15_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M15_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M15_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M15_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_cpu_interconnect_M15_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M15_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M15_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M15_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M15_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M15_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M15_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M15_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M15_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M15_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M15_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M15_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M15_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M15_AXI_WVALID));
  system_axi_ad9250_1_core_0 axi_ad9250_1_core
       (.adc_clk(axi_ad9250_1_core_adc_clk),
        .adc_data_a(axi_ad9250_1_core_adc_data_a),
        .adc_data_b(axi_ad9250_1_core_adc_data_b),
        .adc_dovf(axi_ad9250_1_cpack_fifo_wr_overflow),
        .adc_enable_a(axi_ad9250_1_core_adc_enable_a),
        .adc_enable_b(axi_ad9250_1_core_adc_enable_b),
        .adc_valid_a(axi_ad9250_1_core_adc_valid_a),
        .adc_valid_b(axi_ad9250_1_core_adc_valid_b),
        .rx_clk(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_data(data_bsplit_split_data_1),
        .rx_sof(axi_ad9250_jesd_rx_sof),
        .rx_valid(1'b0),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M13_AXI_ARADDR[11:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M13_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M13_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M13_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M13_AXI_AWADDR[11:0]),
        .s_axi_awprot(axi_cpu_interconnect_M13_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M13_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M13_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M13_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M13_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M13_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M13_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M13_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M13_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M13_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M13_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M13_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M13_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M13_AXI_WVALID));
  system_axi_ad9250_1_cpack_0 axi_ad9250_1_cpack
       (.clk(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .enable_0(axi_ad9250_1_core_adc_enable_a),
        .enable_1(axi_ad9250_1_core_adc_enable_b),
        .fifo_wr_data_0(axi_ad9250_1_core_adc_data_a),
        .fifo_wr_data_1(axi_ad9250_1_core_adc_data_b),
        .fifo_wr_en(axi_ad9250_1_core_adc_valid_a),
        .fifo_wr_overflow(axi_ad9250_1_cpack_fifo_wr_overflow),
        .packed_fifo_wr_data(axi_ad9250_1_cpack_packed_fifo_wr_DATA),
        .packed_fifo_wr_en(axi_ad9250_1_cpack_packed_fifo_wr_EN),
        .packed_fifo_wr_overflow(axi_ad9250_1_cpack_packed_fifo_wr_OVERFLOW),
        .packed_fifo_wr_sync(axi_ad9250_1_cpack_packed_fifo_wr_SYNC),
        .reset(axi_ad9250_jesd_rstgen_peripheral_reset));
  system_axi_ad9250_1_dma_0 axi_ad9250_1_dma
       (.fifo_wr_clk(axi_ad9250_1_core_adc_clk),
        .fifo_wr_din(axi_ad9250_1_cpack_packed_fifo_wr_DATA),
        .fifo_wr_en(axi_ad9250_1_cpack_packed_fifo_wr_EN),
        .fifo_wr_overflow(axi_ad9250_1_cpack_packed_fifo_wr_OVERFLOW),
        .fifo_wr_sync(axi_ad9250_1_cpack_packed_fifo_wr_SYNC),
        .irq(axi_ad9250_1_dma_irq),
        .m_dest_axi_aclk(sys_200m_clk),
        .m_dest_axi_aresetn(sys_200m_resetn),
        .m_dest_axi_awaddr(axi_ad9250_1_dma_m_dest_axi_AWADDR),
        .m_dest_axi_awburst(axi_ad9250_1_dma_m_dest_axi_AWBURST),
        .m_dest_axi_awcache(axi_ad9250_1_dma_m_dest_axi_AWCACHE),
        .m_dest_axi_awlen(axi_ad9250_1_dma_m_dest_axi_AWLEN),
        .m_dest_axi_awprot(axi_ad9250_1_dma_m_dest_axi_AWPROT),
        .m_dest_axi_awready(axi_ad9250_1_dma_m_dest_axi_AWREADY),
        .m_dest_axi_awsize(axi_ad9250_1_dma_m_dest_axi_AWSIZE),
        .m_dest_axi_awvalid(axi_ad9250_1_dma_m_dest_axi_AWVALID),
        .m_dest_axi_bready(axi_ad9250_1_dma_m_dest_axi_BREADY),
        .m_dest_axi_bresp(axi_ad9250_1_dma_m_dest_axi_BRESP),
        .m_dest_axi_bvalid(axi_ad9250_1_dma_m_dest_axi_BVALID),
        .m_dest_axi_wdata(axi_ad9250_1_dma_m_dest_axi_WDATA),
        .m_dest_axi_wlast(axi_ad9250_1_dma_m_dest_axi_WLAST),
        .m_dest_axi_wready(axi_ad9250_1_dma_m_dest_axi_WREADY),
        .m_dest_axi_wstrb(axi_ad9250_1_dma_m_dest_axi_WSTRB),
        .m_dest_axi_wvalid(axi_ad9250_1_dma_m_dest_axi_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M16_AXI_ARADDR[10:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M16_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M16_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M16_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M16_AXI_AWADDR[10:0]),
        .s_axi_awprot(axi_cpu_interconnect_M16_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M16_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M16_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M16_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M16_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M16_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M16_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M16_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M16_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M16_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M16_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M16_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M16_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M16_AXI_WVALID));
  axi_ad9250_jesd_imp_YL5HSW axi_ad9250_jesd
       (.device_clk(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .irq(axi_ad9250_jesd_irq),
        .phy_en_char_align(axi_ad9250_jesd_phy_en_char_align),
        .rx_data_tdata(axi_ad9250_jesd_rx_data_tdata),
        .rx_phy0_rxcharisk(util_fmcjesdadc1_xcvr_rx_0_rxcharisk),
        .rx_phy0_rxdata(util_fmcjesdadc1_xcvr_rx_0_rxdata),
        .rx_phy0_rxdisperr(util_fmcjesdadc1_xcvr_rx_0_rxdisperr),
        .rx_phy0_rxnotintable(util_fmcjesdadc1_xcvr_rx_0_rxnotintable),
        .rx_phy1_rxcharisk(util_fmcjesdadc1_xcvr_rx_1_rxcharisk),
        .rx_phy1_rxdata(util_fmcjesdadc1_xcvr_rx_1_rxdata),
        .rx_phy1_rxdisperr(util_fmcjesdadc1_xcvr_rx_1_rxdisperr),
        .rx_phy1_rxnotintable(util_fmcjesdadc1_xcvr_rx_1_rxnotintable),
        .rx_phy2_rxcharisk(util_fmcjesdadc1_xcvr_rx_2_rxcharisk),
        .rx_phy2_rxdata(util_fmcjesdadc1_xcvr_rx_2_rxdata),
        .rx_phy2_rxdisperr(util_fmcjesdadc1_xcvr_rx_2_rxdisperr),
        .rx_phy2_rxnotintable(util_fmcjesdadc1_xcvr_rx_2_rxnotintable),
        .rx_phy3_rxcharisk(util_fmcjesdadc1_xcvr_rx_3_rxcharisk),
        .rx_phy3_rxdata(util_fmcjesdadc1_xcvr_rx_3_rxdata),
        .rx_phy3_rxdisperr(util_fmcjesdadc1_xcvr_rx_3_rxdisperr),
        .rx_phy3_rxnotintable(util_fmcjesdadc1_xcvr_rx_3_rxnotintable),
        .rx_sof(axi_ad9250_jesd_rx_sof),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M14_AXI_ARADDR),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M14_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M14_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M14_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M14_AXI_AWADDR),
        .s_axi_awprot(axi_cpu_interconnect_M14_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M14_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M14_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M14_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M14_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M14_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M14_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M14_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M14_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M14_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M14_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M14_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M14_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M14_AXI_WVALID),
        .sync(axi_ad9250_jesd_sync),
        .sysref(sysref_1));
  system_axi_ad9250_jesd_rstgen_0 axi_ad9250_jesd_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(sys_cpu_resetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(axi_ad9250_jesd_rstgen_peripheral_reset),
        .slowest_sync_clk(util_fmcjesdadc1_xcvr_rx_out_clk_0));
  system_axi_ad9250_xcvr_0 axi_ad9250_xcvr
       (.m_axi_araddr(axi_ad9250_xcvr_m_axi_ARADDR),
        .m_axi_arprot(axi_ad9250_xcvr_m_axi_ARPROT),
        .m_axi_arready(axi_ad9250_xcvr_m_axi_ARREADY),
        .m_axi_arvalid(axi_ad9250_xcvr_m_axi_ARVALID),
        .m_axi_awaddr(axi_ad9250_xcvr_m_axi_AWADDR),
        .m_axi_awprot(axi_ad9250_xcvr_m_axi_AWPROT),
        .m_axi_awready(axi_ad9250_xcvr_m_axi_AWREADY),
        .m_axi_awvalid(axi_ad9250_xcvr_m_axi_AWVALID),
        .m_axi_bready(axi_ad9250_xcvr_m_axi_BREADY),
        .m_axi_bresp(axi_ad9250_xcvr_m_axi_BRESP),
        .m_axi_bvalid(axi_ad9250_xcvr_m_axi_BVALID),
        .m_axi_rdata(axi_ad9250_xcvr_m_axi_RDATA),
        .m_axi_rready(axi_ad9250_xcvr_m_axi_RREADY),
        .m_axi_rresp(axi_ad9250_xcvr_m_axi_RRESP),
        .m_axi_rvalid(axi_ad9250_xcvr_m_axi_RVALID),
        .m_axi_wdata(axi_ad9250_xcvr_m_axi_WDATA),
        .m_axi_wready(axi_ad9250_xcvr_m_axi_WREADY),
        .m_axi_wstrb(axi_ad9250_xcvr_m_axi_WSTRB),
        .m_axi_wvalid(axi_ad9250_xcvr_m_axi_WVALID),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M11_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M11_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M11_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M11_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M11_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M11_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M11_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M11_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M11_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M11_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M11_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M11_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M11_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M11_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M11_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M11_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M11_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M11_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M11_AXI_WVALID),
        .up_ch_addr_0(axi_ad9250_xcvr_up_ch_0_addr),
        .up_ch_addr_1(axi_ad9250_xcvr_up_ch_1_addr),
        .up_ch_addr_2(axi_ad9250_xcvr_up_ch_2_addr),
        .up_ch_addr_3(axi_ad9250_xcvr_up_ch_3_addr),
        .up_ch_enb_0(axi_ad9250_xcvr_up_ch_0_enb),
        .up_ch_enb_1(axi_ad9250_xcvr_up_ch_1_enb),
        .up_ch_enb_2(axi_ad9250_xcvr_up_ch_2_enb),
        .up_ch_enb_3(axi_ad9250_xcvr_up_ch_3_enb),
        .up_ch_lpm_dfe_n_0(axi_ad9250_xcvr_up_ch_0_lpm_dfe_n),
        .up_ch_lpm_dfe_n_1(axi_ad9250_xcvr_up_ch_1_lpm_dfe_n),
        .up_ch_lpm_dfe_n_2(axi_ad9250_xcvr_up_ch_2_lpm_dfe_n),
        .up_ch_lpm_dfe_n_3(axi_ad9250_xcvr_up_ch_3_lpm_dfe_n),
        .up_ch_out_clk_sel_0(axi_ad9250_xcvr_up_ch_0_out_clk_sel),
        .up_ch_out_clk_sel_1(axi_ad9250_xcvr_up_ch_1_out_clk_sel),
        .up_ch_out_clk_sel_2(axi_ad9250_xcvr_up_ch_2_out_clk_sel),
        .up_ch_out_clk_sel_3(axi_ad9250_xcvr_up_ch_3_out_clk_sel),
        .up_ch_pll_locked_0(axi_ad9250_xcvr_up_ch_0_pll_locked),
        .up_ch_pll_locked_1(axi_ad9250_xcvr_up_ch_1_pll_locked),
        .up_ch_pll_locked_2(axi_ad9250_xcvr_up_ch_2_pll_locked),
        .up_ch_pll_locked_3(axi_ad9250_xcvr_up_ch_3_pll_locked),
        .up_ch_rate_0(axi_ad9250_xcvr_up_ch_0_rate),
        .up_ch_rate_1(axi_ad9250_xcvr_up_ch_1_rate),
        .up_ch_rate_2(axi_ad9250_xcvr_up_ch_2_rate),
        .up_ch_rate_3(axi_ad9250_xcvr_up_ch_3_rate),
        .up_ch_rdata_0(axi_ad9250_xcvr_up_ch_0_rdata),
        .up_ch_rdata_1(axi_ad9250_xcvr_up_ch_1_rdata),
        .up_ch_rdata_2(axi_ad9250_xcvr_up_ch_2_rdata),
        .up_ch_rdata_3(axi_ad9250_xcvr_up_ch_3_rdata),
        .up_ch_ready_0(axi_ad9250_xcvr_up_ch_0_ready),
        .up_ch_ready_1(axi_ad9250_xcvr_up_ch_1_ready),
        .up_ch_ready_2(axi_ad9250_xcvr_up_ch_2_ready),
        .up_ch_ready_3(axi_ad9250_xcvr_up_ch_3_ready),
        .up_ch_rst_0(axi_ad9250_xcvr_up_ch_0_rst),
        .up_ch_rst_1(axi_ad9250_xcvr_up_ch_1_rst),
        .up_ch_rst_2(axi_ad9250_xcvr_up_ch_2_rst),
        .up_ch_rst_3(axi_ad9250_xcvr_up_ch_3_rst),
        .up_ch_rst_done_0(axi_ad9250_xcvr_up_ch_0_rst_done),
        .up_ch_rst_done_1(axi_ad9250_xcvr_up_ch_1_rst_done),
        .up_ch_rst_done_2(axi_ad9250_xcvr_up_ch_2_rst_done),
        .up_ch_rst_done_3(axi_ad9250_xcvr_up_ch_3_rst_done),
        .up_ch_sys_clk_sel_0(axi_ad9250_xcvr_up_ch_0_sys_clk_sel),
        .up_ch_sys_clk_sel_1(axi_ad9250_xcvr_up_ch_1_sys_clk_sel),
        .up_ch_sys_clk_sel_2(axi_ad9250_xcvr_up_ch_2_sys_clk_sel),
        .up_ch_sys_clk_sel_3(axi_ad9250_xcvr_up_ch_3_sys_clk_sel),
        .up_ch_user_ready_0(axi_ad9250_xcvr_up_ch_0_user_ready),
        .up_ch_user_ready_1(axi_ad9250_xcvr_up_ch_1_user_ready),
        .up_ch_user_ready_2(axi_ad9250_xcvr_up_ch_2_user_ready),
        .up_ch_user_ready_3(axi_ad9250_xcvr_up_ch_3_user_ready),
        .up_ch_wdata_0(axi_ad9250_xcvr_up_ch_0_wdata),
        .up_ch_wdata_1(axi_ad9250_xcvr_up_ch_1_wdata),
        .up_ch_wdata_2(axi_ad9250_xcvr_up_ch_2_wdata),
        .up_ch_wdata_3(axi_ad9250_xcvr_up_ch_3_wdata),
        .up_ch_wr_0(axi_ad9250_xcvr_up_ch_0_wr),
        .up_ch_wr_1(axi_ad9250_xcvr_up_ch_1_wr),
        .up_ch_wr_2(axi_ad9250_xcvr_up_ch_2_wr),
        .up_ch_wr_3(axi_ad9250_xcvr_up_ch_3_wr),
        .up_es_addr_0(axi_ad9250_xcvr_up_es_0_addr),
        .up_es_addr_1(axi_ad9250_xcvr_up_es_1_addr),
        .up_es_addr_2(axi_ad9250_xcvr_up_es_2_addr),
        .up_es_addr_3(axi_ad9250_xcvr_up_es_3_addr),
        .up_es_enb_0(axi_ad9250_xcvr_up_es_0_enb),
        .up_es_enb_1(axi_ad9250_xcvr_up_es_1_enb),
        .up_es_enb_2(axi_ad9250_xcvr_up_es_2_enb),
        .up_es_enb_3(axi_ad9250_xcvr_up_es_3_enb),
        .up_es_rdata_0(axi_ad9250_xcvr_up_es_0_rdata),
        .up_es_rdata_1(axi_ad9250_xcvr_up_es_1_rdata),
        .up_es_rdata_2(axi_ad9250_xcvr_up_es_2_rdata),
        .up_es_rdata_3(axi_ad9250_xcvr_up_es_3_rdata),
        .up_es_ready_0(axi_ad9250_xcvr_up_es_0_ready),
        .up_es_ready_1(axi_ad9250_xcvr_up_es_1_ready),
        .up_es_ready_2(axi_ad9250_xcvr_up_es_2_ready),
        .up_es_ready_3(axi_ad9250_xcvr_up_es_3_ready),
        .up_es_reset_0(axi_ad9250_xcvr_up_es_0_reset),
        .up_es_reset_1(axi_ad9250_xcvr_up_es_1_reset),
        .up_es_reset_2(axi_ad9250_xcvr_up_es_2_reset),
        .up_es_reset_3(axi_ad9250_xcvr_up_es_3_reset),
        .up_es_wdata_0(axi_ad9250_xcvr_up_es_0_wdata),
        .up_es_wdata_1(axi_ad9250_xcvr_up_es_1_wdata),
        .up_es_wdata_2(axi_ad9250_xcvr_up_es_2_wdata),
        .up_es_wdata_3(axi_ad9250_xcvr_up_es_3_wdata),
        .up_es_wr_0(axi_ad9250_xcvr_up_es_0_wr),
        .up_es_wr_1(axi_ad9250_xcvr_up_es_1_wr),
        .up_es_wr_2(axi_ad9250_xcvr_up_es_2_wr),
        .up_es_wr_3(axi_ad9250_xcvr_up_es_3_wr),
        .up_pll_rst(axi_ad9250_xcvr_up_pll_rst));
  system_axi_cpu_interconnect_0 axi_cpu_interconnect
       (.ACLK(sys_cpu_clk),
        .ARESETN(sys_cpu_resetn),
        .M00_ACLK(sys_cpu_clk),
        .M00_ARESETN(sys_cpu_resetn),
        .M00_AXI_araddr(axi_cpu_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_cpu_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_cpu_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_cpu_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_cpu_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_cpu_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_cpu_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_cpu_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_cpu_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_cpu_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(axi_cpu_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_cpu_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_cpu_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_cpu_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(axi_cpu_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_cpu_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_cpu_interconnect_M00_AXI_WVALID),
        .M01_ACLK(sys_cpu_clk),
        .M01_ARESETN(sys_cpu_resetn),
        .M01_AXI_araddr(axi_cpu_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_cpu_interconnect_M01_AXI_WVALID),
        .M02_ACLK(sys_cpu_clk),
        .M02_ARESETN(sys_cpu_resetn),
        .M02_AXI_araddr(axi_cpu_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_cpu_interconnect_M02_AXI_WVALID),
        .M03_ACLK(sys_cpu_clk),
        .M03_ARESETN(sys_cpu_resetn),
        .M03_AXI_araddr(axi_cpu_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_cpu_interconnect_M03_AXI_WVALID),
        .M04_ACLK(sys_cpu_clk),
        .M04_ARESETN(sys_cpu_resetn),
        .M04_AXI_araddr(axi_cpu_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_cpu_interconnect_M04_AXI_WVALID),
        .M05_ACLK(sys_cpu_clk),
        .M05_ARESETN(sys_cpu_resetn),
        .M05_AXI_araddr(axi_cpu_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .M06_ACLK(sys_cpu_clk),
        .M06_ARESETN(sys_cpu_resetn),
        .M06_AXI_araddr(axi_cpu_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .M07_ACLK(sys_cpu_clk),
        .M07_ARESETN(sys_cpu_resetn),
        .M07_AXI_araddr(axi_cpu_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arprot(axi_cpu_interconnect_M07_AXI_ARPROT),
        .M07_AXI_arready(axi_cpu_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_cpu_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_cpu_interconnect_M07_AXI_AWADDR),
        .M07_AXI_awprot(axi_cpu_interconnect_M07_AXI_AWPROT),
        .M07_AXI_awready(axi_cpu_interconnect_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_cpu_interconnect_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_cpu_interconnect_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_cpu_interconnect_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_cpu_interconnect_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_cpu_interconnect_M07_AXI_RDATA),
        .M07_AXI_rready(axi_cpu_interconnect_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_cpu_interconnect_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_cpu_interconnect_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_cpu_interconnect_M07_AXI_WDATA),
        .M07_AXI_wready(axi_cpu_interconnect_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_cpu_interconnect_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_cpu_interconnect_M07_AXI_WVALID),
        .M08_ACLK(sys_cpu_clk),
        .M08_ARESETN(sys_cpu_resetn),
        .M08_AXI_araddr(axi_cpu_interconnect_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_cpu_interconnect_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_cpu_interconnect_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_cpu_interconnect_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_cpu_interconnect_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_cpu_interconnect_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_cpu_interconnect_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_cpu_interconnect_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_cpu_interconnect_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_cpu_interconnect_M08_AXI_RDATA),
        .M08_AXI_rready(axi_cpu_interconnect_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_cpu_interconnect_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_cpu_interconnect_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_cpu_interconnect_M08_AXI_WDATA),
        .M08_AXI_wready(axi_cpu_interconnect_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_cpu_interconnect_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_cpu_interconnect_M08_AXI_WVALID),
        .M09_ACLK(sys_cpu_clk),
        .M09_ARESETN(sys_cpu_resetn),
        .M09_AXI_araddr(axi_cpu_interconnect_M09_AXI_ARADDR),
        .M09_AXI_arready(axi_cpu_interconnect_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_cpu_interconnect_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_cpu_interconnect_M09_AXI_AWADDR),
        .M09_AXI_awready(axi_cpu_interconnect_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_cpu_interconnect_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_cpu_interconnect_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_cpu_interconnect_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_cpu_interconnect_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_cpu_interconnect_M09_AXI_RDATA),
        .M09_AXI_rready(axi_cpu_interconnect_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_cpu_interconnect_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_cpu_interconnect_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_cpu_interconnect_M09_AXI_WDATA),
        .M09_AXI_wready(axi_cpu_interconnect_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_cpu_interconnect_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_cpu_interconnect_M09_AXI_WVALID),
        .M10_ACLK(sys_cpu_clk),
        .M10_ARESETN(sys_cpu_resetn),
        .M10_AXI_araddr(axi_cpu_interconnect_M10_AXI_ARADDR),
        .M10_AXI_arburst(axi_cpu_interconnect_M10_AXI_ARBURST),
        .M10_AXI_arcache(axi_cpu_interconnect_M10_AXI_ARCACHE),
        .M10_AXI_arlen(axi_cpu_interconnect_M10_AXI_ARLEN),
        .M10_AXI_arlock(axi_cpu_interconnect_M10_AXI_ARLOCK),
        .M10_AXI_arprot(axi_cpu_interconnect_M10_AXI_ARPROT),
        .M10_AXI_arready(axi_cpu_interconnect_M10_AXI_ARREADY),
        .M10_AXI_arsize(axi_cpu_interconnect_M10_AXI_ARSIZE),
        .M10_AXI_arvalid(axi_cpu_interconnect_M10_AXI_ARVALID),
        .M10_AXI_awaddr(axi_cpu_interconnect_M10_AXI_AWADDR),
        .M10_AXI_awburst(axi_cpu_interconnect_M10_AXI_AWBURST),
        .M10_AXI_awcache(axi_cpu_interconnect_M10_AXI_AWCACHE),
        .M10_AXI_awlen(axi_cpu_interconnect_M10_AXI_AWLEN),
        .M10_AXI_awlock(axi_cpu_interconnect_M10_AXI_AWLOCK),
        .M10_AXI_awprot(axi_cpu_interconnect_M10_AXI_AWPROT),
        .M10_AXI_awready(axi_cpu_interconnect_M10_AXI_AWREADY),
        .M10_AXI_awsize(axi_cpu_interconnect_M10_AXI_AWSIZE),
        .M10_AXI_awvalid(axi_cpu_interconnect_M10_AXI_AWVALID),
        .M10_AXI_bready(axi_cpu_interconnect_M10_AXI_BREADY),
        .M10_AXI_bresp(axi_cpu_interconnect_M10_AXI_BRESP),
        .M10_AXI_bvalid(axi_cpu_interconnect_M10_AXI_BVALID),
        .M10_AXI_rdata(axi_cpu_interconnect_M10_AXI_RDATA),
        .M10_AXI_rlast(axi_cpu_interconnect_M10_AXI_RLAST),
        .M10_AXI_rready(axi_cpu_interconnect_M10_AXI_RREADY),
        .M10_AXI_rresp(axi_cpu_interconnect_M10_AXI_RRESP),
        .M10_AXI_rvalid(axi_cpu_interconnect_M10_AXI_RVALID),
        .M10_AXI_wdata(axi_cpu_interconnect_M10_AXI_WDATA),
        .M10_AXI_wlast(axi_cpu_interconnect_M10_AXI_WLAST),
        .M10_AXI_wready(axi_cpu_interconnect_M10_AXI_WREADY),
        .M10_AXI_wstrb(axi_cpu_interconnect_M10_AXI_WSTRB),
        .M10_AXI_wvalid(axi_cpu_interconnect_M10_AXI_WVALID),
        .M11_ACLK(sys_cpu_clk),
        .M11_ARESETN(sys_cpu_resetn),
        .M11_AXI_araddr(axi_cpu_interconnect_M11_AXI_ARADDR),
        .M11_AXI_arprot(axi_cpu_interconnect_M11_AXI_ARPROT),
        .M11_AXI_arready(axi_cpu_interconnect_M11_AXI_ARREADY),
        .M11_AXI_arvalid(axi_cpu_interconnect_M11_AXI_ARVALID),
        .M11_AXI_awaddr(axi_cpu_interconnect_M11_AXI_AWADDR),
        .M11_AXI_awprot(axi_cpu_interconnect_M11_AXI_AWPROT),
        .M11_AXI_awready(axi_cpu_interconnect_M11_AXI_AWREADY),
        .M11_AXI_awvalid(axi_cpu_interconnect_M11_AXI_AWVALID),
        .M11_AXI_bready(axi_cpu_interconnect_M11_AXI_BREADY),
        .M11_AXI_bresp(axi_cpu_interconnect_M11_AXI_BRESP),
        .M11_AXI_bvalid(axi_cpu_interconnect_M11_AXI_BVALID),
        .M11_AXI_rdata(axi_cpu_interconnect_M11_AXI_RDATA),
        .M11_AXI_rready(axi_cpu_interconnect_M11_AXI_RREADY),
        .M11_AXI_rresp(axi_cpu_interconnect_M11_AXI_RRESP),
        .M11_AXI_rvalid(axi_cpu_interconnect_M11_AXI_RVALID),
        .M11_AXI_wdata(axi_cpu_interconnect_M11_AXI_WDATA),
        .M11_AXI_wready(axi_cpu_interconnect_M11_AXI_WREADY),
        .M11_AXI_wstrb(axi_cpu_interconnect_M11_AXI_WSTRB),
        .M11_AXI_wvalid(axi_cpu_interconnect_M11_AXI_WVALID),
        .M12_ACLK(sys_cpu_clk),
        .M12_ARESETN(sys_cpu_resetn),
        .M12_AXI_araddr(axi_cpu_interconnect_M12_AXI_ARADDR),
        .M12_AXI_arprot(axi_cpu_interconnect_M12_AXI_ARPROT),
        .M12_AXI_arready(axi_cpu_interconnect_M12_AXI_ARREADY),
        .M12_AXI_arvalid(axi_cpu_interconnect_M12_AXI_ARVALID),
        .M12_AXI_awaddr(axi_cpu_interconnect_M12_AXI_AWADDR),
        .M12_AXI_awprot(axi_cpu_interconnect_M12_AXI_AWPROT),
        .M12_AXI_awready(axi_cpu_interconnect_M12_AXI_AWREADY),
        .M12_AXI_awvalid(axi_cpu_interconnect_M12_AXI_AWVALID),
        .M12_AXI_bready(axi_cpu_interconnect_M12_AXI_BREADY),
        .M12_AXI_bresp(axi_cpu_interconnect_M12_AXI_BRESP),
        .M12_AXI_bvalid(axi_cpu_interconnect_M12_AXI_BVALID),
        .M12_AXI_rdata(axi_cpu_interconnect_M12_AXI_RDATA),
        .M12_AXI_rready(axi_cpu_interconnect_M12_AXI_RREADY),
        .M12_AXI_rresp(axi_cpu_interconnect_M12_AXI_RRESP),
        .M12_AXI_rvalid(axi_cpu_interconnect_M12_AXI_RVALID),
        .M12_AXI_wdata(axi_cpu_interconnect_M12_AXI_WDATA),
        .M12_AXI_wready(axi_cpu_interconnect_M12_AXI_WREADY),
        .M12_AXI_wstrb(axi_cpu_interconnect_M12_AXI_WSTRB),
        .M12_AXI_wvalid(axi_cpu_interconnect_M12_AXI_WVALID),
        .M13_ACLK(sys_cpu_clk),
        .M13_ARESETN(sys_cpu_resetn),
        .M13_AXI_araddr(axi_cpu_interconnect_M13_AXI_ARADDR),
        .M13_AXI_arprot(axi_cpu_interconnect_M13_AXI_ARPROT),
        .M13_AXI_arready(axi_cpu_interconnect_M13_AXI_ARREADY),
        .M13_AXI_arvalid(axi_cpu_interconnect_M13_AXI_ARVALID),
        .M13_AXI_awaddr(axi_cpu_interconnect_M13_AXI_AWADDR),
        .M13_AXI_awprot(axi_cpu_interconnect_M13_AXI_AWPROT),
        .M13_AXI_awready(axi_cpu_interconnect_M13_AXI_AWREADY),
        .M13_AXI_awvalid(axi_cpu_interconnect_M13_AXI_AWVALID),
        .M13_AXI_bready(axi_cpu_interconnect_M13_AXI_BREADY),
        .M13_AXI_bresp(axi_cpu_interconnect_M13_AXI_BRESP),
        .M13_AXI_bvalid(axi_cpu_interconnect_M13_AXI_BVALID),
        .M13_AXI_rdata(axi_cpu_interconnect_M13_AXI_RDATA),
        .M13_AXI_rready(axi_cpu_interconnect_M13_AXI_RREADY),
        .M13_AXI_rresp(axi_cpu_interconnect_M13_AXI_RRESP),
        .M13_AXI_rvalid(axi_cpu_interconnect_M13_AXI_RVALID),
        .M13_AXI_wdata(axi_cpu_interconnect_M13_AXI_WDATA),
        .M13_AXI_wready(axi_cpu_interconnect_M13_AXI_WREADY),
        .M13_AXI_wstrb(axi_cpu_interconnect_M13_AXI_WSTRB),
        .M13_AXI_wvalid(axi_cpu_interconnect_M13_AXI_WVALID),
        .M14_ACLK(sys_cpu_clk),
        .M14_ARESETN(sys_cpu_resetn),
        .M14_AXI_araddr(axi_cpu_interconnect_M14_AXI_ARADDR),
        .M14_AXI_arprot(axi_cpu_interconnect_M14_AXI_ARPROT),
        .M14_AXI_arready(axi_cpu_interconnect_M14_AXI_ARREADY),
        .M14_AXI_arvalid(axi_cpu_interconnect_M14_AXI_ARVALID),
        .M14_AXI_awaddr(axi_cpu_interconnect_M14_AXI_AWADDR),
        .M14_AXI_awprot(axi_cpu_interconnect_M14_AXI_AWPROT),
        .M14_AXI_awready(axi_cpu_interconnect_M14_AXI_AWREADY),
        .M14_AXI_awvalid(axi_cpu_interconnect_M14_AXI_AWVALID),
        .M14_AXI_bready(axi_cpu_interconnect_M14_AXI_BREADY),
        .M14_AXI_bresp(axi_cpu_interconnect_M14_AXI_BRESP),
        .M14_AXI_bvalid(axi_cpu_interconnect_M14_AXI_BVALID),
        .M14_AXI_rdata(axi_cpu_interconnect_M14_AXI_RDATA),
        .M14_AXI_rready(axi_cpu_interconnect_M14_AXI_RREADY),
        .M14_AXI_rresp(axi_cpu_interconnect_M14_AXI_RRESP),
        .M14_AXI_rvalid(axi_cpu_interconnect_M14_AXI_RVALID),
        .M14_AXI_wdata(axi_cpu_interconnect_M14_AXI_WDATA),
        .M14_AXI_wready(axi_cpu_interconnect_M14_AXI_WREADY),
        .M14_AXI_wstrb(axi_cpu_interconnect_M14_AXI_WSTRB),
        .M14_AXI_wvalid(axi_cpu_interconnect_M14_AXI_WVALID),
        .M15_ACLK(sys_cpu_clk),
        .M15_ARESETN(sys_cpu_resetn),
        .M15_AXI_araddr(axi_cpu_interconnect_M15_AXI_ARADDR),
        .M15_AXI_arprot(axi_cpu_interconnect_M15_AXI_ARPROT),
        .M15_AXI_arready(axi_cpu_interconnect_M15_AXI_ARREADY),
        .M15_AXI_arvalid(axi_cpu_interconnect_M15_AXI_ARVALID),
        .M15_AXI_awaddr(axi_cpu_interconnect_M15_AXI_AWADDR),
        .M15_AXI_awprot(axi_cpu_interconnect_M15_AXI_AWPROT),
        .M15_AXI_awready(axi_cpu_interconnect_M15_AXI_AWREADY),
        .M15_AXI_awvalid(axi_cpu_interconnect_M15_AXI_AWVALID),
        .M15_AXI_bready(axi_cpu_interconnect_M15_AXI_BREADY),
        .M15_AXI_bresp(axi_cpu_interconnect_M15_AXI_BRESP),
        .M15_AXI_bvalid(axi_cpu_interconnect_M15_AXI_BVALID),
        .M15_AXI_rdata(axi_cpu_interconnect_M15_AXI_RDATA),
        .M15_AXI_rready(axi_cpu_interconnect_M15_AXI_RREADY),
        .M15_AXI_rresp(axi_cpu_interconnect_M15_AXI_RRESP),
        .M15_AXI_rvalid(axi_cpu_interconnect_M15_AXI_RVALID),
        .M15_AXI_wdata(axi_cpu_interconnect_M15_AXI_WDATA),
        .M15_AXI_wready(axi_cpu_interconnect_M15_AXI_WREADY),
        .M15_AXI_wstrb(axi_cpu_interconnect_M15_AXI_WSTRB),
        .M15_AXI_wvalid(axi_cpu_interconnect_M15_AXI_WVALID),
        .M16_ACLK(sys_cpu_clk),
        .M16_ARESETN(sys_cpu_resetn),
        .M16_AXI_araddr(axi_cpu_interconnect_M16_AXI_ARADDR),
        .M16_AXI_arprot(axi_cpu_interconnect_M16_AXI_ARPROT),
        .M16_AXI_arready(axi_cpu_interconnect_M16_AXI_ARREADY),
        .M16_AXI_arvalid(axi_cpu_interconnect_M16_AXI_ARVALID),
        .M16_AXI_awaddr(axi_cpu_interconnect_M16_AXI_AWADDR),
        .M16_AXI_awprot(axi_cpu_interconnect_M16_AXI_AWPROT),
        .M16_AXI_awready(axi_cpu_interconnect_M16_AXI_AWREADY),
        .M16_AXI_awvalid(axi_cpu_interconnect_M16_AXI_AWVALID),
        .M16_AXI_bready(axi_cpu_interconnect_M16_AXI_BREADY),
        .M16_AXI_bresp(axi_cpu_interconnect_M16_AXI_BRESP),
        .M16_AXI_bvalid(axi_cpu_interconnect_M16_AXI_BVALID),
        .M16_AXI_rdata(axi_cpu_interconnect_M16_AXI_RDATA),
        .M16_AXI_rready(axi_cpu_interconnect_M16_AXI_RREADY),
        .M16_AXI_rresp(axi_cpu_interconnect_M16_AXI_RRESP),
        .M16_AXI_rvalid(axi_cpu_interconnect_M16_AXI_RVALID),
        .M16_AXI_wdata(axi_cpu_interconnect_M16_AXI_WDATA),
        .M16_AXI_wready(axi_cpu_interconnect_M16_AXI_WREADY),
        .M16_AXI_wstrb(axi_cpu_interconnect_M16_AXI_WSTRB),
        .M16_AXI_wvalid(axi_cpu_interconnect_M16_AXI_WVALID),
        .S00_ACLK(sys_cpu_clk),
        .S00_ARESETN(sys_cpu_resetn),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  system_axi_ddr_cntrl_0 axi_ddr_cntrl
       (.aresetn(sys_cpu_resetn),
        .ddr3_addr(axi_ddr_cntrl_DDR3_ADDR),
        .ddr3_ba(axi_ddr_cntrl_DDR3_BA),
        .ddr3_cas_n(axi_ddr_cntrl_DDR3_CAS_N),
        .ddr3_ck_n(axi_ddr_cntrl_DDR3_CK_N),
        .ddr3_ck_p(axi_ddr_cntrl_DDR3_CK_P),
        .ddr3_cke(axi_ddr_cntrl_DDR3_CKE),
        .ddr3_cs_n(axi_ddr_cntrl_DDR3_CS_N),
        .ddr3_dm(axi_ddr_cntrl_DDR3_DM),
        .ddr3_dq(ddr3_dq[63:0]),
        .ddr3_dqs_n(ddr3_dqs_n[7:0]),
        .ddr3_dqs_p(ddr3_dqs_p[7:0]),
        .ddr3_odt(axi_ddr_cntrl_DDR3_ODT),
        .ddr3_ras_n(axi_ddr_cntrl_DDR3_RAS_N),
        .ddr3_reset_n(axi_ddr_cntrl_DDR3_RESET_N),
        .ddr3_we_n(axi_ddr_cntrl_DDR3_WE_N),
        .device_temp_i(GND_12_dout),
        .mmcm_locked(axi_ddr_cntrl_mmcm_locked),
        .s_axi_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .s_axi_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .s_axi_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .s_axi_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .s_axi_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .s_axi_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .s_axi_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .s_axi_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .s_axi_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .s_axi_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .s_axi_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .s_axi_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .s_axi_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .s_axi_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .s_axi_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .s_axi_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .s_axi_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_mem_interconnect_M00_AXI_WVALID),
        .sys_clk_n(sys_clk_n_1),
        .sys_clk_p(sys_clk_p_1),
        .sys_rst(sys_rst_1),
        .ui_addn_clk_0(sys_cpu_clk),
        .ui_clk(sys_200m_clk),
        .ui_clk_sync_rst(sys_200m_rst));
  system_axi_ethernet_0 axi_ethernet
       (.ip2intc_irpt(axi_ethernet_ip2intc_irpt),
        .phy_col(axi_ethernet_MII_COL),
        .phy_crs(axi_ethernet_MII_CRS),
        .phy_dv(axi_ethernet_MII_RX_DV),
        .phy_mdc(axi_ethernet_MDIO_MDC),
        .phy_mdio_i(axi_ethernet_MDIO_MDIO_I),
        .phy_mdio_o(axi_ethernet_MDIO_MDIO_O),
        .phy_mdio_t(axi_ethernet_MDIO_MDIO_T),
        .phy_rst_n(axi_ethernet_MII_RST_N),
        .phy_rx_clk(axi_ethernet_MII_RX_CLK),
        .phy_rx_data(axi_ethernet_MII_RXD),
        .phy_rx_er(axi_ethernet_MII_RX_ER),
        .phy_tx_clk(axi_ethernet_MII_TX_CLK),
        .phy_tx_data(axi_ethernet_MII_TXD),
        .phy_tx_en(axi_ethernet_MII_TX_EN),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M01_AXI_ARADDR[12:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M01_AXI_AWADDR[12:0]),
        .s_axi_awready(axi_cpu_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M01_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M01_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M01_AXI_WVALID));
  system_axi_gpio_0 axi_gpio
       (.gpio2_io_i(gpio1_i_1),
        .gpio2_io_o(axi_gpio_gpio2_io_o),
        .gpio2_io_t(axi_gpio_gpio2_io_t),
        .gpio_io_i(gpio0_i_1),
        .gpio_io_o(axi_gpio_gpio_io_o),
        .gpio_io_t(axi_gpio_gpio_io_t),
        .ip2intc_irpt(axi_gpio_ip2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M08_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M08_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M08_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M08_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M08_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M08_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M08_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M08_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M08_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M08_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M08_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M08_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M08_AXI_WVALID));
  system_axi_gpio_lcd_0 axi_gpio_lcd
       (.gpio_io_i(axi_gpio_lcd_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_lcd_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_lcd_GPIO_TRI_T),
        .ip2intc_irpt(axi_gpio_lcd_ip2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M02_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M02_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M02_AXI_WVALID));
  system_axi_iic_main_0 axi_iic_main
       (.iic2intc_irpt(axi_iic_main_iic2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M06_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M06_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M06_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M06_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M06_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M06_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M06_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M06_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M06_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M06_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M06_AXI_WVALID),
        .scl_i(axi_iic_main_IIC_SCL_I),
        .scl_o(axi_iic_main_IIC_SCL_O),
        .scl_t(axi_iic_main_IIC_SCL_T),
        .sda_i(axi_iic_main_IIC_SDA_I),
        .sda_o(axi_iic_main_IIC_SDA_O),
        .sda_t(axi_iic_main_IIC_SDA_T));
  system_axi_intc_0 axi_intc
       (.intr(sys_concat_intc_dout),
        .irq(axi_intc_interrupt_INTERRUPT),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_cpu_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M03_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M03_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M03_AXI_WVALID));
  system_axi_linear_flash_0 axi_linear_flash
       (.mem_a({axi_linear_flash_EMC_INTF_ADDR,NLW_axi_linear_flash_mem_a_UNCONNECTED[0]}),
        .mem_adv_ldn(axi_linear_flash_EMC_INTF_ADV_LDN),
        .mem_cen(axi_linear_flash_EMC_INTF_CE_N),
        .mem_dq_i(axi_linear_flash_EMC_INTF_DQ_I),
        .mem_dq_o(axi_linear_flash_EMC_INTF_DQ_O),
        .mem_dq_t(axi_linear_flash_EMC_INTF_DQ_T),
        .mem_oen(axi_linear_flash_EMC_INTF_OEN),
        .mem_wait(1'b0),
        .mem_wen(axi_linear_flash_EMC_INTF_WEN),
        .rdclk(sys_cpu_clk),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_mem_araddr(axi_cpu_interconnect_M10_AXI_ARADDR),
        .s_axi_mem_arburst(axi_cpu_interconnect_M10_AXI_ARBURST),
        .s_axi_mem_arcache(axi_cpu_interconnect_M10_AXI_ARCACHE),
        .s_axi_mem_arlen(axi_cpu_interconnect_M10_AXI_ARLEN),
        .s_axi_mem_arlock(axi_cpu_interconnect_M10_AXI_ARLOCK),
        .s_axi_mem_arprot(axi_cpu_interconnect_M10_AXI_ARPROT),
        .s_axi_mem_arready(axi_cpu_interconnect_M10_AXI_ARREADY),
        .s_axi_mem_arsize(axi_cpu_interconnect_M10_AXI_ARSIZE),
        .s_axi_mem_arvalid(axi_cpu_interconnect_M10_AXI_ARVALID),
        .s_axi_mem_awaddr(axi_cpu_interconnect_M10_AXI_AWADDR),
        .s_axi_mem_awburst(axi_cpu_interconnect_M10_AXI_AWBURST),
        .s_axi_mem_awcache(axi_cpu_interconnect_M10_AXI_AWCACHE),
        .s_axi_mem_awlen(axi_cpu_interconnect_M10_AXI_AWLEN),
        .s_axi_mem_awlock(axi_cpu_interconnect_M10_AXI_AWLOCK),
        .s_axi_mem_awprot(axi_cpu_interconnect_M10_AXI_AWPROT),
        .s_axi_mem_awready(axi_cpu_interconnect_M10_AXI_AWREADY),
        .s_axi_mem_awsize(axi_cpu_interconnect_M10_AXI_AWSIZE),
        .s_axi_mem_awvalid(axi_cpu_interconnect_M10_AXI_AWVALID),
        .s_axi_mem_bready(axi_cpu_interconnect_M10_AXI_BREADY),
        .s_axi_mem_bresp(axi_cpu_interconnect_M10_AXI_BRESP),
        .s_axi_mem_bvalid(axi_cpu_interconnect_M10_AXI_BVALID),
        .s_axi_mem_rdata(axi_cpu_interconnect_M10_AXI_RDATA),
        .s_axi_mem_rlast(axi_cpu_interconnect_M10_AXI_RLAST),
        .s_axi_mem_rready(axi_cpu_interconnect_M10_AXI_RREADY),
        .s_axi_mem_rresp(axi_cpu_interconnect_M10_AXI_RRESP),
        .s_axi_mem_rvalid(axi_cpu_interconnect_M10_AXI_RVALID),
        .s_axi_mem_wdata(axi_cpu_interconnect_M10_AXI_WDATA),
        .s_axi_mem_wlast(axi_cpu_interconnect_M10_AXI_WLAST),
        .s_axi_mem_wready(axi_cpu_interconnect_M10_AXI_WREADY),
        .s_axi_mem_wstrb(axi_cpu_interconnect_M10_AXI_WSTRB),
        .s_axi_mem_wvalid(axi_cpu_interconnect_M10_AXI_WVALID));
  system_axi_mem_interconnect_0 axi_mem_interconnect
       (.M00_AXI_araddr(axi_mem_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_mem_interconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_mem_interconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_mem_interconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_mem_interconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_mem_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_mem_interconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_mem_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_mem_interconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_mem_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_mem_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_mem_interconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_mem_interconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_mem_interconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_mem_interconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_mem_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_mem_interconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_mem_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_mem_interconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_mem_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_mem_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_mem_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_mem_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_mem_interconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_mem_interconnect_M00_AXI_RLAST),
        .M00_AXI_rready(axi_mem_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_mem_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_mem_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_mem_interconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_mem_interconnect_M00_AXI_WLAST),
        .M00_AXI_wready(axi_mem_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_mem_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_mem_interconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(sys_mb_M_AXI_DC_ARADDR),
        .S00_AXI_arburst(sys_mb_M_AXI_DC_ARBURST),
        .S00_AXI_arcache(sys_mb_M_AXI_DC_ARCACHE),
        .S00_AXI_arlen(sys_mb_M_AXI_DC_ARLEN),
        .S00_AXI_arlock(sys_mb_M_AXI_DC_ARLOCK),
        .S00_AXI_arprot(sys_mb_M_AXI_DC_ARPROT),
        .S00_AXI_arqos(sys_mb_M_AXI_DC_ARQOS),
        .S00_AXI_arready(sys_mb_M_AXI_DC_ARREADY),
        .S00_AXI_arsize(sys_mb_M_AXI_DC_ARSIZE),
        .S00_AXI_arvalid(sys_mb_M_AXI_DC_ARVALID),
        .S00_AXI_awaddr(sys_mb_M_AXI_DC_AWADDR),
        .S00_AXI_awburst(sys_mb_M_AXI_DC_AWBURST),
        .S00_AXI_awcache(sys_mb_M_AXI_DC_AWCACHE),
        .S00_AXI_awlen(sys_mb_M_AXI_DC_AWLEN),
        .S00_AXI_awlock(sys_mb_M_AXI_DC_AWLOCK),
        .S00_AXI_awprot(sys_mb_M_AXI_DC_AWPROT),
        .S00_AXI_awqos(sys_mb_M_AXI_DC_AWQOS),
        .S00_AXI_awready(sys_mb_M_AXI_DC_AWREADY),
        .S00_AXI_awsize(sys_mb_M_AXI_DC_AWSIZE),
        .S00_AXI_awvalid(sys_mb_M_AXI_DC_AWVALID),
        .S00_AXI_bready(sys_mb_M_AXI_DC_BREADY),
        .S00_AXI_bresp(sys_mb_M_AXI_DC_BRESP),
        .S00_AXI_bvalid(sys_mb_M_AXI_DC_BVALID),
        .S00_AXI_rdata(sys_mb_M_AXI_DC_RDATA),
        .S00_AXI_rlast(sys_mb_M_AXI_DC_RLAST),
        .S00_AXI_rready(sys_mb_M_AXI_DC_RREADY),
        .S00_AXI_rresp(sys_mb_M_AXI_DC_RRESP),
        .S00_AXI_rvalid(sys_mb_M_AXI_DC_RVALID),
        .S00_AXI_wdata(sys_mb_M_AXI_DC_WDATA),
        .S00_AXI_wlast(sys_mb_M_AXI_DC_WLAST),
        .S00_AXI_wready(sys_mb_M_AXI_DC_WREADY),
        .S00_AXI_wstrb(sys_mb_M_AXI_DC_WSTRB),
        .S00_AXI_wvalid(sys_mb_M_AXI_DC_WVALID),
        .S01_AXI_araddr(sys_mb_M_AXI_IC_ARADDR),
        .S01_AXI_arburst(sys_mb_M_AXI_IC_ARBURST),
        .S01_AXI_arcache(sys_mb_M_AXI_IC_ARCACHE),
        .S01_AXI_arlen(sys_mb_M_AXI_IC_ARLEN),
        .S01_AXI_arlock(sys_mb_M_AXI_IC_ARLOCK),
        .S01_AXI_arprot(sys_mb_M_AXI_IC_ARPROT),
        .S01_AXI_arqos(sys_mb_M_AXI_IC_ARQOS),
        .S01_AXI_arready(sys_mb_M_AXI_IC_ARREADY),
        .S01_AXI_arsize(sys_mb_M_AXI_IC_ARSIZE),
        .S01_AXI_arvalid(sys_mb_M_AXI_IC_ARVALID),
        .S01_AXI_rdata(sys_mb_M_AXI_IC_RDATA),
        .S01_AXI_rlast(sys_mb_M_AXI_IC_RLAST),
        .S01_AXI_rready(sys_mb_M_AXI_IC_RREADY),
        .S01_AXI_rresp(sys_mb_M_AXI_IC_RRESP),
        .S01_AXI_rvalid(sys_mb_M_AXI_IC_RVALID),
        .S02_AXI_araddr(axi_ad9250_xcvr_m_axi_ARADDR),
        .S02_AXI_arprot(axi_ad9250_xcvr_m_axi_ARPROT),
        .S02_AXI_arready(axi_ad9250_xcvr_m_axi_ARREADY),
        .S02_AXI_arvalid(axi_ad9250_xcvr_m_axi_ARVALID),
        .S02_AXI_awaddr(axi_ad9250_xcvr_m_axi_AWADDR),
        .S02_AXI_awprot(axi_ad9250_xcvr_m_axi_AWPROT),
        .S02_AXI_awready(axi_ad9250_xcvr_m_axi_AWREADY),
        .S02_AXI_awvalid(axi_ad9250_xcvr_m_axi_AWVALID),
        .S02_AXI_bready(axi_ad9250_xcvr_m_axi_BREADY),
        .S02_AXI_bresp(axi_ad9250_xcvr_m_axi_BRESP),
        .S02_AXI_bvalid(axi_ad9250_xcvr_m_axi_BVALID),
        .S02_AXI_rdata(axi_ad9250_xcvr_m_axi_RDATA),
        .S02_AXI_rready(axi_ad9250_xcvr_m_axi_RREADY),
        .S02_AXI_rresp(axi_ad9250_xcvr_m_axi_RRESP),
        .S02_AXI_rvalid(axi_ad9250_xcvr_m_axi_RVALID),
        .S02_AXI_wdata(axi_ad9250_xcvr_m_axi_WDATA),
        .S02_AXI_wready(axi_ad9250_xcvr_m_axi_WREADY),
        .S02_AXI_wstrb(axi_ad9250_xcvr_m_axi_WSTRB),
        .S02_AXI_wvalid(axi_ad9250_xcvr_m_axi_WVALID),
        .S03_AXI_awaddr(axi_ad9250_0_dma_m_dest_axi_AWADDR),
        .S03_AXI_awburst(axi_ad9250_0_dma_m_dest_axi_AWBURST),
        .S03_AXI_awcache(axi_ad9250_0_dma_m_dest_axi_AWCACHE),
        .S03_AXI_awlen(axi_ad9250_0_dma_m_dest_axi_AWLEN),
        .S03_AXI_awlock(1'b0),
        .S03_AXI_awprot(axi_ad9250_0_dma_m_dest_axi_AWPROT),
        .S03_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awready(axi_ad9250_0_dma_m_dest_axi_AWREADY),
        .S03_AXI_awsize(axi_ad9250_0_dma_m_dest_axi_AWSIZE),
        .S03_AXI_awvalid(axi_ad9250_0_dma_m_dest_axi_AWVALID),
        .S03_AXI_bready(axi_ad9250_0_dma_m_dest_axi_BREADY),
        .S03_AXI_bresp(axi_ad9250_0_dma_m_dest_axi_BRESP),
        .S03_AXI_bvalid(axi_ad9250_0_dma_m_dest_axi_BVALID),
        .S03_AXI_wdata(axi_ad9250_0_dma_m_dest_axi_WDATA),
        .S03_AXI_wlast(axi_ad9250_0_dma_m_dest_axi_WLAST),
        .S03_AXI_wready(axi_ad9250_0_dma_m_dest_axi_WREADY),
        .S03_AXI_wstrb(axi_ad9250_0_dma_m_dest_axi_WSTRB),
        .S03_AXI_wvalid(axi_ad9250_0_dma_m_dest_axi_WVALID),
        .S04_AXI_awaddr(axi_ad9250_1_dma_m_dest_axi_AWADDR),
        .S04_AXI_awburst(axi_ad9250_1_dma_m_dest_axi_AWBURST),
        .S04_AXI_awcache(axi_ad9250_1_dma_m_dest_axi_AWCACHE),
        .S04_AXI_awlen(axi_ad9250_1_dma_m_dest_axi_AWLEN),
        .S04_AXI_awlock(1'b0),
        .S04_AXI_awprot(axi_ad9250_1_dma_m_dest_axi_AWPROT),
        .S04_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_awready(axi_ad9250_1_dma_m_dest_axi_AWREADY),
        .S04_AXI_awsize(axi_ad9250_1_dma_m_dest_axi_AWSIZE),
        .S04_AXI_awvalid(axi_ad9250_1_dma_m_dest_axi_AWVALID),
        .S04_AXI_bready(axi_ad9250_1_dma_m_dest_axi_BREADY),
        .S04_AXI_bresp(axi_ad9250_1_dma_m_dest_axi_BRESP),
        .S04_AXI_bvalid(axi_ad9250_1_dma_m_dest_axi_BVALID),
        .S04_AXI_wdata(axi_ad9250_1_dma_m_dest_axi_WDATA),
        .S04_AXI_wlast(axi_ad9250_1_dma_m_dest_axi_WLAST),
        .S04_AXI_wready(axi_ad9250_1_dma_m_dest_axi_WREADY),
        .S04_AXI_wstrb(axi_ad9250_1_dma_m_dest_axi_WSTRB),
        .S04_AXI_wvalid(axi_ad9250_1_dma_m_dest_axi_WVALID),
        .aclk(sys_200m_clk),
        .aclk1(sys_cpu_clk),
        .aresetn(sys_200m_resetn));
  system_axi_spi_0 axi_spi
       (.ext_spi_clk(sys_cpu_clk),
        .io0_i(spi_sdo_i_1),
        .io0_o(axi_spi_io0_o),
        .io1_i(spi_sdi_i_1),
        .ip2intc_irpt(axi_spi_ip2intc_irpt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M09_AXI_ARADDR[6:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M09_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M09_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M09_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_cpu_interconnect_M09_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M09_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M09_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M09_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M09_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M09_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M09_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M09_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M09_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M09_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M09_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M09_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M09_AXI_WVALID),
        .sck_i(spi_clk_i_1),
        .sck_o(axi_spi_sck_o),
        .ss_i(spi_csn_i_1),
        .ss_o(axi_spi_ss_o));
  system_axi_sysid_0_0 axi_sysid_0
       (.pr_rom_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rom_addr(axi_sysid_0_rom_addr),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M07_AXI_ARADDR[15:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arprot(axi_cpu_interconnect_M07_AXI_ARPROT),
        .s_axi_arready(axi_cpu_interconnect_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M07_AXI_AWADDR[15:0]),
        .s_axi_awprot(axi_cpu_interconnect_M07_AXI_AWPROT),
        .s_axi_awready(axi_cpu_interconnect_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M07_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M07_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M07_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M07_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M07_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M07_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M07_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M07_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M07_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M07_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M07_AXI_WVALID),
        .sys_rom_data(rom_sys_0_rom_data));
  system_axi_timer_0 axi_timer
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_interrupt),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M04_AXI_ARADDR[4:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M04_AXI_AWADDR[4:0]),
        .s_axi_awready(axi_cpu_interconnect_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M04_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M04_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M04_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M04_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M04_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M04_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M04_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M04_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M04_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M04_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M04_AXI_WVALID));
  system_axi_uart_0 axi_uart
       (.interrupt(axi_uart_interrupt),
        .rx(uart_sin_1),
        .s_axi_aclk(sys_cpu_clk),
        .s_axi_araddr(axi_cpu_interconnect_M05_AXI_ARADDR[3:0]),
        .s_axi_aresetn(sys_cpu_resetn),
        .s_axi_arready(axi_cpu_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_cpu_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_cpu_interconnect_M05_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_cpu_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_cpu_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(axi_cpu_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(axi_cpu_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(axi_cpu_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(axi_cpu_interconnect_M05_AXI_RDATA),
        .s_axi_rready(axi_cpu_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(axi_cpu_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(axi_cpu_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(axi_cpu_interconnect_M05_AXI_WDATA),
        .s_axi_wready(axi_cpu_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(axi_cpu_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_cpu_interconnect_M05_AXI_WVALID),
        .tx(axi_uart_tx));
  system_data_bsplit_0 data_bsplit
       (.data(axi_ad9250_jesd_rx_data_tdata),
        .split_data_0(data_bsplit_split_data_0),
        .split_data_1(data_bsplit_split_data_1));
  system_rom_sys_0_0 rom_sys_0
       (.clk(sys_cpu_clk),
        .rom_addr(axi_sysid_0_rom_addr),
        .rom_data(rom_sys_0_rom_data));
  system_sys_200m_rstgen_0 sys_200m_rstgen
       (.aux_reset_in(1'b1),
        .dcm_locked(axi_ddr_cntrl_mmcm_locked),
        .ext_reset_in(sys_200m_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(sys_200m_resetn),
        .peripheral_reset(sys_200m_reset),
        .slowest_sync_clk(sys_200m_clk));
  system_sys_concat_intc_0 sys_concat_intc
       (.In0(axi_timer_interrupt),
        .In1(axi_ethernet_ip2intc_irpt),
        .In10(axi_spi_ip2intc_irpt),
        .In11(axi_gpio_ip2intc_irpt),
        .In12(axi_ad9250_1_dma_irq),
        .In13(axi_ad9250_0_dma_irq),
        .In14(axi_ad9250_jesd_irq),
        .In15(GND_1_dout),
        .In2(GND_1_dout),
        .In3(GND_1_dout),
        .In4(axi_uart_interrupt),
        .In5(axi_gpio_lcd_ip2intc_irpt),
        .In6(GND_1_dout),
        .In7(GND_1_dout),
        .In8(GND_1_dout),
        .In9(axi_iic_main_iic2intc_irpt),
        .dout(sys_concat_intc_dout));
  system_sys_dlmb_0 sys_dlmb
       (.LMB_ABus(Conn_ABUS),
        .LMB_AddrStrobe(Conn_ADDRSTROBE),
        .LMB_BE(Conn_BE),
        .LMB_CE(sys_mb_DLMB_CE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadDBus(sys_mb_DLMB_READDBUS),
        .LMB_ReadStrobe(Conn_READSTROBE),
        .LMB_Ready(sys_mb_DLMB_READY),
        .LMB_UE(sys_mb_DLMB_UE),
        .LMB_Wait(sys_mb_DLMB_WAIT),
        .LMB_WriteDBus(Conn_WRITEDBUS),
        .LMB_WriteStrobe(Conn_WRITESTROBE),
        .M_ABus(sys_mb_DLMB_ABUS),
        .M_AddrStrobe(sys_mb_DLMB_ADDRSTROBE),
        .M_BE(sys_mb_DLMB_BE),
        .M_DBus(sys_mb_DLMB_WRITEDBUS),
        .M_ReadStrobe(sys_mb_DLMB_READSTROBE),
        .M_WriteStrobe(sys_mb_DLMB_WRITESTROBE),
        .SYS_Rst(sys_rstgen_bus_struct_reset),
        .Sl_CE(Conn_CE),
        .Sl_DBus(Conn_READDBUS),
        .Sl_Ready(Conn_READY),
        .Sl_UE(Conn_UE),
        .Sl_Wait(Conn_WAIT));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > system sys_lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_sys_dlmb_cntlr_0 sys_dlmb_cntlr
       (.BRAM_Addr_A(sys_dlmb_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(sys_dlmb_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({sys_dlmb_cntlr_BRAM_PORT_DOUT[31],sys_dlmb_cntlr_BRAM_PORT_DOUT[30],sys_dlmb_cntlr_BRAM_PORT_DOUT[29],sys_dlmb_cntlr_BRAM_PORT_DOUT[28],sys_dlmb_cntlr_BRAM_PORT_DOUT[27],sys_dlmb_cntlr_BRAM_PORT_DOUT[26],sys_dlmb_cntlr_BRAM_PORT_DOUT[25],sys_dlmb_cntlr_BRAM_PORT_DOUT[24],sys_dlmb_cntlr_BRAM_PORT_DOUT[23],sys_dlmb_cntlr_BRAM_PORT_DOUT[22],sys_dlmb_cntlr_BRAM_PORT_DOUT[21],sys_dlmb_cntlr_BRAM_PORT_DOUT[20],sys_dlmb_cntlr_BRAM_PORT_DOUT[19],sys_dlmb_cntlr_BRAM_PORT_DOUT[18],sys_dlmb_cntlr_BRAM_PORT_DOUT[17],sys_dlmb_cntlr_BRAM_PORT_DOUT[16],sys_dlmb_cntlr_BRAM_PORT_DOUT[15],sys_dlmb_cntlr_BRAM_PORT_DOUT[14],sys_dlmb_cntlr_BRAM_PORT_DOUT[13],sys_dlmb_cntlr_BRAM_PORT_DOUT[12],sys_dlmb_cntlr_BRAM_PORT_DOUT[11],sys_dlmb_cntlr_BRAM_PORT_DOUT[10],sys_dlmb_cntlr_BRAM_PORT_DOUT[9],sys_dlmb_cntlr_BRAM_PORT_DOUT[8],sys_dlmb_cntlr_BRAM_PORT_DOUT[7],sys_dlmb_cntlr_BRAM_PORT_DOUT[6],sys_dlmb_cntlr_BRAM_PORT_DOUT[5],sys_dlmb_cntlr_BRAM_PORT_DOUT[4],sys_dlmb_cntlr_BRAM_PORT_DOUT[3],sys_dlmb_cntlr_BRAM_PORT_DOUT[2],sys_dlmb_cntlr_BRAM_PORT_DOUT[1],sys_dlmb_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(sys_dlmb_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(sys_dlmb_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(sys_dlmb_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(sys_dlmb_cntlr_BRAM_PORT_WE),
        .LMB_ABus(Conn_ABUS),
        .LMB_AddrStrobe(Conn_ADDRSTROBE),
        .LMB_BE(Conn_BE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadStrobe(Conn_READSTROBE),
        .LMB_Rst(sys_rstgen_bus_struct_reset),
        .LMB_WriteDBus(Conn_WRITEDBUS),
        .LMB_WriteStrobe(Conn_WRITESTROBE),
        .Sl_CE(Conn_CE),
        .Sl_DBus(Conn_READDBUS),
        .Sl_Ready(Conn_READY),
        .Sl_UE(Conn_UE),
        .Sl_Wait(Conn_WAIT));
  system_sys_ilmb_0 sys_ilmb
       (.LMB_ABus(Conn1_ABUS),
        .LMB_AddrStrobe(Conn1_ADDRSTROBE),
        .LMB_BE(Conn1_BE),
        .LMB_CE(sys_mb_ILMB_CE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadDBus(sys_mb_ILMB_READDBUS),
        .LMB_ReadStrobe(Conn1_READSTROBE),
        .LMB_Ready(sys_mb_ILMB_READY),
        .LMB_UE(sys_mb_ILMB_UE),
        .LMB_Wait(sys_mb_ILMB_WAIT),
        .LMB_WriteDBus(Conn1_WRITEDBUS),
        .LMB_WriteStrobe(Conn1_WRITESTROBE),
        .M_ABus(sys_mb_ILMB_ABUS),
        .M_AddrStrobe(sys_mb_ILMB_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(sys_mb_ILMB_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(sys_rstgen_bus_struct_reset),
        .Sl_CE(Conn1_CE),
        .Sl_DBus(Conn1_READDBUS),
        .Sl_Ready(Conn1_READY),
        .Sl_UE(Conn1_UE),
        .Sl_Wait(Conn1_WAIT));
  system_sys_ilmb_cntlr_0 sys_ilmb_cntlr
       (.BRAM_Addr_A(sys_ilmb_cntlr_BRAM_PORT_ADDR),
        .BRAM_Clk_A(sys_ilmb_cntlr_BRAM_PORT_CLK),
        .BRAM_Din_A({sys_ilmb_cntlr_BRAM_PORT_DOUT[31],sys_ilmb_cntlr_BRAM_PORT_DOUT[30],sys_ilmb_cntlr_BRAM_PORT_DOUT[29],sys_ilmb_cntlr_BRAM_PORT_DOUT[28],sys_ilmb_cntlr_BRAM_PORT_DOUT[27],sys_ilmb_cntlr_BRAM_PORT_DOUT[26],sys_ilmb_cntlr_BRAM_PORT_DOUT[25],sys_ilmb_cntlr_BRAM_PORT_DOUT[24],sys_ilmb_cntlr_BRAM_PORT_DOUT[23],sys_ilmb_cntlr_BRAM_PORT_DOUT[22],sys_ilmb_cntlr_BRAM_PORT_DOUT[21],sys_ilmb_cntlr_BRAM_PORT_DOUT[20],sys_ilmb_cntlr_BRAM_PORT_DOUT[19],sys_ilmb_cntlr_BRAM_PORT_DOUT[18],sys_ilmb_cntlr_BRAM_PORT_DOUT[17],sys_ilmb_cntlr_BRAM_PORT_DOUT[16],sys_ilmb_cntlr_BRAM_PORT_DOUT[15],sys_ilmb_cntlr_BRAM_PORT_DOUT[14],sys_ilmb_cntlr_BRAM_PORT_DOUT[13],sys_ilmb_cntlr_BRAM_PORT_DOUT[12],sys_ilmb_cntlr_BRAM_PORT_DOUT[11],sys_ilmb_cntlr_BRAM_PORT_DOUT[10],sys_ilmb_cntlr_BRAM_PORT_DOUT[9],sys_ilmb_cntlr_BRAM_PORT_DOUT[8],sys_ilmb_cntlr_BRAM_PORT_DOUT[7],sys_ilmb_cntlr_BRAM_PORT_DOUT[6],sys_ilmb_cntlr_BRAM_PORT_DOUT[5],sys_ilmb_cntlr_BRAM_PORT_DOUT[4],sys_ilmb_cntlr_BRAM_PORT_DOUT[3],sys_ilmb_cntlr_BRAM_PORT_DOUT[2],sys_ilmb_cntlr_BRAM_PORT_DOUT[1],sys_ilmb_cntlr_BRAM_PORT_DOUT[0]}),
        .BRAM_Dout_A(sys_ilmb_cntlr_BRAM_PORT_DIN),
        .BRAM_EN_A(sys_ilmb_cntlr_BRAM_PORT_EN),
        .BRAM_Rst_A(sys_ilmb_cntlr_BRAM_PORT_RST),
        .BRAM_WEN_A(sys_ilmb_cntlr_BRAM_PORT_WE),
        .LMB_ABus(Conn1_ABUS),
        .LMB_AddrStrobe(Conn1_ADDRSTROBE),
        .LMB_BE(Conn1_BE),
        .LMB_Clk(sys_cpu_clk),
        .LMB_ReadStrobe(Conn1_READSTROBE),
        .LMB_Rst(sys_rstgen_bus_struct_reset),
        .LMB_WriteDBus(Conn1_WRITEDBUS),
        .LMB_WriteStrobe(Conn1_WRITESTROBE),
        .Sl_CE(Conn1_CE),
        .Sl_DBus(Conn1_READDBUS),
        .Sl_Ready(Conn1_READY),
        .Sl_UE(Conn1_UE),
        .Sl_Wait(Conn1_WAIT));
  system_sys_lmb_bram_0 sys_lmb_bram
       (.addra({sys_dlmb_cntlr_BRAM_PORT_ADDR[0],sys_dlmb_cntlr_BRAM_PORT_ADDR[1],sys_dlmb_cntlr_BRAM_PORT_ADDR[2],sys_dlmb_cntlr_BRAM_PORT_ADDR[3],sys_dlmb_cntlr_BRAM_PORT_ADDR[4],sys_dlmb_cntlr_BRAM_PORT_ADDR[5],sys_dlmb_cntlr_BRAM_PORT_ADDR[6],sys_dlmb_cntlr_BRAM_PORT_ADDR[7],sys_dlmb_cntlr_BRAM_PORT_ADDR[8],sys_dlmb_cntlr_BRAM_PORT_ADDR[9],sys_dlmb_cntlr_BRAM_PORT_ADDR[10],sys_dlmb_cntlr_BRAM_PORT_ADDR[11],sys_dlmb_cntlr_BRAM_PORT_ADDR[12],sys_dlmb_cntlr_BRAM_PORT_ADDR[13],sys_dlmb_cntlr_BRAM_PORT_ADDR[14],sys_dlmb_cntlr_BRAM_PORT_ADDR[15],sys_dlmb_cntlr_BRAM_PORT_ADDR[16],sys_dlmb_cntlr_BRAM_PORT_ADDR[17],sys_dlmb_cntlr_BRAM_PORT_ADDR[18],sys_dlmb_cntlr_BRAM_PORT_ADDR[19],sys_dlmb_cntlr_BRAM_PORT_ADDR[20],sys_dlmb_cntlr_BRAM_PORT_ADDR[21],sys_dlmb_cntlr_BRAM_PORT_ADDR[22],sys_dlmb_cntlr_BRAM_PORT_ADDR[23],sys_dlmb_cntlr_BRAM_PORT_ADDR[24],sys_dlmb_cntlr_BRAM_PORT_ADDR[25],sys_dlmb_cntlr_BRAM_PORT_ADDR[26],sys_dlmb_cntlr_BRAM_PORT_ADDR[27],sys_dlmb_cntlr_BRAM_PORT_ADDR[28],sys_dlmb_cntlr_BRAM_PORT_ADDR[29],sys_dlmb_cntlr_BRAM_PORT_ADDR[30],sys_dlmb_cntlr_BRAM_PORT_ADDR[31]}),
        .addrb({sys_ilmb_cntlr_BRAM_PORT_ADDR[0],sys_ilmb_cntlr_BRAM_PORT_ADDR[1],sys_ilmb_cntlr_BRAM_PORT_ADDR[2],sys_ilmb_cntlr_BRAM_PORT_ADDR[3],sys_ilmb_cntlr_BRAM_PORT_ADDR[4],sys_ilmb_cntlr_BRAM_PORT_ADDR[5],sys_ilmb_cntlr_BRAM_PORT_ADDR[6],sys_ilmb_cntlr_BRAM_PORT_ADDR[7],sys_ilmb_cntlr_BRAM_PORT_ADDR[8],sys_ilmb_cntlr_BRAM_PORT_ADDR[9],sys_ilmb_cntlr_BRAM_PORT_ADDR[10],sys_ilmb_cntlr_BRAM_PORT_ADDR[11],sys_ilmb_cntlr_BRAM_PORT_ADDR[12],sys_ilmb_cntlr_BRAM_PORT_ADDR[13],sys_ilmb_cntlr_BRAM_PORT_ADDR[14],sys_ilmb_cntlr_BRAM_PORT_ADDR[15],sys_ilmb_cntlr_BRAM_PORT_ADDR[16],sys_ilmb_cntlr_BRAM_PORT_ADDR[17],sys_ilmb_cntlr_BRAM_PORT_ADDR[18],sys_ilmb_cntlr_BRAM_PORT_ADDR[19],sys_ilmb_cntlr_BRAM_PORT_ADDR[20],sys_ilmb_cntlr_BRAM_PORT_ADDR[21],sys_ilmb_cntlr_BRAM_PORT_ADDR[22],sys_ilmb_cntlr_BRAM_PORT_ADDR[23],sys_ilmb_cntlr_BRAM_PORT_ADDR[24],sys_ilmb_cntlr_BRAM_PORT_ADDR[25],sys_ilmb_cntlr_BRAM_PORT_ADDR[26],sys_ilmb_cntlr_BRAM_PORT_ADDR[27],sys_ilmb_cntlr_BRAM_PORT_ADDR[28],sys_ilmb_cntlr_BRAM_PORT_ADDR[29],sys_ilmb_cntlr_BRAM_PORT_ADDR[30],sys_ilmb_cntlr_BRAM_PORT_ADDR[31]}),
        .clka(sys_dlmb_cntlr_BRAM_PORT_CLK),
        .clkb(sys_ilmb_cntlr_BRAM_PORT_CLK),
        .dina({sys_dlmb_cntlr_BRAM_PORT_DIN[0],sys_dlmb_cntlr_BRAM_PORT_DIN[1],sys_dlmb_cntlr_BRAM_PORT_DIN[2],sys_dlmb_cntlr_BRAM_PORT_DIN[3],sys_dlmb_cntlr_BRAM_PORT_DIN[4],sys_dlmb_cntlr_BRAM_PORT_DIN[5],sys_dlmb_cntlr_BRAM_PORT_DIN[6],sys_dlmb_cntlr_BRAM_PORT_DIN[7],sys_dlmb_cntlr_BRAM_PORT_DIN[8],sys_dlmb_cntlr_BRAM_PORT_DIN[9],sys_dlmb_cntlr_BRAM_PORT_DIN[10],sys_dlmb_cntlr_BRAM_PORT_DIN[11],sys_dlmb_cntlr_BRAM_PORT_DIN[12],sys_dlmb_cntlr_BRAM_PORT_DIN[13],sys_dlmb_cntlr_BRAM_PORT_DIN[14],sys_dlmb_cntlr_BRAM_PORT_DIN[15],sys_dlmb_cntlr_BRAM_PORT_DIN[16],sys_dlmb_cntlr_BRAM_PORT_DIN[17],sys_dlmb_cntlr_BRAM_PORT_DIN[18],sys_dlmb_cntlr_BRAM_PORT_DIN[19],sys_dlmb_cntlr_BRAM_PORT_DIN[20],sys_dlmb_cntlr_BRAM_PORT_DIN[21],sys_dlmb_cntlr_BRAM_PORT_DIN[22],sys_dlmb_cntlr_BRAM_PORT_DIN[23],sys_dlmb_cntlr_BRAM_PORT_DIN[24],sys_dlmb_cntlr_BRAM_PORT_DIN[25],sys_dlmb_cntlr_BRAM_PORT_DIN[26],sys_dlmb_cntlr_BRAM_PORT_DIN[27],sys_dlmb_cntlr_BRAM_PORT_DIN[28],sys_dlmb_cntlr_BRAM_PORT_DIN[29],sys_dlmb_cntlr_BRAM_PORT_DIN[30],sys_dlmb_cntlr_BRAM_PORT_DIN[31]}),
        .dinb({sys_ilmb_cntlr_BRAM_PORT_DIN[0],sys_ilmb_cntlr_BRAM_PORT_DIN[1],sys_ilmb_cntlr_BRAM_PORT_DIN[2],sys_ilmb_cntlr_BRAM_PORT_DIN[3],sys_ilmb_cntlr_BRAM_PORT_DIN[4],sys_ilmb_cntlr_BRAM_PORT_DIN[5],sys_ilmb_cntlr_BRAM_PORT_DIN[6],sys_ilmb_cntlr_BRAM_PORT_DIN[7],sys_ilmb_cntlr_BRAM_PORT_DIN[8],sys_ilmb_cntlr_BRAM_PORT_DIN[9],sys_ilmb_cntlr_BRAM_PORT_DIN[10],sys_ilmb_cntlr_BRAM_PORT_DIN[11],sys_ilmb_cntlr_BRAM_PORT_DIN[12],sys_ilmb_cntlr_BRAM_PORT_DIN[13],sys_ilmb_cntlr_BRAM_PORT_DIN[14],sys_ilmb_cntlr_BRAM_PORT_DIN[15],sys_ilmb_cntlr_BRAM_PORT_DIN[16],sys_ilmb_cntlr_BRAM_PORT_DIN[17],sys_ilmb_cntlr_BRAM_PORT_DIN[18],sys_ilmb_cntlr_BRAM_PORT_DIN[19],sys_ilmb_cntlr_BRAM_PORT_DIN[20],sys_ilmb_cntlr_BRAM_PORT_DIN[21],sys_ilmb_cntlr_BRAM_PORT_DIN[22],sys_ilmb_cntlr_BRAM_PORT_DIN[23],sys_ilmb_cntlr_BRAM_PORT_DIN[24],sys_ilmb_cntlr_BRAM_PORT_DIN[25],sys_ilmb_cntlr_BRAM_PORT_DIN[26],sys_ilmb_cntlr_BRAM_PORT_DIN[27],sys_ilmb_cntlr_BRAM_PORT_DIN[28],sys_ilmb_cntlr_BRAM_PORT_DIN[29],sys_ilmb_cntlr_BRAM_PORT_DIN[30],sys_ilmb_cntlr_BRAM_PORT_DIN[31]}),
        .douta(sys_dlmb_cntlr_BRAM_PORT_DOUT),
        .doutb(sys_ilmb_cntlr_BRAM_PORT_DOUT),
        .ena(sys_dlmb_cntlr_BRAM_PORT_EN),
        .enb(sys_ilmb_cntlr_BRAM_PORT_EN),
        .rsta(sys_dlmb_cntlr_BRAM_PORT_RST),
        .rstb(sys_ilmb_cntlr_BRAM_PORT_RST),
        .wea({sys_dlmb_cntlr_BRAM_PORT_WE[0],sys_dlmb_cntlr_BRAM_PORT_WE[1],sys_dlmb_cntlr_BRAM_PORT_WE[2],sys_dlmb_cntlr_BRAM_PORT_WE[3]}),
        .web({sys_ilmb_cntlr_BRAM_PORT_WE[0],sys_ilmb_cntlr_BRAM_PORT_WE[1],sys_ilmb_cntlr_BRAM_PORT_WE[2],sys_ilmb_cntlr_BRAM_PORT_WE[3]}));
  (* BMM_INFO_PROCESSOR = "microblaze-le > system sys_dlmb_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  system_sys_mb_0 sys_mb
       (.Byte_Enable(sys_mb_DLMB_BE),
        .Clk(sys_cpu_clk),
        .DCE(sys_mb_DLMB_CE),
        .DReady(sys_mb_DLMB_READY),
        .DUE(sys_mb_DLMB_UE),
        .DWait(sys_mb_DLMB_WAIT),
        .D_AS(sys_mb_DLMB_ADDRSTROBE),
        .Data_Addr(sys_mb_DLMB_ABUS),
        .Data_Read(sys_mb_DLMB_READDBUS),
        .Data_Write(sys_mb_DLMB_WRITEDBUS),
        .Dbg_Capture(sys_mb_debug_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(sys_mb_debug_MBDEBUG_0_CLK),
        .Dbg_Disable(sys_mb_debug_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(sys_mb_debug_MBDEBUG_0_REG_EN),
        .Dbg_Shift(sys_mb_debug_MBDEBUG_0_SHIFT),
        .Dbg_TDI(sys_mb_debug_MBDEBUG_0_TDI),
        .Dbg_TDO(sys_mb_debug_MBDEBUG_0_TDO),
        .Dbg_Update(sys_mb_debug_MBDEBUG_0_UPDATE),
        .Debug_Rst(sys_mb_debug_MBDEBUG_0_RST),
        .ICE(sys_mb_ILMB_CE),
        .IFetch(sys_mb_ILMB_READSTROBE),
        .IReady(sys_mb_ILMB_READY),
        .IUE(sys_mb_ILMB_UE),
        .IWAIT(sys_mb_ILMB_WAIT),
        .I_AS(sys_mb_ILMB_ADDRSTROBE),
        .Instr(sys_mb_ILMB_READDBUS),
        .Instr_Addr(sys_mb_ILMB_ABUS),
        .Interrupt(axi_intc_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DC_ARADDR(sys_mb_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(sys_mb_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(sys_mb_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARLEN(sys_mb_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(sys_mb_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(sys_mb_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(sys_mb_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(sys_mb_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(sys_mb_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(sys_mb_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(sys_mb_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(sys_mb_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(sys_mb_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWLEN(sys_mb_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(sys_mb_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(sys_mb_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(sys_mb_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(sys_mb_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(sys_mb_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(sys_mb_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(1'b0),
        .M_AXI_DC_BREADY(sys_mb_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(sys_mb_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(sys_mb_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(sys_mb_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(1'b0),
        .M_AXI_DC_RLAST(sys_mb_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(sys_mb_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(sys_mb_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(sys_mb_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(sys_mb_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(sys_mb_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(sys_mb_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(sys_mb_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(sys_mb_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(S00_AXI_1_ARADDR),
        .M_AXI_DP_ARPROT(S00_AXI_1_ARPROT),
        .M_AXI_DP_ARREADY(S00_AXI_1_ARREADY),
        .M_AXI_DP_ARVALID(S00_AXI_1_ARVALID),
        .M_AXI_DP_AWADDR(S00_AXI_1_AWADDR),
        .M_AXI_DP_AWPROT(S00_AXI_1_AWPROT),
        .M_AXI_DP_AWREADY(S00_AXI_1_AWREADY),
        .M_AXI_DP_AWVALID(S00_AXI_1_AWVALID),
        .M_AXI_DP_BREADY(S00_AXI_1_BREADY),
        .M_AXI_DP_BRESP(S00_AXI_1_BRESP),
        .M_AXI_DP_BVALID(S00_AXI_1_BVALID),
        .M_AXI_DP_RDATA(S00_AXI_1_RDATA),
        .M_AXI_DP_RREADY(S00_AXI_1_RREADY),
        .M_AXI_DP_RRESP(S00_AXI_1_RRESP),
        .M_AXI_DP_RVALID(S00_AXI_1_RVALID),
        .M_AXI_DP_WDATA(S00_AXI_1_WDATA),
        .M_AXI_DP_WREADY(S00_AXI_1_WREADY),
        .M_AXI_DP_WSTRB(S00_AXI_1_WSTRB),
        .M_AXI_DP_WVALID(S00_AXI_1_WVALID),
        .M_AXI_IC_ARADDR(sys_mb_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(sys_mb_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(sys_mb_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARLEN(sys_mb_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(sys_mb_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(sys_mb_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(sys_mb_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(sys_mb_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(sys_mb_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(sys_mb_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWREADY(1'b0),
        .M_AXI_IC_BID(1'b0),
        .M_AXI_IC_BRESP({1'b0,1'b0}),
        .M_AXI_IC_BVALID(1'b0),
        .M_AXI_IC_RDATA(sys_mb_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(1'b0),
        .M_AXI_IC_RLAST(sys_mb_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(sys_mb_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(sys_mb_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(sys_mb_M_AXI_IC_RVALID),
        .M_AXI_IC_WREADY(1'b0),
        .Read_Strobe(sys_mb_DLMB_READSTROBE),
        .Reset(sys_rstgen_mb_reset),
        .Write_Strobe(sys_mb_DLMB_WRITESTROBE));
  system_sys_mb_debug_0 sys_mb_debug
       (.Dbg_Capture_0(sys_mb_debug_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(sys_mb_debug_MBDEBUG_0_CLK),
        .Dbg_Disable_0(sys_mb_debug_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(sys_mb_debug_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(sys_mb_debug_MBDEBUG_0_RST),
        .Dbg_Shift_0(sys_mb_debug_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(sys_mb_debug_MBDEBUG_0_TDI),
        .Dbg_TDO_0(sys_mb_debug_MBDEBUG_0_TDO),
        .Dbg_Update_0(sys_mb_debug_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(sys_mb_debug_Debug_SYS_Rst),
        .S_AXI_ACLK(sys_cpu_clk),
        .S_AXI_ARADDR(axi_cpu_interconnect_M00_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(sys_cpu_resetn),
        .S_AXI_ARREADY(axi_cpu_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_cpu_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_cpu_interconnect_M00_AXI_AWADDR[3:0]),
        .S_AXI_AWREADY(axi_cpu_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_cpu_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_cpu_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_cpu_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_cpu_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_cpu_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_cpu_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_cpu_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_cpu_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_cpu_interconnect_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_cpu_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_cpu_interconnect_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_cpu_interconnect_M00_AXI_WVALID));
  system_sys_rstgen_0 sys_rstgen
       (.aux_reset_in(1'b1),
        .bus_struct_reset(sys_rstgen_bus_struct_reset),
        .dcm_locked(axi_ddr_cntrl_mmcm_locked),
        .ext_reset_in(sys_rst_1),
        .mb_debug_sys_rst(sys_mb_debug_Debug_SYS_Rst),
        .mb_reset(sys_rstgen_mb_reset),
        .peripheral_aresetn(sys_cpu_resetn),
        .peripheral_reset(sys_cpu_reset),
        .slowest_sync_clk(sys_cpu_clk));
  system_util_fmcjesdadc1_xcvr_0 util_fmcjesdadc1_xcvr
       (.cpll_ref_clk_0(rx_ref_clk_0_1),
        .cpll_ref_clk_1(rx_ref_clk_0_1),
        .cpll_ref_clk_2(rx_ref_clk_0_1),
        .cpll_ref_clk_3(rx_ref_clk_0_1),
        .qpll_ref_clk_0(rx_ref_clk_0_1),
        .rx_0_n(rx_data_0_n_1),
        .rx_0_p(rx_data_0_p_1),
        .rx_1_n(rx_data_1_n_1),
        .rx_1_p(rx_data_1_p_1),
        .rx_2_n(rx_data_2_n_1),
        .rx_2_p(rx_data_2_p_1),
        .rx_3_n(rx_data_3_n_1),
        .rx_3_p(rx_data_3_p_1),
        .rx_calign_0(axi_ad9250_jesd_phy_en_char_align),
        .rx_calign_1(axi_ad9250_jesd_phy_en_char_align),
        .rx_calign_2(axi_ad9250_jesd_phy_en_char_align),
        .rx_calign_3(axi_ad9250_jesd_phy_en_char_align),
        .rx_charisk_0(util_fmcjesdadc1_xcvr_rx_0_rxcharisk),
        .rx_charisk_1(util_fmcjesdadc1_xcvr_rx_1_rxcharisk),
        .rx_charisk_2(util_fmcjesdadc1_xcvr_rx_2_rxcharisk),
        .rx_charisk_3(util_fmcjesdadc1_xcvr_rx_3_rxcharisk),
        .rx_clk_0(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_clk_1(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_clk_2(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_clk_3(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .rx_data_0(util_fmcjesdadc1_xcvr_rx_0_rxdata),
        .rx_data_1(util_fmcjesdadc1_xcvr_rx_1_rxdata),
        .rx_data_2(util_fmcjesdadc1_xcvr_rx_2_rxdata),
        .rx_data_3(util_fmcjesdadc1_xcvr_rx_3_rxdata),
        .rx_disperr_0(util_fmcjesdadc1_xcvr_rx_0_rxdisperr),
        .rx_disperr_1(util_fmcjesdadc1_xcvr_rx_1_rxdisperr),
        .rx_disperr_2(util_fmcjesdadc1_xcvr_rx_2_rxdisperr),
        .rx_disperr_3(util_fmcjesdadc1_xcvr_rx_3_rxdisperr),
        .rx_notintable_0(util_fmcjesdadc1_xcvr_rx_0_rxnotintable),
        .rx_notintable_1(util_fmcjesdadc1_xcvr_rx_1_rxnotintable),
        .rx_notintable_2(util_fmcjesdadc1_xcvr_rx_2_rxnotintable),
        .rx_notintable_3(util_fmcjesdadc1_xcvr_rx_3_rxnotintable),
        .rx_out_clk_0(util_fmcjesdadc1_xcvr_rx_out_clk_0),
        .up_clk(sys_cpu_clk),
        .up_cm_addr_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_cm_enb_0(1'b0),
        .up_cm_wdata_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .up_cm_wr_0(1'b0),
        .up_cpll_rst_0(axi_ad9250_xcvr_up_pll_rst),
        .up_cpll_rst_1(axi_ad9250_xcvr_up_pll_rst),
        .up_cpll_rst_2(axi_ad9250_xcvr_up_pll_rst),
        .up_cpll_rst_3(axi_ad9250_xcvr_up_pll_rst),
        .up_es_addr_0(axi_ad9250_xcvr_up_es_0_addr),
        .up_es_addr_1(axi_ad9250_xcvr_up_es_1_addr),
        .up_es_addr_2(axi_ad9250_xcvr_up_es_2_addr),
        .up_es_addr_3(axi_ad9250_xcvr_up_es_3_addr),
        .up_es_enb_0(axi_ad9250_xcvr_up_es_0_enb),
        .up_es_enb_1(axi_ad9250_xcvr_up_es_1_enb),
        .up_es_enb_2(axi_ad9250_xcvr_up_es_2_enb),
        .up_es_enb_3(axi_ad9250_xcvr_up_es_3_enb),
        .up_es_rdata_0(axi_ad9250_xcvr_up_es_0_rdata),
        .up_es_rdata_1(axi_ad9250_xcvr_up_es_1_rdata),
        .up_es_rdata_2(axi_ad9250_xcvr_up_es_2_rdata),
        .up_es_rdata_3(axi_ad9250_xcvr_up_es_3_rdata),
        .up_es_ready_0(axi_ad9250_xcvr_up_es_0_ready),
        .up_es_ready_1(axi_ad9250_xcvr_up_es_1_ready),
        .up_es_ready_2(axi_ad9250_xcvr_up_es_2_ready),
        .up_es_ready_3(axi_ad9250_xcvr_up_es_3_ready),
        .up_es_reset_0(axi_ad9250_xcvr_up_es_0_reset),
        .up_es_reset_1(axi_ad9250_xcvr_up_es_1_reset),
        .up_es_reset_2(axi_ad9250_xcvr_up_es_2_reset),
        .up_es_reset_3(axi_ad9250_xcvr_up_es_3_reset),
        .up_es_wdata_0(axi_ad9250_xcvr_up_es_0_wdata),
        .up_es_wdata_1(axi_ad9250_xcvr_up_es_1_wdata),
        .up_es_wdata_2(axi_ad9250_xcvr_up_es_2_wdata),
        .up_es_wdata_3(axi_ad9250_xcvr_up_es_3_wdata),
        .up_es_wr_0(axi_ad9250_xcvr_up_es_0_wr),
        .up_es_wr_1(axi_ad9250_xcvr_up_es_1_wr),
        .up_es_wr_2(axi_ad9250_xcvr_up_es_2_wr),
        .up_es_wr_3(axi_ad9250_xcvr_up_es_3_wr),
        .up_qpll_rst_0(axi_ad9250_xcvr_up_pll_rst),
        .up_rstn(sys_cpu_resetn),
        .up_rx_addr_0(axi_ad9250_xcvr_up_ch_0_addr),
        .up_rx_addr_1(axi_ad9250_xcvr_up_ch_1_addr),
        .up_rx_addr_2(axi_ad9250_xcvr_up_ch_2_addr),
        .up_rx_addr_3(axi_ad9250_xcvr_up_ch_3_addr),
        .up_rx_enb_0(axi_ad9250_xcvr_up_ch_0_enb),
        .up_rx_enb_1(axi_ad9250_xcvr_up_ch_1_enb),
        .up_rx_enb_2(axi_ad9250_xcvr_up_ch_2_enb),
        .up_rx_enb_3(axi_ad9250_xcvr_up_ch_3_enb),
        .up_rx_lpm_dfe_n_0(axi_ad9250_xcvr_up_ch_0_lpm_dfe_n),
        .up_rx_lpm_dfe_n_1(axi_ad9250_xcvr_up_ch_1_lpm_dfe_n),
        .up_rx_lpm_dfe_n_2(axi_ad9250_xcvr_up_ch_2_lpm_dfe_n),
        .up_rx_lpm_dfe_n_3(axi_ad9250_xcvr_up_ch_3_lpm_dfe_n),
        .up_rx_out_clk_sel_0(axi_ad9250_xcvr_up_ch_0_out_clk_sel),
        .up_rx_out_clk_sel_1(axi_ad9250_xcvr_up_ch_1_out_clk_sel),
        .up_rx_out_clk_sel_2(axi_ad9250_xcvr_up_ch_2_out_clk_sel),
        .up_rx_out_clk_sel_3(axi_ad9250_xcvr_up_ch_3_out_clk_sel),
        .up_rx_pll_locked_0(axi_ad9250_xcvr_up_ch_0_pll_locked),
        .up_rx_pll_locked_1(axi_ad9250_xcvr_up_ch_1_pll_locked),
        .up_rx_pll_locked_2(axi_ad9250_xcvr_up_ch_2_pll_locked),
        .up_rx_pll_locked_3(axi_ad9250_xcvr_up_ch_3_pll_locked),
        .up_rx_rate_0(axi_ad9250_xcvr_up_ch_0_rate),
        .up_rx_rate_1(axi_ad9250_xcvr_up_ch_1_rate),
        .up_rx_rate_2(axi_ad9250_xcvr_up_ch_2_rate),
        .up_rx_rate_3(axi_ad9250_xcvr_up_ch_3_rate),
        .up_rx_rdata_0(axi_ad9250_xcvr_up_ch_0_rdata),
        .up_rx_rdata_1(axi_ad9250_xcvr_up_ch_1_rdata),
        .up_rx_rdata_2(axi_ad9250_xcvr_up_ch_2_rdata),
        .up_rx_rdata_3(axi_ad9250_xcvr_up_ch_3_rdata),
        .up_rx_ready_0(axi_ad9250_xcvr_up_ch_0_ready),
        .up_rx_ready_1(axi_ad9250_xcvr_up_ch_1_ready),
        .up_rx_ready_2(axi_ad9250_xcvr_up_ch_2_ready),
        .up_rx_ready_3(axi_ad9250_xcvr_up_ch_3_ready),
        .up_rx_rst_0(axi_ad9250_xcvr_up_ch_0_rst),
        .up_rx_rst_1(axi_ad9250_xcvr_up_ch_1_rst),
        .up_rx_rst_2(axi_ad9250_xcvr_up_ch_2_rst),
        .up_rx_rst_3(axi_ad9250_xcvr_up_ch_3_rst),
        .up_rx_rst_done_0(axi_ad9250_xcvr_up_ch_0_rst_done),
        .up_rx_rst_done_1(axi_ad9250_xcvr_up_ch_1_rst_done),
        .up_rx_rst_done_2(axi_ad9250_xcvr_up_ch_2_rst_done),
        .up_rx_rst_done_3(axi_ad9250_xcvr_up_ch_3_rst_done),
        .up_rx_sys_clk_sel_0(axi_ad9250_xcvr_up_ch_0_sys_clk_sel),
        .up_rx_sys_clk_sel_1(axi_ad9250_xcvr_up_ch_1_sys_clk_sel),
        .up_rx_sys_clk_sel_2(axi_ad9250_xcvr_up_ch_2_sys_clk_sel),
        .up_rx_sys_clk_sel_3(axi_ad9250_xcvr_up_ch_3_sys_clk_sel),
        .up_rx_user_ready_0(axi_ad9250_xcvr_up_ch_0_user_ready),
        .up_rx_user_ready_1(axi_ad9250_xcvr_up_ch_1_user_ready),
        .up_rx_user_ready_2(axi_ad9250_xcvr_up_ch_2_user_ready),
        .up_rx_user_ready_3(axi_ad9250_xcvr_up_ch_3_user_ready),
        .up_rx_wdata_0(axi_ad9250_xcvr_up_ch_0_wdata),
        .up_rx_wdata_1(axi_ad9250_xcvr_up_ch_1_wdata),
        .up_rx_wdata_2(axi_ad9250_xcvr_up_ch_2_wdata),
        .up_rx_wdata_3(axi_ad9250_xcvr_up_ch_3_wdata),
        .up_rx_wr_0(axi_ad9250_xcvr_up_ch_0_wr),
        .up_rx_wr_1(axi_ad9250_xcvr_up_ch_1_wr),
        .up_rx_wr_2(axi_ad9250_xcvr_up_ch_2_wr),
        .up_rx_wr_3(axi_ad9250_xcvr_up_ch_3_wr));
endmodule

module system_axi_cpu_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arready,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awready,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arburst,
    M10_AXI_arcache,
    M10_AXI_arlen,
    M10_AXI_arlock,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arsize,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awburst,
    M10_AXI_awcache,
    M10_AXI_awlen,
    M10_AXI_awlock,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awsize,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rlast,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wlast,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    M11_ACLK,
    M11_ARESETN,
    M11_AXI_araddr,
    M11_AXI_arprot,
    M11_AXI_arready,
    M11_AXI_arvalid,
    M11_AXI_awaddr,
    M11_AXI_awprot,
    M11_AXI_awready,
    M11_AXI_awvalid,
    M11_AXI_bready,
    M11_AXI_bresp,
    M11_AXI_bvalid,
    M11_AXI_rdata,
    M11_AXI_rready,
    M11_AXI_rresp,
    M11_AXI_rvalid,
    M11_AXI_wdata,
    M11_AXI_wready,
    M11_AXI_wstrb,
    M11_AXI_wvalid,
    M12_ACLK,
    M12_ARESETN,
    M12_AXI_araddr,
    M12_AXI_arprot,
    M12_AXI_arready,
    M12_AXI_arvalid,
    M12_AXI_awaddr,
    M12_AXI_awprot,
    M12_AXI_awready,
    M12_AXI_awvalid,
    M12_AXI_bready,
    M12_AXI_bresp,
    M12_AXI_bvalid,
    M12_AXI_rdata,
    M12_AXI_rready,
    M12_AXI_rresp,
    M12_AXI_rvalid,
    M12_AXI_wdata,
    M12_AXI_wready,
    M12_AXI_wstrb,
    M12_AXI_wvalid,
    M13_ACLK,
    M13_ARESETN,
    M13_AXI_araddr,
    M13_AXI_arprot,
    M13_AXI_arready,
    M13_AXI_arvalid,
    M13_AXI_awaddr,
    M13_AXI_awprot,
    M13_AXI_awready,
    M13_AXI_awvalid,
    M13_AXI_bready,
    M13_AXI_bresp,
    M13_AXI_bvalid,
    M13_AXI_rdata,
    M13_AXI_rready,
    M13_AXI_rresp,
    M13_AXI_rvalid,
    M13_AXI_wdata,
    M13_AXI_wready,
    M13_AXI_wstrb,
    M13_AXI_wvalid,
    M14_ACLK,
    M14_ARESETN,
    M14_AXI_araddr,
    M14_AXI_arprot,
    M14_AXI_arready,
    M14_AXI_arvalid,
    M14_AXI_awaddr,
    M14_AXI_awprot,
    M14_AXI_awready,
    M14_AXI_awvalid,
    M14_AXI_bready,
    M14_AXI_bresp,
    M14_AXI_bvalid,
    M14_AXI_rdata,
    M14_AXI_rready,
    M14_AXI_rresp,
    M14_AXI_rvalid,
    M14_AXI_wdata,
    M14_AXI_wready,
    M14_AXI_wstrb,
    M14_AXI_wvalid,
    M15_ACLK,
    M15_ARESETN,
    M15_AXI_araddr,
    M15_AXI_arprot,
    M15_AXI_arready,
    M15_AXI_arvalid,
    M15_AXI_awaddr,
    M15_AXI_awprot,
    M15_AXI_awready,
    M15_AXI_awvalid,
    M15_AXI_bready,
    M15_AXI_bresp,
    M15_AXI_bvalid,
    M15_AXI_rdata,
    M15_AXI_rready,
    M15_AXI_rresp,
    M15_AXI_rvalid,
    M15_AXI_wdata,
    M15_AXI_wready,
    M15_AXI_wstrb,
    M15_AXI_wvalid,
    M16_ACLK,
    M16_ARESETN,
    M16_AXI_araddr,
    M16_AXI_arprot,
    M16_AXI_arready,
    M16_AXI_arvalid,
    M16_AXI_awaddr,
    M16_AXI_awprot,
    M16_AXI_awready,
    M16_AXI_awvalid,
    M16_AXI_bready,
    M16_AXI_bresp,
    M16_AXI_bvalid,
    M16_AXI_rdata,
    M16_AXI_rready,
    M16_AXI_rresp,
    M16_AXI_rvalid,
    M16_AXI_wdata,
    M16_AXI_wready,
    M16_AXI_wstrb,
    M16_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input [0:0]M06_AXI_arready;
  output [0:0]M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input [0:0]M06_AXI_awready;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input [0:0]M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [31:0]M08_AXI_araddr;
  input [0:0]M08_AXI_arready;
  output [0:0]M08_AXI_arvalid;
  output [31:0]M08_AXI_awaddr;
  input [0:0]M08_AXI_awready;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input [0:0]M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [31:0]M09_AXI_araddr;
  input [0:0]M09_AXI_arready;
  output [0:0]M09_AXI_arvalid;
  output [31:0]M09_AXI_awaddr;
  input [0:0]M09_AXI_awready;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [31:0]M09_AXI_rdata;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [31:0]M09_AXI_wdata;
  input [0:0]M09_AXI_wready;
  output [3:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [31:0]M10_AXI_araddr;
  output [1:0]M10_AXI_arburst;
  output [3:0]M10_AXI_arcache;
  output [7:0]M10_AXI_arlen;
  output [0:0]M10_AXI_arlock;
  output [2:0]M10_AXI_arprot;
  input M10_AXI_arready;
  output [2:0]M10_AXI_arsize;
  output M10_AXI_arvalid;
  output [31:0]M10_AXI_awaddr;
  output [1:0]M10_AXI_awburst;
  output [3:0]M10_AXI_awcache;
  output [7:0]M10_AXI_awlen;
  output [0:0]M10_AXI_awlock;
  output [2:0]M10_AXI_awprot;
  input M10_AXI_awready;
  output [2:0]M10_AXI_awsize;
  output M10_AXI_awvalid;
  output M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input M10_AXI_bvalid;
  input [31:0]M10_AXI_rdata;
  input M10_AXI_rlast;
  output M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input M10_AXI_rvalid;
  output [31:0]M10_AXI_wdata;
  output M10_AXI_wlast;
  input M10_AXI_wready;
  output [3:0]M10_AXI_wstrb;
  output M10_AXI_wvalid;
  input M11_ACLK;
  input M11_ARESETN;
  output [31:0]M11_AXI_araddr;
  output [2:0]M11_AXI_arprot;
  input M11_AXI_arready;
  output M11_AXI_arvalid;
  output [31:0]M11_AXI_awaddr;
  output [2:0]M11_AXI_awprot;
  input M11_AXI_awready;
  output M11_AXI_awvalid;
  output M11_AXI_bready;
  input [1:0]M11_AXI_bresp;
  input M11_AXI_bvalid;
  input [31:0]M11_AXI_rdata;
  output M11_AXI_rready;
  input [1:0]M11_AXI_rresp;
  input M11_AXI_rvalid;
  output [31:0]M11_AXI_wdata;
  input M11_AXI_wready;
  output [3:0]M11_AXI_wstrb;
  output M11_AXI_wvalid;
  input M12_ACLK;
  input M12_ARESETN;
  output [31:0]M12_AXI_araddr;
  output [2:0]M12_AXI_arprot;
  input M12_AXI_arready;
  output M12_AXI_arvalid;
  output [31:0]M12_AXI_awaddr;
  output [2:0]M12_AXI_awprot;
  input M12_AXI_awready;
  output M12_AXI_awvalid;
  output M12_AXI_bready;
  input [1:0]M12_AXI_bresp;
  input M12_AXI_bvalid;
  input [31:0]M12_AXI_rdata;
  output M12_AXI_rready;
  input [1:0]M12_AXI_rresp;
  input M12_AXI_rvalid;
  output [31:0]M12_AXI_wdata;
  input M12_AXI_wready;
  output [3:0]M12_AXI_wstrb;
  output M12_AXI_wvalid;
  input M13_ACLK;
  input M13_ARESETN;
  output [31:0]M13_AXI_araddr;
  output [2:0]M13_AXI_arprot;
  input M13_AXI_arready;
  output M13_AXI_arvalid;
  output [31:0]M13_AXI_awaddr;
  output [2:0]M13_AXI_awprot;
  input M13_AXI_awready;
  output M13_AXI_awvalid;
  output M13_AXI_bready;
  input [1:0]M13_AXI_bresp;
  input M13_AXI_bvalid;
  input [31:0]M13_AXI_rdata;
  output M13_AXI_rready;
  input [1:0]M13_AXI_rresp;
  input M13_AXI_rvalid;
  output [31:0]M13_AXI_wdata;
  input M13_AXI_wready;
  output [3:0]M13_AXI_wstrb;
  output M13_AXI_wvalid;
  input M14_ACLK;
  input M14_ARESETN;
  output [31:0]M14_AXI_araddr;
  output [2:0]M14_AXI_arprot;
  input M14_AXI_arready;
  output M14_AXI_arvalid;
  output [31:0]M14_AXI_awaddr;
  output [2:0]M14_AXI_awprot;
  input M14_AXI_awready;
  output M14_AXI_awvalid;
  output M14_AXI_bready;
  input [1:0]M14_AXI_bresp;
  input M14_AXI_bvalid;
  input [31:0]M14_AXI_rdata;
  output M14_AXI_rready;
  input [1:0]M14_AXI_rresp;
  input M14_AXI_rvalid;
  output [31:0]M14_AXI_wdata;
  input M14_AXI_wready;
  output [3:0]M14_AXI_wstrb;
  output M14_AXI_wvalid;
  input M15_ACLK;
  input M15_ARESETN;
  output [31:0]M15_AXI_araddr;
  output [2:0]M15_AXI_arprot;
  input M15_AXI_arready;
  output M15_AXI_arvalid;
  output [31:0]M15_AXI_awaddr;
  output [2:0]M15_AXI_awprot;
  input M15_AXI_awready;
  output M15_AXI_awvalid;
  output M15_AXI_bready;
  input [1:0]M15_AXI_bresp;
  input M15_AXI_bvalid;
  input [31:0]M15_AXI_rdata;
  output M15_AXI_rready;
  input [1:0]M15_AXI_rresp;
  input M15_AXI_rvalid;
  output [31:0]M15_AXI_wdata;
  input M15_AXI_wready;
  output [3:0]M15_AXI_wstrb;
  output M15_AXI_wvalid;
  input M16_ACLK;
  input M16_ARESETN;
  output [31:0]M16_AXI_araddr;
  output [2:0]M16_AXI_arprot;
  input M16_AXI_arready;
  output M16_AXI_arvalid;
  output [31:0]M16_AXI_awaddr;
  output [2:0]M16_AXI_awprot;
  input M16_AXI_awready;
  output M16_AXI_awvalid;
  output M16_AXI_bready;
  input [1:0]M16_AXI_bresp;
  input M16_AXI_bvalid;
  input [31:0]M16_AXI_rdata;
  output M16_AXI_rready;
  input [1:0]M16_AXI_rresp;
  input M16_AXI_rvalid;
  output [31:0]M16_AXI_wdata;
  input M16_AXI_wready;
  output [3:0]M16_AXI_wstrb;
  output M16_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi_cpu_interconnect_ACLK_net;
  wire axi_cpu_interconnect_ARESETN_net;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_ARPROT;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_ARREADY;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]axi_cpu_interconnect_to_s00_couplers_AWPROT;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_AWREADY;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_AWVALID;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_BREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_BRESP;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_BVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_RDATA;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_RREADY;
  wire [1:0]axi_cpu_interconnect_to_s00_couplers_RRESP;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_RVALID;
  wire [31:0]axi_cpu_interconnect_to_s00_couplers_WDATA;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_WREADY;
  wire [3:0]axi_cpu_interconnect_to_s00_couplers_WSTRB;
  wire [0:0]axi_cpu_interconnect_to_s00_couplers_WVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_ARADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_ARPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_ARVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_AWADDR;
  wire [2:0]i00_couplers_to_tier2_xbar_0_AWPROT;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWREADY;
  wire [0:0]i00_couplers_to_tier2_xbar_0_AWVALID;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_BRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_BVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_RDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RREADY;
  wire [1:0]i00_couplers_to_tier2_xbar_0_RRESP;
  wire [0:0]i00_couplers_to_tier2_xbar_0_RVALID;
  wire [31:0]i00_couplers_to_tier2_xbar_0_WDATA;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WREADY;
  wire [3:0]i00_couplers_to_tier2_xbar_0_WSTRB;
  wire [0:0]i00_couplers_to_tier2_xbar_0_WVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_ARADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_ARPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_ARVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_AWADDR;
  wire [2:0]i01_couplers_to_tier2_xbar_1_AWPROT;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWREADY;
  wire [0:0]i01_couplers_to_tier2_xbar_1_AWVALID;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_BRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_BVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_RDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RREADY;
  wire [1:0]i01_couplers_to_tier2_xbar_1_RRESP;
  wire [0:0]i01_couplers_to_tier2_xbar_1_RVALID;
  wire [31:0]i01_couplers_to_tier2_xbar_1_WDATA;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WREADY;
  wire [3:0]i01_couplers_to_tier2_xbar_1_WSTRB;
  wire [0:0]i01_couplers_to_tier2_xbar_1_WVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_ARADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_ARPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_ARVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_AWADDR;
  wire [2:0]i02_couplers_to_tier2_xbar_2_AWPROT;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWREADY;
  wire [0:0]i02_couplers_to_tier2_xbar_2_AWVALID;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_BRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_BVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_RDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RREADY;
  wire [1:0]i02_couplers_to_tier2_xbar_2_RRESP;
  wire [0:0]i02_couplers_to_tier2_xbar_2_RVALID;
  wire [31:0]i02_couplers_to_tier2_xbar_2_WDATA;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WREADY;
  wire [3:0]i02_couplers_to_tier2_xbar_2_WSTRB;
  wire [0:0]i02_couplers_to_tier2_xbar_2_WVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m00_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m00_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m00_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m00_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m01_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m01_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m01_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m01_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m02_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m02_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m02_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m02_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m03_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m03_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m03_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m03_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m04_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m04_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m04_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m04_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m05_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m05_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m05_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m05_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m06_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m06_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m06_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m06_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m07_couplers_to_axi_cpu_interconnect_ARPROT;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m07_couplers_to_axi_cpu_interconnect_AWPROT;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m07_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m07_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m07_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m07_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m07_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m08_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m08_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m08_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m08_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m08_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_AWVALID;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m09_couplers_to_axi_cpu_interconnect_BRESP;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_RDATA;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m09_couplers_to_axi_cpu_interconnect_RRESP;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m09_couplers_to_axi_cpu_interconnect_WDATA;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m09_couplers_to_axi_cpu_interconnect_WSTRB;
  wire [0:0]m09_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_ARBURST;
  wire [3:0]m10_couplers_to_axi_cpu_interconnect_ARCACHE;
  wire [7:0]m10_couplers_to_axi_cpu_interconnect_ARLEN;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_ARLOCK;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m10_couplers_to_axi_cpu_interconnect_ARREADY;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_ARSIZE;
  wire m10_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_AWBURST;
  wire [3:0]m10_couplers_to_axi_cpu_interconnect_AWCACHE;
  wire [7:0]m10_couplers_to_axi_cpu_interconnect_AWLEN;
  wire [0:0]m10_couplers_to_axi_cpu_interconnect_AWLOCK;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m10_couplers_to_axi_cpu_interconnect_AWREADY;
  wire [2:0]m10_couplers_to_axi_cpu_interconnect_AWSIZE;
  wire m10_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m10_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_BRESP;
  wire m10_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_RDATA;
  wire m10_couplers_to_axi_cpu_interconnect_RLAST;
  wire m10_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m10_couplers_to_axi_cpu_interconnect_RRESP;
  wire m10_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m10_couplers_to_axi_cpu_interconnect_WDATA;
  wire m10_couplers_to_axi_cpu_interconnect_WLAST;
  wire m10_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m10_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m10_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m11_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m11_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m11_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m11_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m11_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m11_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m11_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m11_couplers_to_axi_cpu_interconnect_BRESP;
  wire m11_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_RDATA;
  wire m11_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m11_couplers_to_axi_cpu_interconnect_RRESP;
  wire m11_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m11_couplers_to_axi_cpu_interconnect_WDATA;
  wire m11_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m11_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m11_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m12_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m12_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m12_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m12_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m12_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m12_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m12_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m12_couplers_to_axi_cpu_interconnect_BRESP;
  wire m12_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_RDATA;
  wire m12_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m12_couplers_to_axi_cpu_interconnect_RRESP;
  wire m12_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m12_couplers_to_axi_cpu_interconnect_WDATA;
  wire m12_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m12_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m12_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m13_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m13_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m13_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m13_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m13_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m13_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m13_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m13_couplers_to_axi_cpu_interconnect_BRESP;
  wire m13_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_RDATA;
  wire m13_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m13_couplers_to_axi_cpu_interconnect_RRESP;
  wire m13_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m13_couplers_to_axi_cpu_interconnect_WDATA;
  wire m13_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m13_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m13_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m14_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m14_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m14_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m14_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m14_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m14_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m14_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m14_couplers_to_axi_cpu_interconnect_BRESP;
  wire m14_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_RDATA;
  wire m14_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m14_couplers_to_axi_cpu_interconnect_RRESP;
  wire m14_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m14_couplers_to_axi_cpu_interconnect_WDATA;
  wire m14_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m14_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m14_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m15_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m15_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m15_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m15_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m15_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m15_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m15_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m15_couplers_to_axi_cpu_interconnect_BRESP;
  wire m15_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_RDATA;
  wire m15_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m15_couplers_to_axi_cpu_interconnect_RRESP;
  wire m15_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m15_couplers_to_axi_cpu_interconnect_WDATA;
  wire m15_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m15_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m15_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_ARADDR;
  wire [2:0]m16_couplers_to_axi_cpu_interconnect_ARPROT;
  wire m16_couplers_to_axi_cpu_interconnect_ARREADY;
  wire m16_couplers_to_axi_cpu_interconnect_ARVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_AWADDR;
  wire [2:0]m16_couplers_to_axi_cpu_interconnect_AWPROT;
  wire m16_couplers_to_axi_cpu_interconnect_AWREADY;
  wire m16_couplers_to_axi_cpu_interconnect_AWVALID;
  wire m16_couplers_to_axi_cpu_interconnect_BREADY;
  wire [1:0]m16_couplers_to_axi_cpu_interconnect_BRESP;
  wire m16_couplers_to_axi_cpu_interconnect_BVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_RDATA;
  wire m16_couplers_to_axi_cpu_interconnect_RREADY;
  wire [1:0]m16_couplers_to_axi_cpu_interconnect_RRESP;
  wire m16_couplers_to_axi_cpu_interconnect_RVALID;
  wire [31:0]m16_couplers_to_axi_cpu_interconnect_WDATA;
  wire m16_couplers_to_axi_cpu_interconnect_WREADY;
  wire [3:0]m16_couplers_to_axi_cpu_interconnect_WSTRB;
  wire m16_couplers_to_axi_cpu_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_ARVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWREADY;
  wire [0:0]tier2_xbar_0_to_m00_couplers_AWVALID;
  wire [0:0]tier2_xbar_0_to_m00_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m00_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_RDATA;
  wire [0:0]tier2_xbar_0_to_m00_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m00_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m00_couplers_RVALID;
  wire [31:0]tier2_xbar_0_to_m00_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WREADY;
  wire [3:0]tier2_xbar_0_to_m00_couplers_WSTRB;
  wire [0:0]tier2_xbar_0_to_m00_couplers_WVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m01_couplers_ARREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_ARVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m01_couplers_AWREADY;
  wire [1:1]tier2_xbar_0_to_m01_couplers_AWVALID;
  wire [1:1]tier2_xbar_0_to_m01_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m01_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m01_couplers_RDATA;
  wire [1:1]tier2_xbar_0_to_m01_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m01_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m01_couplers_RVALID;
  wire [63:32]tier2_xbar_0_to_m01_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m01_couplers_WREADY;
  wire [7:4]tier2_xbar_0_to_m01_couplers_WSTRB;
  wire [1:1]tier2_xbar_0_to_m01_couplers_WVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m02_couplers_ARREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_ARVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m02_couplers_AWREADY;
  wire [2:2]tier2_xbar_0_to_m02_couplers_AWVALID;
  wire [2:2]tier2_xbar_0_to_m02_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m02_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m02_couplers_RDATA;
  wire [2:2]tier2_xbar_0_to_m02_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m02_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m02_couplers_RVALID;
  wire [95:64]tier2_xbar_0_to_m02_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m02_couplers_WREADY;
  wire [11:8]tier2_xbar_0_to_m02_couplers_WSTRB;
  wire [2:2]tier2_xbar_0_to_m02_couplers_WVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m03_couplers_ARREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_ARVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m03_couplers_AWREADY;
  wire [3:3]tier2_xbar_0_to_m03_couplers_AWVALID;
  wire [3:3]tier2_xbar_0_to_m03_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m03_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m03_couplers_RDATA;
  wire [3:3]tier2_xbar_0_to_m03_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m03_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m03_couplers_RVALID;
  wire [127:96]tier2_xbar_0_to_m03_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m03_couplers_WREADY;
  wire [15:12]tier2_xbar_0_to_m03_couplers_WSTRB;
  wire [3:3]tier2_xbar_0_to_m03_couplers_WVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m04_couplers_ARREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_ARVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m04_couplers_AWREADY;
  wire [4:4]tier2_xbar_0_to_m04_couplers_AWVALID;
  wire [4:4]tier2_xbar_0_to_m04_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m04_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m04_couplers_RDATA;
  wire [4:4]tier2_xbar_0_to_m04_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m04_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m04_couplers_RVALID;
  wire [159:128]tier2_xbar_0_to_m04_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m04_couplers_WREADY;
  wire [19:16]tier2_xbar_0_to_m04_couplers_WSTRB;
  wire [4:4]tier2_xbar_0_to_m04_couplers_WVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m05_couplers_ARREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_ARVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m05_couplers_AWREADY;
  wire [5:5]tier2_xbar_0_to_m05_couplers_AWVALID;
  wire [5:5]tier2_xbar_0_to_m05_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m05_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m05_couplers_RDATA;
  wire [5:5]tier2_xbar_0_to_m05_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m05_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m05_couplers_RVALID;
  wire [191:160]tier2_xbar_0_to_m05_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m05_couplers_WREADY;
  wire [23:20]tier2_xbar_0_to_m05_couplers_WSTRB;
  wire [5:5]tier2_xbar_0_to_m05_couplers_WVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_ARADDR;
  wire [0:0]tier2_xbar_0_to_m06_couplers_ARREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_ARVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_AWADDR;
  wire [0:0]tier2_xbar_0_to_m06_couplers_AWREADY;
  wire [6:6]tier2_xbar_0_to_m06_couplers_AWVALID;
  wire [6:6]tier2_xbar_0_to_m06_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m06_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m06_couplers_RDATA;
  wire [6:6]tier2_xbar_0_to_m06_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m06_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m06_couplers_RVALID;
  wire [223:192]tier2_xbar_0_to_m06_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m06_couplers_WREADY;
  wire [27:24]tier2_xbar_0_to_m06_couplers_WSTRB;
  wire [6:6]tier2_xbar_0_to_m06_couplers_WVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_ARADDR;
  wire [23:21]tier2_xbar_0_to_m07_couplers_ARPROT;
  wire [0:0]tier2_xbar_0_to_m07_couplers_ARREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_ARVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_AWADDR;
  wire [23:21]tier2_xbar_0_to_m07_couplers_AWPROT;
  wire [0:0]tier2_xbar_0_to_m07_couplers_AWREADY;
  wire [7:7]tier2_xbar_0_to_m07_couplers_AWVALID;
  wire [7:7]tier2_xbar_0_to_m07_couplers_BREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_BRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_BVALID;
  wire [31:0]tier2_xbar_0_to_m07_couplers_RDATA;
  wire [7:7]tier2_xbar_0_to_m07_couplers_RREADY;
  wire [1:0]tier2_xbar_0_to_m07_couplers_RRESP;
  wire [0:0]tier2_xbar_0_to_m07_couplers_RVALID;
  wire [255:224]tier2_xbar_0_to_m07_couplers_WDATA;
  wire [0:0]tier2_xbar_0_to_m07_couplers_WREADY;
  wire [31:28]tier2_xbar_0_to_m07_couplers_WSTRB;
  wire [7:7]tier2_xbar_0_to_m07_couplers_WVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_ARADDR;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_ARVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_AWADDR;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWREADY;
  wire [0:0]tier2_xbar_1_to_m08_couplers_AWVALID;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m08_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_RDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m08_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m08_couplers_RVALID;
  wire [31:0]tier2_xbar_1_to_m08_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WREADY;
  wire [3:0]tier2_xbar_1_to_m08_couplers_WSTRB;
  wire [0:0]tier2_xbar_1_to_m08_couplers_WVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_ARADDR;
  wire [0:0]tier2_xbar_1_to_m09_couplers_ARREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_ARVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_AWADDR;
  wire [0:0]tier2_xbar_1_to_m09_couplers_AWREADY;
  wire [1:1]tier2_xbar_1_to_m09_couplers_AWVALID;
  wire [1:1]tier2_xbar_1_to_m09_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_BRESP;
  wire [0:0]tier2_xbar_1_to_m09_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m09_couplers_RDATA;
  wire [1:1]tier2_xbar_1_to_m09_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m09_couplers_RRESP;
  wire [0:0]tier2_xbar_1_to_m09_couplers_RVALID;
  wire [63:32]tier2_xbar_1_to_m09_couplers_WDATA;
  wire [0:0]tier2_xbar_1_to_m09_couplers_WREADY;
  wire [7:4]tier2_xbar_1_to_m09_couplers_WSTRB;
  wire [1:1]tier2_xbar_1_to_m09_couplers_WVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_ARADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_ARPROT;
  wire tier2_xbar_1_to_m10_couplers_ARREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_ARVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_AWADDR;
  wire [8:6]tier2_xbar_1_to_m10_couplers_AWPROT;
  wire tier2_xbar_1_to_m10_couplers_AWREADY;
  wire [2:2]tier2_xbar_1_to_m10_couplers_AWVALID;
  wire [2:2]tier2_xbar_1_to_m10_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_BRESP;
  wire tier2_xbar_1_to_m10_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m10_couplers_RDATA;
  wire [2:2]tier2_xbar_1_to_m10_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m10_couplers_RRESP;
  wire tier2_xbar_1_to_m10_couplers_RVALID;
  wire [95:64]tier2_xbar_1_to_m10_couplers_WDATA;
  wire tier2_xbar_1_to_m10_couplers_WREADY;
  wire [11:8]tier2_xbar_1_to_m10_couplers_WSTRB;
  wire [2:2]tier2_xbar_1_to_m10_couplers_WVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_ARADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_ARPROT;
  wire tier2_xbar_1_to_m11_couplers_ARREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_ARVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_AWADDR;
  wire [11:9]tier2_xbar_1_to_m11_couplers_AWPROT;
  wire tier2_xbar_1_to_m11_couplers_AWREADY;
  wire [3:3]tier2_xbar_1_to_m11_couplers_AWVALID;
  wire [3:3]tier2_xbar_1_to_m11_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_BRESP;
  wire tier2_xbar_1_to_m11_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m11_couplers_RDATA;
  wire [3:3]tier2_xbar_1_to_m11_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m11_couplers_RRESP;
  wire tier2_xbar_1_to_m11_couplers_RVALID;
  wire [127:96]tier2_xbar_1_to_m11_couplers_WDATA;
  wire tier2_xbar_1_to_m11_couplers_WREADY;
  wire [15:12]tier2_xbar_1_to_m11_couplers_WSTRB;
  wire [3:3]tier2_xbar_1_to_m11_couplers_WVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_ARADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_ARPROT;
  wire tier2_xbar_1_to_m12_couplers_ARREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_ARVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_AWADDR;
  wire [14:12]tier2_xbar_1_to_m12_couplers_AWPROT;
  wire tier2_xbar_1_to_m12_couplers_AWREADY;
  wire [4:4]tier2_xbar_1_to_m12_couplers_AWVALID;
  wire [4:4]tier2_xbar_1_to_m12_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_BRESP;
  wire tier2_xbar_1_to_m12_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m12_couplers_RDATA;
  wire [4:4]tier2_xbar_1_to_m12_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m12_couplers_RRESP;
  wire tier2_xbar_1_to_m12_couplers_RVALID;
  wire [159:128]tier2_xbar_1_to_m12_couplers_WDATA;
  wire tier2_xbar_1_to_m12_couplers_WREADY;
  wire [19:16]tier2_xbar_1_to_m12_couplers_WSTRB;
  wire [4:4]tier2_xbar_1_to_m12_couplers_WVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_ARADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_ARPROT;
  wire tier2_xbar_1_to_m13_couplers_ARREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_ARVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_AWADDR;
  wire [17:15]tier2_xbar_1_to_m13_couplers_AWPROT;
  wire tier2_xbar_1_to_m13_couplers_AWREADY;
  wire [5:5]tier2_xbar_1_to_m13_couplers_AWVALID;
  wire [5:5]tier2_xbar_1_to_m13_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_BRESP;
  wire tier2_xbar_1_to_m13_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m13_couplers_RDATA;
  wire [5:5]tier2_xbar_1_to_m13_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m13_couplers_RRESP;
  wire tier2_xbar_1_to_m13_couplers_RVALID;
  wire [191:160]tier2_xbar_1_to_m13_couplers_WDATA;
  wire tier2_xbar_1_to_m13_couplers_WREADY;
  wire [23:20]tier2_xbar_1_to_m13_couplers_WSTRB;
  wire [5:5]tier2_xbar_1_to_m13_couplers_WVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_ARADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_ARPROT;
  wire tier2_xbar_1_to_m14_couplers_ARREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_ARVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_AWADDR;
  wire [20:18]tier2_xbar_1_to_m14_couplers_AWPROT;
  wire tier2_xbar_1_to_m14_couplers_AWREADY;
  wire [6:6]tier2_xbar_1_to_m14_couplers_AWVALID;
  wire [6:6]tier2_xbar_1_to_m14_couplers_BREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_BRESP;
  wire tier2_xbar_1_to_m14_couplers_BVALID;
  wire [31:0]tier2_xbar_1_to_m14_couplers_RDATA;
  wire [6:6]tier2_xbar_1_to_m14_couplers_RREADY;
  wire [1:0]tier2_xbar_1_to_m14_couplers_RRESP;
  wire tier2_xbar_1_to_m14_couplers_RVALID;
  wire [223:192]tier2_xbar_1_to_m14_couplers_WDATA;
  wire tier2_xbar_1_to_m14_couplers_WREADY;
  wire [27:24]tier2_xbar_1_to_m14_couplers_WSTRB;
  wire [6:6]tier2_xbar_1_to_m14_couplers_WVALID;
  wire [31:0]tier2_xbar_2_to_m15_couplers_ARADDR;
  wire [2:0]tier2_xbar_2_to_m15_couplers_ARPROT;
  wire tier2_xbar_2_to_m15_couplers_ARREADY;
  wire [0:0]tier2_xbar_2_to_m15_couplers_ARVALID;
  wire [31:0]tier2_xbar_2_to_m15_couplers_AWADDR;
  wire [2:0]tier2_xbar_2_to_m15_couplers_AWPROT;
  wire tier2_xbar_2_to_m15_couplers_AWREADY;
  wire [0:0]tier2_xbar_2_to_m15_couplers_AWVALID;
  wire [0:0]tier2_xbar_2_to_m15_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m15_couplers_BRESP;
  wire tier2_xbar_2_to_m15_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m15_couplers_RDATA;
  wire [0:0]tier2_xbar_2_to_m15_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m15_couplers_RRESP;
  wire tier2_xbar_2_to_m15_couplers_RVALID;
  wire [31:0]tier2_xbar_2_to_m15_couplers_WDATA;
  wire tier2_xbar_2_to_m15_couplers_WREADY;
  wire [3:0]tier2_xbar_2_to_m15_couplers_WSTRB;
  wire [0:0]tier2_xbar_2_to_m15_couplers_WVALID;
  wire [63:32]tier2_xbar_2_to_m16_couplers_ARADDR;
  wire [5:3]tier2_xbar_2_to_m16_couplers_ARPROT;
  wire tier2_xbar_2_to_m16_couplers_ARREADY;
  wire [1:1]tier2_xbar_2_to_m16_couplers_ARVALID;
  wire [63:32]tier2_xbar_2_to_m16_couplers_AWADDR;
  wire [5:3]tier2_xbar_2_to_m16_couplers_AWPROT;
  wire tier2_xbar_2_to_m16_couplers_AWREADY;
  wire [1:1]tier2_xbar_2_to_m16_couplers_AWVALID;
  wire [1:1]tier2_xbar_2_to_m16_couplers_BREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_BRESP;
  wire tier2_xbar_2_to_m16_couplers_BVALID;
  wire [31:0]tier2_xbar_2_to_m16_couplers_RDATA;
  wire [1:1]tier2_xbar_2_to_m16_couplers_RREADY;
  wire [1:0]tier2_xbar_2_to_m16_couplers_RRESP;
  wire tier2_xbar_2_to_m16_couplers_RVALID;
  wire [63:32]tier2_xbar_2_to_m16_couplers_WDATA;
  wire tier2_xbar_2_to_m16_couplers_WREADY;
  wire [7:4]tier2_xbar_2_to_m16_couplers_WSTRB;
  wire [1:1]tier2_xbar_2_to_m16_couplers_WVALID;
  wire [31:0]xbar_to_i00_couplers_ARADDR;
  wire [2:0]xbar_to_i00_couplers_ARPROT;
  wire [0:0]xbar_to_i00_couplers_ARREADY;
  wire [0:0]xbar_to_i00_couplers_ARVALID;
  wire [31:0]xbar_to_i00_couplers_AWADDR;
  wire [2:0]xbar_to_i00_couplers_AWPROT;
  wire [0:0]xbar_to_i00_couplers_AWREADY;
  wire [0:0]xbar_to_i00_couplers_AWVALID;
  wire [0:0]xbar_to_i00_couplers_BREADY;
  wire [1:0]xbar_to_i00_couplers_BRESP;
  wire [0:0]xbar_to_i00_couplers_BVALID;
  wire [31:0]xbar_to_i00_couplers_RDATA;
  wire [0:0]xbar_to_i00_couplers_RREADY;
  wire [1:0]xbar_to_i00_couplers_RRESP;
  wire [0:0]xbar_to_i00_couplers_RVALID;
  wire [31:0]xbar_to_i00_couplers_WDATA;
  wire [0:0]xbar_to_i00_couplers_WREADY;
  wire [3:0]xbar_to_i00_couplers_WSTRB;
  wire [0:0]xbar_to_i00_couplers_WVALID;
  wire [63:32]xbar_to_i01_couplers_ARADDR;
  wire [5:3]xbar_to_i01_couplers_ARPROT;
  wire [0:0]xbar_to_i01_couplers_ARREADY;
  wire [1:1]xbar_to_i01_couplers_ARVALID;
  wire [63:32]xbar_to_i01_couplers_AWADDR;
  wire [5:3]xbar_to_i01_couplers_AWPROT;
  wire [0:0]xbar_to_i01_couplers_AWREADY;
  wire [1:1]xbar_to_i01_couplers_AWVALID;
  wire [1:1]xbar_to_i01_couplers_BREADY;
  wire [1:0]xbar_to_i01_couplers_BRESP;
  wire [0:0]xbar_to_i01_couplers_BVALID;
  wire [31:0]xbar_to_i01_couplers_RDATA;
  wire [1:1]xbar_to_i01_couplers_RREADY;
  wire [1:0]xbar_to_i01_couplers_RRESP;
  wire [0:0]xbar_to_i01_couplers_RVALID;
  wire [63:32]xbar_to_i01_couplers_WDATA;
  wire [0:0]xbar_to_i01_couplers_WREADY;
  wire [7:4]xbar_to_i01_couplers_WSTRB;
  wire [1:1]xbar_to_i01_couplers_WVALID;
  wire [95:64]xbar_to_i02_couplers_ARADDR;
  wire [8:6]xbar_to_i02_couplers_ARPROT;
  wire [0:0]xbar_to_i02_couplers_ARREADY;
  wire [2:2]xbar_to_i02_couplers_ARVALID;
  wire [95:64]xbar_to_i02_couplers_AWADDR;
  wire [8:6]xbar_to_i02_couplers_AWPROT;
  wire [0:0]xbar_to_i02_couplers_AWREADY;
  wire [2:2]xbar_to_i02_couplers_AWVALID;
  wire [2:2]xbar_to_i02_couplers_BREADY;
  wire [1:0]xbar_to_i02_couplers_BRESP;
  wire [0:0]xbar_to_i02_couplers_BVALID;
  wire [31:0]xbar_to_i02_couplers_RDATA;
  wire [2:2]xbar_to_i02_couplers_RREADY;
  wire [1:0]xbar_to_i02_couplers_RRESP;
  wire [0:0]xbar_to_i02_couplers_RVALID;
  wire [95:64]xbar_to_i02_couplers_WDATA;
  wire [0:0]xbar_to_i02_couplers_WREADY;
  wire [11:8]xbar_to_i02_couplers_WSTRB;
  wire [2:2]xbar_to_i02_couplers_WVALID;
  wire [23:0]NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED;
  wire [23:0]NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED;
  wire [20:0]NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED;
  wire [20:0]NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_cpu_interconnect_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_cpu_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_cpu_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_cpu_interconnect_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_cpu_interconnect_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_cpu_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_cpu_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_cpu_interconnect_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi_cpu_interconnect_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi_cpu_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_cpu_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi_cpu_interconnect_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_cpu_interconnect_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_cpu_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_cpu_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_cpu_interconnect_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_cpu_interconnect_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_cpu_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_cpu_interconnect_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_cpu_interconnect_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_cpu_interconnect_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_cpu_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_cpu_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_cpu_interconnect_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M06_AXI_arvalid[0] = m06_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M06_AXI_awvalid[0] = m06_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_axi_cpu_interconnect_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_axi_cpu_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_cpu_interconnect_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_axi_cpu_interconnect_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi_cpu_interconnect_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi_cpu_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_cpu_interconnect_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi_cpu_interconnect_WVALID;
  assign M08_AXI_araddr[31:0] = m08_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M08_AXI_arvalid[0] = m08_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M08_AXI_awaddr[31:0] = m08_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M08_AXI_awvalid[0] = m08_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_axi_cpu_interconnect_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_axi_cpu_interconnect_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_cpu_interconnect_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_axi_cpu_interconnect_WVALID;
  assign M09_AXI_araddr[31:0] = m09_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M09_AXI_awaddr[31:0] = m09_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_cpu_interconnect_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_cpu_interconnect_RREADY;
  assign M09_AXI_wdata[31:0] = m09_couplers_to_axi_cpu_interconnect_WDATA;
  assign M09_AXI_wstrb[3:0] = m09_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_cpu_interconnect_WVALID;
  assign M10_AXI_araddr[31:0] = m10_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M10_AXI_arburst[1:0] = m10_couplers_to_axi_cpu_interconnect_ARBURST;
  assign M10_AXI_arcache[3:0] = m10_couplers_to_axi_cpu_interconnect_ARCACHE;
  assign M10_AXI_arlen[7:0] = m10_couplers_to_axi_cpu_interconnect_ARLEN;
  assign M10_AXI_arlock[0] = m10_couplers_to_axi_cpu_interconnect_ARLOCK;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M10_AXI_arsize[2:0] = m10_couplers_to_axi_cpu_interconnect_ARSIZE;
  assign M10_AXI_arvalid = m10_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M10_AXI_awaddr[31:0] = m10_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M10_AXI_awburst[1:0] = m10_couplers_to_axi_cpu_interconnect_AWBURST;
  assign M10_AXI_awcache[3:0] = m10_couplers_to_axi_cpu_interconnect_AWCACHE;
  assign M10_AXI_awlen[7:0] = m10_couplers_to_axi_cpu_interconnect_AWLEN;
  assign M10_AXI_awlock[0] = m10_couplers_to_axi_cpu_interconnect_AWLOCK;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M10_AXI_awsize[2:0] = m10_couplers_to_axi_cpu_interconnect_AWSIZE;
  assign M10_AXI_awvalid = m10_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M10_AXI_bready = m10_couplers_to_axi_cpu_interconnect_BREADY;
  assign M10_AXI_rready = m10_couplers_to_axi_cpu_interconnect_RREADY;
  assign M10_AXI_wdata[31:0] = m10_couplers_to_axi_cpu_interconnect_WDATA;
  assign M10_AXI_wlast = m10_couplers_to_axi_cpu_interconnect_WLAST;
  assign M10_AXI_wstrb[3:0] = m10_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M10_AXI_wvalid = m10_couplers_to_axi_cpu_interconnect_WVALID;
  assign M11_AXI_araddr[31:0] = m11_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M11_AXI_arprot[2:0] = m11_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M11_AXI_arvalid = m11_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M11_AXI_awaddr[31:0] = m11_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M11_AXI_awprot[2:0] = m11_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M11_AXI_awvalid = m11_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M11_AXI_bready = m11_couplers_to_axi_cpu_interconnect_BREADY;
  assign M11_AXI_rready = m11_couplers_to_axi_cpu_interconnect_RREADY;
  assign M11_AXI_wdata[31:0] = m11_couplers_to_axi_cpu_interconnect_WDATA;
  assign M11_AXI_wstrb[3:0] = m11_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M11_AXI_wvalid = m11_couplers_to_axi_cpu_interconnect_WVALID;
  assign M12_AXI_araddr[31:0] = m12_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M12_AXI_arprot[2:0] = m12_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M12_AXI_arvalid = m12_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M12_AXI_awaddr[31:0] = m12_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M12_AXI_awprot[2:0] = m12_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M12_AXI_awvalid = m12_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M12_AXI_bready = m12_couplers_to_axi_cpu_interconnect_BREADY;
  assign M12_AXI_rready = m12_couplers_to_axi_cpu_interconnect_RREADY;
  assign M12_AXI_wdata[31:0] = m12_couplers_to_axi_cpu_interconnect_WDATA;
  assign M12_AXI_wstrb[3:0] = m12_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M12_AXI_wvalid = m12_couplers_to_axi_cpu_interconnect_WVALID;
  assign M13_AXI_araddr[31:0] = m13_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M13_AXI_arprot[2:0] = m13_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M13_AXI_arvalid = m13_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M13_AXI_awaddr[31:0] = m13_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M13_AXI_awprot[2:0] = m13_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M13_AXI_awvalid = m13_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M13_AXI_bready = m13_couplers_to_axi_cpu_interconnect_BREADY;
  assign M13_AXI_rready = m13_couplers_to_axi_cpu_interconnect_RREADY;
  assign M13_AXI_wdata[31:0] = m13_couplers_to_axi_cpu_interconnect_WDATA;
  assign M13_AXI_wstrb[3:0] = m13_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M13_AXI_wvalid = m13_couplers_to_axi_cpu_interconnect_WVALID;
  assign M14_AXI_araddr[31:0] = m14_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M14_AXI_arprot[2:0] = m14_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M14_AXI_arvalid = m14_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M14_AXI_awaddr[31:0] = m14_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M14_AXI_awprot[2:0] = m14_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M14_AXI_awvalid = m14_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M14_AXI_bready = m14_couplers_to_axi_cpu_interconnect_BREADY;
  assign M14_AXI_rready = m14_couplers_to_axi_cpu_interconnect_RREADY;
  assign M14_AXI_wdata[31:0] = m14_couplers_to_axi_cpu_interconnect_WDATA;
  assign M14_AXI_wstrb[3:0] = m14_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M14_AXI_wvalid = m14_couplers_to_axi_cpu_interconnect_WVALID;
  assign M15_AXI_araddr[31:0] = m15_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M15_AXI_arprot[2:0] = m15_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M15_AXI_arvalid = m15_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M15_AXI_awaddr[31:0] = m15_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M15_AXI_awprot[2:0] = m15_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M15_AXI_awvalid = m15_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M15_AXI_bready = m15_couplers_to_axi_cpu_interconnect_BREADY;
  assign M15_AXI_rready = m15_couplers_to_axi_cpu_interconnect_RREADY;
  assign M15_AXI_wdata[31:0] = m15_couplers_to_axi_cpu_interconnect_WDATA;
  assign M15_AXI_wstrb[3:0] = m15_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M15_AXI_wvalid = m15_couplers_to_axi_cpu_interconnect_WVALID;
  assign M16_AXI_araddr[31:0] = m16_couplers_to_axi_cpu_interconnect_ARADDR;
  assign M16_AXI_arprot[2:0] = m16_couplers_to_axi_cpu_interconnect_ARPROT;
  assign M16_AXI_arvalid = m16_couplers_to_axi_cpu_interconnect_ARVALID;
  assign M16_AXI_awaddr[31:0] = m16_couplers_to_axi_cpu_interconnect_AWADDR;
  assign M16_AXI_awprot[2:0] = m16_couplers_to_axi_cpu_interconnect_AWPROT;
  assign M16_AXI_awvalid = m16_couplers_to_axi_cpu_interconnect_AWVALID;
  assign M16_AXI_bready = m16_couplers_to_axi_cpu_interconnect_BREADY;
  assign M16_AXI_rready = m16_couplers_to_axi_cpu_interconnect_RREADY;
  assign M16_AXI_wdata[31:0] = m16_couplers_to_axi_cpu_interconnect_WDATA;
  assign M16_AXI_wstrb[3:0] = m16_couplers_to_axi_cpu_interconnect_WSTRB;
  assign M16_AXI_wvalid = m16_couplers_to_axi_cpu_interconnect_WVALID;
  assign S00_AXI_arready[0] = axi_cpu_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_cpu_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_cpu_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_cpu_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_cpu_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_cpu_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_cpu_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_cpu_interconnect_to_s00_couplers_WREADY;
  assign axi_cpu_interconnect_ACLK_net = ACLK;
  assign axi_cpu_interconnect_ARESETN_net = ARESETN;
  assign axi_cpu_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_cpu_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_cpu_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_cpu_interconnect_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_cpu_interconnect_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_cpu_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_cpu_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_cpu_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_cpu_interconnect_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_cpu_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_cpu_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_cpu_interconnect_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_cpu_interconnect_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_cpu_interconnect_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_cpu_interconnect_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_cpu_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_cpu_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_cpu_interconnect_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_cpu_interconnect_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_cpu_interconnect_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi_cpu_interconnect_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi_cpu_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi_cpu_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_cpu_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_cpu_interconnect_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi_cpu_interconnect_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi_cpu_interconnect_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_cpu_interconnect_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_cpu_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_cpu_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_cpu_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_cpu_interconnect_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_cpu_interconnect_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_cpu_interconnect_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_cpu_interconnect_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_cpu_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_cpu_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_cpu_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_cpu_interconnect_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_cpu_interconnect_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_cpu_interconnect_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_cpu_interconnect_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_cpu_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_cpu_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_cpu_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_cpu_interconnect_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_cpu_interconnect_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_cpu_interconnect_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_axi_cpu_interconnect_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_axi_cpu_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_axi_cpu_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_cpu_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_cpu_interconnect_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_axi_cpu_interconnect_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_axi_cpu_interconnect_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi_cpu_interconnect_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi_cpu_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_cpu_interconnect_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi_cpu_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_cpu_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_cpu_interconnect_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi_cpu_interconnect_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_axi_cpu_interconnect_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_axi_cpu_interconnect_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_axi_cpu_interconnect_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_cpu_interconnect_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_axi_cpu_interconnect_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_cpu_interconnect_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_cpu_interconnect_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_axi_cpu_interconnect_WREADY = M08_AXI_wready[0];
  assign m09_couplers_to_axi_cpu_interconnect_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_cpu_interconnect_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_cpu_interconnect_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_cpu_interconnect_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_cpu_interconnect_RDATA = M09_AXI_rdata[31:0];
  assign m09_couplers_to_axi_cpu_interconnect_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_cpu_interconnect_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_cpu_interconnect_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_cpu_interconnect_ARREADY = M10_AXI_arready;
  assign m10_couplers_to_axi_cpu_interconnect_AWREADY = M10_AXI_awready;
  assign m10_couplers_to_axi_cpu_interconnect_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_cpu_interconnect_BVALID = M10_AXI_bvalid;
  assign m10_couplers_to_axi_cpu_interconnect_RDATA = M10_AXI_rdata[31:0];
  assign m10_couplers_to_axi_cpu_interconnect_RLAST = M10_AXI_rlast;
  assign m10_couplers_to_axi_cpu_interconnect_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_cpu_interconnect_RVALID = M10_AXI_rvalid;
  assign m10_couplers_to_axi_cpu_interconnect_WREADY = M10_AXI_wready;
  assign m11_couplers_to_axi_cpu_interconnect_ARREADY = M11_AXI_arready;
  assign m11_couplers_to_axi_cpu_interconnect_AWREADY = M11_AXI_awready;
  assign m11_couplers_to_axi_cpu_interconnect_BRESP = M11_AXI_bresp[1:0];
  assign m11_couplers_to_axi_cpu_interconnect_BVALID = M11_AXI_bvalid;
  assign m11_couplers_to_axi_cpu_interconnect_RDATA = M11_AXI_rdata[31:0];
  assign m11_couplers_to_axi_cpu_interconnect_RRESP = M11_AXI_rresp[1:0];
  assign m11_couplers_to_axi_cpu_interconnect_RVALID = M11_AXI_rvalid;
  assign m11_couplers_to_axi_cpu_interconnect_WREADY = M11_AXI_wready;
  assign m12_couplers_to_axi_cpu_interconnect_ARREADY = M12_AXI_arready;
  assign m12_couplers_to_axi_cpu_interconnect_AWREADY = M12_AXI_awready;
  assign m12_couplers_to_axi_cpu_interconnect_BRESP = M12_AXI_bresp[1:0];
  assign m12_couplers_to_axi_cpu_interconnect_BVALID = M12_AXI_bvalid;
  assign m12_couplers_to_axi_cpu_interconnect_RDATA = M12_AXI_rdata[31:0];
  assign m12_couplers_to_axi_cpu_interconnect_RRESP = M12_AXI_rresp[1:0];
  assign m12_couplers_to_axi_cpu_interconnect_RVALID = M12_AXI_rvalid;
  assign m12_couplers_to_axi_cpu_interconnect_WREADY = M12_AXI_wready;
  assign m13_couplers_to_axi_cpu_interconnect_ARREADY = M13_AXI_arready;
  assign m13_couplers_to_axi_cpu_interconnect_AWREADY = M13_AXI_awready;
  assign m13_couplers_to_axi_cpu_interconnect_BRESP = M13_AXI_bresp[1:0];
  assign m13_couplers_to_axi_cpu_interconnect_BVALID = M13_AXI_bvalid;
  assign m13_couplers_to_axi_cpu_interconnect_RDATA = M13_AXI_rdata[31:0];
  assign m13_couplers_to_axi_cpu_interconnect_RRESP = M13_AXI_rresp[1:0];
  assign m13_couplers_to_axi_cpu_interconnect_RVALID = M13_AXI_rvalid;
  assign m13_couplers_to_axi_cpu_interconnect_WREADY = M13_AXI_wready;
  assign m14_couplers_to_axi_cpu_interconnect_ARREADY = M14_AXI_arready;
  assign m14_couplers_to_axi_cpu_interconnect_AWREADY = M14_AXI_awready;
  assign m14_couplers_to_axi_cpu_interconnect_BRESP = M14_AXI_bresp[1:0];
  assign m14_couplers_to_axi_cpu_interconnect_BVALID = M14_AXI_bvalid;
  assign m14_couplers_to_axi_cpu_interconnect_RDATA = M14_AXI_rdata[31:0];
  assign m14_couplers_to_axi_cpu_interconnect_RRESP = M14_AXI_rresp[1:0];
  assign m14_couplers_to_axi_cpu_interconnect_RVALID = M14_AXI_rvalid;
  assign m14_couplers_to_axi_cpu_interconnect_WREADY = M14_AXI_wready;
  assign m15_couplers_to_axi_cpu_interconnect_ARREADY = M15_AXI_arready;
  assign m15_couplers_to_axi_cpu_interconnect_AWREADY = M15_AXI_awready;
  assign m15_couplers_to_axi_cpu_interconnect_BRESP = M15_AXI_bresp[1:0];
  assign m15_couplers_to_axi_cpu_interconnect_BVALID = M15_AXI_bvalid;
  assign m15_couplers_to_axi_cpu_interconnect_RDATA = M15_AXI_rdata[31:0];
  assign m15_couplers_to_axi_cpu_interconnect_RRESP = M15_AXI_rresp[1:0];
  assign m15_couplers_to_axi_cpu_interconnect_RVALID = M15_AXI_rvalid;
  assign m15_couplers_to_axi_cpu_interconnect_WREADY = M15_AXI_wready;
  assign m16_couplers_to_axi_cpu_interconnect_ARREADY = M16_AXI_arready;
  assign m16_couplers_to_axi_cpu_interconnect_AWREADY = M16_AXI_awready;
  assign m16_couplers_to_axi_cpu_interconnect_BRESP = M16_AXI_bresp[1:0];
  assign m16_couplers_to_axi_cpu_interconnect_BVALID = M16_AXI_bvalid;
  assign m16_couplers_to_axi_cpu_interconnect_RDATA = M16_AXI_rdata[31:0];
  assign m16_couplers_to_axi_cpu_interconnect_RRESP = M16_AXI_rresp[1:0];
  assign m16_couplers_to_axi_cpu_interconnect_RVALID = M16_AXI_rvalid;
  assign m16_couplers_to_axi_cpu_interconnect_WREADY = M16_AXI_wready;
  i00_couplers_imp_KQSTVX i00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .M_AXI_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .M_AXI_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .M_AXI_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .M_AXI_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .M_AXI_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .M_AXI_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .M_AXI_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .M_AXI_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .M_AXI_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .M_AXI_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .M_AXI_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .M_AXI_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .M_AXI_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .M_AXI_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .M_AXI_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .M_AXI_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .M_AXI_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .M_AXI_wvalid(i00_couplers_to_tier2_xbar_0_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i00_couplers_RDATA),
        .S_AXI_rready(xbar_to_i00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i00_couplers_WDATA),
        .S_AXI_wready(xbar_to_i00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i00_couplers_WVALID));
  i01_couplers_imp_1RG3T24 i01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .M_AXI_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .M_AXI_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .M_AXI_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .M_AXI_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .M_AXI_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .M_AXI_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .M_AXI_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .M_AXI_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .M_AXI_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .M_AXI_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .M_AXI_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .M_AXI_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .M_AXI_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .M_AXI_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .M_AXI_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .M_AXI_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .M_AXI_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .M_AXI_wvalid(i01_couplers_to_tier2_xbar_1_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i01_couplers_RDATA),
        .S_AXI_rready(xbar_to_i01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i01_couplers_WDATA),
        .S_AXI_wready(xbar_to_i01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i01_couplers_WVALID));
  i02_couplers_imp_1KZKN5A i02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .M_AXI_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .M_AXI_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .M_AXI_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .M_AXI_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .M_AXI_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .M_AXI_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .M_AXI_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .M_AXI_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .M_AXI_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .M_AXI_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .M_AXI_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .M_AXI_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .M_AXI_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .M_AXI_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .M_AXI_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .M_AXI_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .M_AXI_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .M_AXI_wvalid(i02_couplers_to_tier2_xbar_2_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_i02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_i02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_i02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_i02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_i02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_i02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_i02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_i02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_i02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_i02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_i02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_i02_couplers_RDATA),
        .S_AXI_rready(xbar_to_i02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_i02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_i02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_i02_couplers_WDATA),
        .S_AXI_wready(xbar_to_i02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_i02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_i02_couplers_WVALID));
  m00_couplers_imp_I5GH1N m00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m00_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m00_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m00_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m00_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m00_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m00_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m00_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m00_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m00_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m00_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m00_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m00_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m00_couplers_WVALID));
  m01_couplers_imp_1UBGIXM m01_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m01_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m01_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m01_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m01_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m01_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m01_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m01_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m01_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m01_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m01_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m01_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m01_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m01_couplers_WVALID));
  m02_couplers_imp_1J5P44O m02_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m02_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m02_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m02_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m02_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m02_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m02_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m02_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m02_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m02_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m02_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m02_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m02_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m02_couplers_WVALID));
  m03_couplers_imp_T17W6X m03_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m03_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m03_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m03_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m03_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m03_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m03_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m03_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m03_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m03_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m03_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m03_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m03_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m03_couplers_WVALID));
  m04_couplers_imp_15FU5SC m04_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m04_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m04_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m04_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m04_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m04_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m04_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m04_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m04_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m04_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m04_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m04_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m04_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m04_couplers_WVALID));
  m05_couplers_imp_GFBASD m05_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m05_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m05_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m05_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m05_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m05_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m05_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m05_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m05_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m05_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m05_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m05_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m05_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m05_couplers_WVALID));
  m06_couplers_imp_59JXRJ m06_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m06_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_0_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m06_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_0_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m06_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m06_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m06_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m06_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m06_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m06_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m06_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m06_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m06_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m06_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m06_couplers_WVALID));
  m07_couplers_imp_1GBLMBI m07_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m07_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m07_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m07_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m07_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_0_to_m07_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_0_to_m07_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_0_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_0_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_0_to_m07_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_0_to_m07_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_0_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_0_to_m07_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_0_to_m07_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_0_to_m07_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_0_to_m07_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_0_to_m07_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_0_to_m07_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_0_to_m07_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_0_to_m07_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_0_to_m07_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_0_to_m07_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_0_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_0_to_m07_couplers_WVALID));
  m08_couplers_imp_E05M9W m08_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m08_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m08_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_1_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m08_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_1_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m08_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m08_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m08_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m08_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m08_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m08_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m08_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m08_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m08_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m08_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m08_couplers_WVALID));
  m09_couplers_imp_17AVPN9 m09_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m09_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arready(m09_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m09_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awready(m09_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m09_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m09_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m09_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m09_couplers_ARADDR),
        .S_AXI_arready(tier2_xbar_1_to_m09_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m09_couplers_AWADDR),
        .S_AXI_awready(tier2_xbar_1_to_m09_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m09_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m09_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m09_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m09_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m09_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m09_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m09_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m09_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m09_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m09_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m09_couplers_WVALID));
  m10_couplers_imp_1J5SI6G m10_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m10_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arburst(m10_couplers_to_axi_cpu_interconnect_ARBURST),
        .M_AXI_arcache(m10_couplers_to_axi_cpu_interconnect_ARCACHE),
        .M_AXI_arlen(m10_couplers_to_axi_cpu_interconnect_ARLEN),
        .M_AXI_arlock(m10_couplers_to_axi_cpu_interconnect_ARLOCK),
        .M_AXI_arprot(m10_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m10_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arsize(m10_couplers_to_axi_cpu_interconnect_ARSIZE),
        .M_AXI_arvalid(m10_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awburst(m10_couplers_to_axi_cpu_interconnect_AWBURST),
        .M_AXI_awcache(m10_couplers_to_axi_cpu_interconnect_AWCACHE),
        .M_AXI_awlen(m10_couplers_to_axi_cpu_interconnect_AWLEN),
        .M_AXI_awlock(m10_couplers_to_axi_cpu_interconnect_AWLOCK),
        .M_AXI_awprot(m10_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m10_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awsize(m10_couplers_to_axi_cpu_interconnect_AWSIZE),
        .M_AXI_awvalid(m10_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rlast(m10_couplers_to_axi_cpu_interconnect_RLAST),
        .M_AXI_rready(m10_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wlast(m10_couplers_to_axi_cpu_interconnect_WLAST),
        .M_AXI_wready(m10_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m10_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m10_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m10_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m10_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m10_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m10_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m10_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m10_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m10_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m10_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m10_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m10_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m10_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m10_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m10_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m10_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m10_couplers_WVALID));
  m11_couplers_imp_T19VO9 m11_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m11_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m11_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m11_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m11_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m11_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m11_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m11_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m11_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m11_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m11_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m11_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m11_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m11_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m11_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m11_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m11_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m11_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m11_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m11_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m11_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m11_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m11_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m11_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m11_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m11_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m11_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m11_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m11_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m11_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m11_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m11_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m11_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m11_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m11_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m11_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m11_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m11_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m11_couplers_WVALID));
  m12_couplers_imp_I5JGX7 m12_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m12_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m12_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m12_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m12_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m12_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m12_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m12_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m12_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m12_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m12_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m12_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m12_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m12_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m12_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m12_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m12_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m12_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m12_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m12_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m12_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m12_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m12_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m12_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m12_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m12_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m12_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m12_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m12_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m12_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m12_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m12_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m12_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m12_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m12_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m12_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m12_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m12_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m12_couplers_WVALID));
  m13_couplers_imp_1UBI48Q m13_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m13_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m13_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m13_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m13_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m13_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m13_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m13_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m13_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m13_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m13_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m13_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m13_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m13_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m13_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m13_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m13_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m13_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m13_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m13_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m13_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m13_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m13_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m13_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m13_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m13_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m13_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m13_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m13_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m13_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m13_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m13_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m13_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m13_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m13_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m13_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m13_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m13_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m13_couplers_WVALID));
  m14_couplers_imp_59NWCV m14_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m14_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m14_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m14_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m14_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m14_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m14_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m14_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m14_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m14_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m14_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m14_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m14_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m14_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m14_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m14_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m14_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m14_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m14_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m14_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_1_to_m14_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_1_to_m14_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_1_to_m14_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_1_to_m14_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_1_to_m14_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_1_to_m14_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_1_to_m14_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_1_to_m14_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_1_to_m14_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_1_to_m14_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_1_to_m14_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_1_to_m14_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_1_to_m14_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_1_to_m14_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_1_to_m14_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_1_to_m14_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_1_to_m14_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_1_to_m14_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_1_to_m14_couplers_WVALID));
  m15_couplers_imp_1GBO6CE m15_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m15_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m15_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m15_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m15_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m15_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m15_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m15_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m15_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m15_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m15_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m15_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m15_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m15_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m15_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m15_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m15_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m15_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m15_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m15_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m15_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m15_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m15_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m15_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m15_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m15_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m15_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m15_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m15_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m15_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m15_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m15_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m15_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m15_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m15_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m15_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m15_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m15_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m15_couplers_WVALID));
  m16_couplers_imp_15FXTD8 m16_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(m16_couplers_to_axi_cpu_interconnect_ARADDR),
        .M_AXI_arprot(m16_couplers_to_axi_cpu_interconnect_ARPROT),
        .M_AXI_arready(m16_couplers_to_axi_cpu_interconnect_ARREADY),
        .M_AXI_arvalid(m16_couplers_to_axi_cpu_interconnect_ARVALID),
        .M_AXI_awaddr(m16_couplers_to_axi_cpu_interconnect_AWADDR),
        .M_AXI_awprot(m16_couplers_to_axi_cpu_interconnect_AWPROT),
        .M_AXI_awready(m16_couplers_to_axi_cpu_interconnect_AWREADY),
        .M_AXI_awvalid(m16_couplers_to_axi_cpu_interconnect_AWVALID),
        .M_AXI_bready(m16_couplers_to_axi_cpu_interconnect_BREADY),
        .M_AXI_bresp(m16_couplers_to_axi_cpu_interconnect_BRESP),
        .M_AXI_bvalid(m16_couplers_to_axi_cpu_interconnect_BVALID),
        .M_AXI_rdata(m16_couplers_to_axi_cpu_interconnect_RDATA),
        .M_AXI_rready(m16_couplers_to_axi_cpu_interconnect_RREADY),
        .M_AXI_rresp(m16_couplers_to_axi_cpu_interconnect_RRESP),
        .M_AXI_rvalid(m16_couplers_to_axi_cpu_interconnect_RVALID),
        .M_AXI_wdata(m16_couplers_to_axi_cpu_interconnect_WDATA),
        .M_AXI_wready(m16_couplers_to_axi_cpu_interconnect_WREADY),
        .M_AXI_wstrb(m16_couplers_to_axi_cpu_interconnect_WSTRB),
        .M_AXI_wvalid(m16_couplers_to_axi_cpu_interconnect_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(tier2_xbar_2_to_m16_couplers_ARADDR),
        .S_AXI_arprot(tier2_xbar_2_to_m16_couplers_ARPROT),
        .S_AXI_arready(tier2_xbar_2_to_m16_couplers_ARREADY),
        .S_AXI_arvalid(tier2_xbar_2_to_m16_couplers_ARVALID),
        .S_AXI_awaddr(tier2_xbar_2_to_m16_couplers_AWADDR),
        .S_AXI_awprot(tier2_xbar_2_to_m16_couplers_AWPROT),
        .S_AXI_awready(tier2_xbar_2_to_m16_couplers_AWREADY),
        .S_AXI_awvalid(tier2_xbar_2_to_m16_couplers_AWVALID),
        .S_AXI_bready(tier2_xbar_2_to_m16_couplers_BREADY),
        .S_AXI_bresp(tier2_xbar_2_to_m16_couplers_BRESP),
        .S_AXI_bvalid(tier2_xbar_2_to_m16_couplers_BVALID),
        .S_AXI_rdata(tier2_xbar_2_to_m16_couplers_RDATA),
        .S_AXI_rready(tier2_xbar_2_to_m16_couplers_RREADY),
        .S_AXI_rresp(tier2_xbar_2_to_m16_couplers_RRESP),
        .S_AXI_rvalid(tier2_xbar_2_to_m16_couplers_RVALID),
        .S_AXI_wdata(tier2_xbar_2_to_m16_couplers_WDATA),
        .S_AXI_wready(tier2_xbar_2_to_m16_couplers_WREADY),
        .S_AXI_wstrb(tier2_xbar_2_to_m16_couplers_WSTRB),
        .S_AXI_wvalid(tier2_xbar_2_to_m16_couplers_WVALID));
  s00_couplers_imp_WZLZH6 s00_couplers
       (.M_ACLK(axi_cpu_interconnect_ACLK_net),
        .M_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_cpu_interconnect_ACLK_net),
        .S_ARESETN(axi_cpu_interconnect_ARESETN_net),
        .S_AXI_araddr(axi_cpu_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_cpu_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_cpu_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_cpu_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_cpu_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_cpu_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_cpu_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_cpu_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_cpu_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_cpu_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_cpu_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_cpu_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_cpu_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_cpu_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_cpu_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_cpu_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_cpu_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_cpu_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_cpu_interconnect_to_s00_couplers_WVALID));
  system_tier2_xbar_0_0 tier2_xbar_0
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_0_to_m07_couplers_ARADDR,tier2_xbar_0_to_m06_couplers_ARADDR,tier2_xbar_0_to_m05_couplers_ARADDR,tier2_xbar_0_to_m04_couplers_ARADDR,tier2_xbar_0_to_m03_couplers_ARADDR,tier2_xbar_0_to_m02_couplers_ARADDR,tier2_xbar_0_to_m01_couplers_ARADDR,tier2_xbar_0_to_m00_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_0_to_m07_couplers_ARPROT,NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED[20:0]}),
        .m_axi_arready({tier2_xbar_0_to_m07_couplers_ARREADY,tier2_xbar_0_to_m06_couplers_ARREADY,tier2_xbar_0_to_m05_couplers_ARREADY,tier2_xbar_0_to_m04_couplers_ARREADY,tier2_xbar_0_to_m03_couplers_ARREADY,tier2_xbar_0_to_m02_couplers_ARREADY,tier2_xbar_0_to_m01_couplers_ARREADY,tier2_xbar_0_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_0_to_m07_couplers_ARVALID,tier2_xbar_0_to_m06_couplers_ARVALID,tier2_xbar_0_to_m05_couplers_ARVALID,tier2_xbar_0_to_m04_couplers_ARVALID,tier2_xbar_0_to_m03_couplers_ARVALID,tier2_xbar_0_to_m02_couplers_ARVALID,tier2_xbar_0_to_m01_couplers_ARVALID,tier2_xbar_0_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_0_to_m07_couplers_AWADDR,tier2_xbar_0_to_m06_couplers_AWADDR,tier2_xbar_0_to_m05_couplers_AWADDR,tier2_xbar_0_to_m04_couplers_AWADDR,tier2_xbar_0_to_m03_couplers_AWADDR,tier2_xbar_0_to_m02_couplers_AWADDR,tier2_xbar_0_to_m01_couplers_AWADDR,tier2_xbar_0_to_m00_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_0_to_m07_couplers_AWPROT,NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED[20:0]}),
        .m_axi_awready({tier2_xbar_0_to_m07_couplers_AWREADY,tier2_xbar_0_to_m06_couplers_AWREADY,tier2_xbar_0_to_m05_couplers_AWREADY,tier2_xbar_0_to_m04_couplers_AWREADY,tier2_xbar_0_to_m03_couplers_AWREADY,tier2_xbar_0_to_m02_couplers_AWREADY,tier2_xbar_0_to_m01_couplers_AWREADY,tier2_xbar_0_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_0_to_m07_couplers_AWVALID,tier2_xbar_0_to_m06_couplers_AWVALID,tier2_xbar_0_to_m05_couplers_AWVALID,tier2_xbar_0_to_m04_couplers_AWVALID,tier2_xbar_0_to_m03_couplers_AWVALID,tier2_xbar_0_to_m02_couplers_AWVALID,tier2_xbar_0_to_m01_couplers_AWVALID,tier2_xbar_0_to_m00_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_0_to_m07_couplers_BREADY,tier2_xbar_0_to_m06_couplers_BREADY,tier2_xbar_0_to_m05_couplers_BREADY,tier2_xbar_0_to_m04_couplers_BREADY,tier2_xbar_0_to_m03_couplers_BREADY,tier2_xbar_0_to_m02_couplers_BREADY,tier2_xbar_0_to_m01_couplers_BREADY,tier2_xbar_0_to_m00_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_0_to_m07_couplers_BRESP,tier2_xbar_0_to_m06_couplers_BRESP,tier2_xbar_0_to_m05_couplers_BRESP,tier2_xbar_0_to_m04_couplers_BRESP,tier2_xbar_0_to_m03_couplers_BRESP,tier2_xbar_0_to_m02_couplers_BRESP,tier2_xbar_0_to_m01_couplers_BRESP,tier2_xbar_0_to_m00_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_0_to_m07_couplers_BVALID,tier2_xbar_0_to_m06_couplers_BVALID,tier2_xbar_0_to_m05_couplers_BVALID,tier2_xbar_0_to_m04_couplers_BVALID,tier2_xbar_0_to_m03_couplers_BVALID,tier2_xbar_0_to_m02_couplers_BVALID,tier2_xbar_0_to_m01_couplers_BVALID,tier2_xbar_0_to_m00_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_0_to_m07_couplers_RDATA,tier2_xbar_0_to_m06_couplers_RDATA,tier2_xbar_0_to_m05_couplers_RDATA,tier2_xbar_0_to_m04_couplers_RDATA,tier2_xbar_0_to_m03_couplers_RDATA,tier2_xbar_0_to_m02_couplers_RDATA,tier2_xbar_0_to_m01_couplers_RDATA,tier2_xbar_0_to_m00_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_0_to_m07_couplers_RREADY,tier2_xbar_0_to_m06_couplers_RREADY,tier2_xbar_0_to_m05_couplers_RREADY,tier2_xbar_0_to_m04_couplers_RREADY,tier2_xbar_0_to_m03_couplers_RREADY,tier2_xbar_0_to_m02_couplers_RREADY,tier2_xbar_0_to_m01_couplers_RREADY,tier2_xbar_0_to_m00_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_0_to_m07_couplers_RRESP,tier2_xbar_0_to_m06_couplers_RRESP,tier2_xbar_0_to_m05_couplers_RRESP,tier2_xbar_0_to_m04_couplers_RRESP,tier2_xbar_0_to_m03_couplers_RRESP,tier2_xbar_0_to_m02_couplers_RRESP,tier2_xbar_0_to_m01_couplers_RRESP,tier2_xbar_0_to_m00_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_0_to_m07_couplers_RVALID,tier2_xbar_0_to_m06_couplers_RVALID,tier2_xbar_0_to_m05_couplers_RVALID,tier2_xbar_0_to_m04_couplers_RVALID,tier2_xbar_0_to_m03_couplers_RVALID,tier2_xbar_0_to_m02_couplers_RVALID,tier2_xbar_0_to_m01_couplers_RVALID,tier2_xbar_0_to_m00_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_0_to_m07_couplers_WDATA,tier2_xbar_0_to_m06_couplers_WDATA,tier2_xbar_0_to_m05_couplers_WDATA,tier2_xbar_0_to_m04_couplers_WDATA,tier2_xbar_0_to_m03_couplers_WDATA,tier2_xbar_0_to_m02_couplers_WDATA,tier2_xbar_0_to_m01_couplers_WDATA,tier2_xbar_0_to_m00_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_0_to_m07_couplers_WREADY,tier2_xbar_0_to_m06_couplers_WREADY,tier2_xbar_0_to_m05_couplers_WREADY,tier2_xbar_0_to_m04_couplers_WREADY,tier2_xbar_0_to_m03_couplers_WREADY,tier2_xbar_0_to_m02_couplers_WREADY,tier2_xbar_0_to_m01_couplers_WREADY,tier2_xbar_0_to_m00_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_0_to_m07_couplers_WSTRB,tier2_xbar_0_to_m06_couplers_WSTRB,tier2_xbar_0_to_m05_couplers_WSTRB,tier2_xbar_0_to_m04_couplers_WSTRB,tier2_xbar_0_to_m03_couplers_WSTRB,tier2_xbar_0_to_m02_couplers_WSTRB,tier2_xbar_0_to_m01_couplers_WSTRB,tier2_xbar_0_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_0_to_m07_couplers_WVALID,tier2_xbar_0_to_m06_couplers_WVALID,tier2_xbar_0_to_m05_couplers_WVALID,tier2_xbar_0_to_m04_couplers_WVALID,tier2_xbar_0_to_m03_couplers_WVALID,tier2_xbar_0_to_m02_couplers_WVALID,tier2_xbar_0_to_m01_couplers_WVALID,tier2_xbar_0_to_m00_couplers_WVALID}),
        .s_axi_araddr(i00_couplers_to_tier2_xbar_0_ARADDR),
        .s_axi_arprot(i00_couplers_to_tier2_xbar_0_ARPROT),
        .s_axi_arready(i00_couplers_to_tier2_xbar_0_ARREADY),
        .s_axi_arvalid(i00_couplers_to_tier2_xbar_0_ARVALID),
        .s_axi_awaddr(i00_couplers_to_tier2_xbar_0_AWADDR),
        .s_axi_awprot(i00_couplers_to_tier2_xbar_0_AWPROT),
        .s_axi_awready(i00_couplers_to_tier2_xbar_0_AWREADY),
        .s_axi_awvalid(i00_couplers_to_tier2_xbar_0_AWVALID),
        .s_axi_bready(i00_couplers_to_tier2_xbar_0_BREADY),
        .s_axi_bresp(i00_couplers_to_tier2_xbar_0_BRESP),
        .s_axi_bvalid(i00_couplers_to_tier2_xbar_0_BVALID),
        .s_axi_rdata(i00_couplers_to_tier2_xbar_0_RDATA),
        .s_axi_rready(i00_couplers_to_tier2_xbar_0_RREADY),
        .s_axi_rresp(i00_couplers_to_tier2_xbar_0_RRESP),
        .s_axi_rvalid(i00_couplers_to_tier2_xbar_0_RVALID),
        .s_axi_wdata(i00_couplers_to_tier2_xbar_0_WDATA),
        .s_axi_wready(i00_couplers_to_tier2_xbar_0_WREADY),
        .s_axi_wstrb(i00_couplers_to_tier2_xbar_0_WSTRB),
        .s_axi_wvalid(i00_couplers_to_tier2_xbar_0_WVALID));
  system_tier2_xbar_1_0 tier2_xbar_1
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_1_to_m14_couplers_ARADDR,tier2_xbar_1_to_m13_couplers_ARADDR,tier2_xbar_1_to_m12_couplers_ARADDR,tier2_xbar_1_to_m11_couplers_ARADDR,tier2_xbar_1_to_m10_couplers_ARADDR,tier2_xbar_1_to_m09_couplers_ARADDR,tier2_xbar_1_to_m08_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_1_to_m14_couplers_ARPROT,tier2_xbar_1_to_m13_couplers_ARPROT,tier2_xbar_1_to_m12_couplers_ARPROT,tier2_xbar_1_to_m11_couplers_ARPROT,tier2_xbar_1_to_m10_couplers_ARPROT,NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED[5:0]}),
        .m_axi_arready({tier2_xbar_1_to_m14_couplers_ARREADY,tier2_xbar_1_to_m13_couplers_ARREADY,tier2_xbar_1_to_m12_couplers_ARREADY,tier2_xbar_1_to_m11_couplers_ARREADY,tier2_xbar_1_to_m10_couplers_ARREADY,tier2_xbar_1_to_m09_couplers_ARREADY,tier2_xbar_1_to_m08_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_1_to_m14_couplers_ARVALID,tier2_xbar_1_to_m13_couplers_ARVALID,tier2_xbar_1_to_m12_couplers_ARVALID,tier2_xbar_1_to_m11_couplers_ARVALID,tier2_xbar_1_to_m10_couplers_ARVALID,tier2_xbar_1_to_m09_couplers_ARVALID,tier2_xbar_1_to_m08_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_1_to_m14_couplers_AWADDR,tier2_xbar_1_to_m13_couplers_AWADDR,tier2_xbar_1_to_m12_couplers_AWADDR,tier2_xbar_1_to_m11_couplers_AWADDR,tier2_xbar_1_to_m10_couplers_AWADDR,tier2_xbar_1_to_m09_couplers_AWADDR,tier2_xbar_1_to_m08_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_1_to_m14_couplers_AWPROT,tier2_xbar_1_to_m13_couplers_AWPROT,tier2_xbar_1_to_m12_couplers_AWPROT,tier2_xbar_1_to_m11_couplers_AWPROT,tier2_xbar_1_to_m10_couplers_AWPROT,NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED[5:0]}),
        .m_axi_awready({tier2_xbar_1_to_m14_couplers_AWREADY,tier2_xbar_1_to_m13_couplers_AWREADY,tier2_xbar_1_to_m12_couplers_AWREADY,tier2_xbar_1_to_m11_couplers_AWREADY,tier2_xbar_1_to_m10_couplers_AWREADY,tier2_xbar_1_to_m09_couplers_AWREADY,tier2_xbar_1_to_m08_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_1_to_m14_couplers_AWVALID,tier2_xbar_1_to_m13_couplers_AWVALID,tier2_xbar_1_to_m12_couplers_AWVALID,tier2_xbar_1_to_m11_couplers_AWVALID,tier2_xbar_1_to_m10_couplers_AWVALID,tier2_xbar_1_to_m09_couplers_AWVALID,tier2_xbar_1_to_m08_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_1_to_m14_couplers_BREADY,tier2_xbar_1_to_m13_couplers_BREADY,tier2_xbar_1_to_m12_couplers_BREADY,tier2_xbar_1_to_m11_couplers_BREADY,tier2_xbar_1_to_m10_couplers_BREADY,tier2_xbar_1_to_m09_couplers_BREADY,tier2_xbar_1_to_m08_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_1_to_m14_couplers_BRESP,tier2_xbar_1_to_m13_couplers_BRESP,tier2_xbar_1_to_m12_couplers_BRESP,tier2_xbar_1_to_m11_couplers_BRESP,tier2_xbar_1_to_m10_couplers_BRESP,tier2_xbar_1_to_m09_couplers_BRESP,tier2_xbar_1_to_m08_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_1_to_m14_couplers_BVALID,tier2_xbar_1_to_m13_couplers_BVALID,tier2_xbar_1_to_m12_couplers_BVALID,tier2_xbar_1_to_m11_couplers_BVALID,tier2_xbar_1_to_m10_couplers_BVALID,tier2_xbar_1_to_m09_couplers_BVALID,tier2_xbar_1_to_m08_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_1_to_m14_couplers_RDATA,tier2_xbar_1_to_m13_couplers_RDATA,tier2_xbar_1_to_m12_couplers_RDATA,tier2_xbar_1_to_m11_couplers_RDATA,tier2_xbar_1_to_m10_couplers_RDATA,tier2_xbar_1_to_m09_couplers_RDATA,tier2_xbar_1_to_m08_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_1_to_m14_couplers_RREADY,tier2_xbar_1_to_m13_couplers_RREADY,tier2_xbar_1_to_m12_couplers_RREADY,tier2_xbar_1_to_m11_couplers_RREADY,tier2_xbar_1_to_m10_couplers_RREADY,tier2_xbar_1_to_m09_couplers_RREADY,tier2_xbar_1_to_m08_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_1_to_m14_couplers_RRESP,tier2_xbar_1_to_m13_couplers_RRESP,tier2_xbar_1_to_m12_couplers_RRESP,tier2_xbar_1_to_m11_couplers_RRESP,tier2_xbar_1_to_m10_couplers_RRESP,tier2_xbar_1_to_m09_couplers_RRESP,tier2_xbar_1_to_m08_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_1_to_m14_couplers_RVALID,tier2_xbar_1_to_m13_couplers_RVALID,tier2_xbar_1_to_m12_couplers_RVALID,tier2_xbar_1_to_m11_couplers_RVALID,tier2_xbar_1_to_m10_couplers_RVALID,tier2_xbar_1_to_m09_couplers_RVALID,tier2_xbar_1_to_m08_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_1_to_m14_couplers_WDATA,tier2_xbar_1_to_m13_couplers_WDATA,tier2_xbar_1_to_m12_couplers_WDATA,tier2_xbar_1_to_m11_couplers_WDATA,tier2_xbar_1_to_m10_couplers_WDATA,tier2_xbar_1_to_m09_couplers_WDATA,tier2_xbar_1_to_m08_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_1_to_m14_couplers_WREADY,tier2_xbar_1_to_m13_couplers_WREADY,tier2_xbar_1_to_m12_couplers_WREADY,tier2_xbar_1_to_m11_couplers_WREADY,tier2_xbar_1_to_m10_couplers_WREADY,tier2_xbar_1_to_m09_couplers_WREADY,tier2_xbar_1_to_m08_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_1_to_m14_couplers_WSTRB,tier2_xbar_1_to_m13_couplers_WSTRB,tier2_xbar_1_to_m12_couplers_WSTRB,tier2_xbar_1_to_m11_couplers_WSTRB,tier2_xbar_1_to_m10_couplers_WSTRB,tier2_xbar_1_to_m09_couplers_WSTRB,tier2_xbar_1_to_m08_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_1_to_m14_couplers_WVALID,tier2_xbar_1_to_m13_couplers_WVALID,tier2_xbar_1_to_m12_couplers_WVALID,tier2_xbar_1_to_m11_couplers_WVALID,tier2_xbar_1_to_m10_couplers_WVALID,tier2_xbar_1_to_m09_couplers_WVALID,tier2_xbar_1_to_m08_couplers_WVALID}),
        .s_axi_araddr(i01_couplers_to_tier2_xbar_1_ARADDR),
        .s_axi_arprot(i01_couplers_to_tier2_xbar_1_ARPROT),
        .s_axi_arready(i01_couplers_to_tier2_xbar_1_ARREADY),
        .s_axi_arvalid(i01_couplers_to_tier2_xbar_1_ARVALID),
        .s_axi_awaddr(i01_couplers_to_tier2_xbar_1_AWADDR),
        .s_axi_awprot(i01_couplers_to_tier2_xbar_1_AWPROT),
        .s_axi_awready(i01_couplers_to_tier2_xbar_1_AWREADY),
        .s_axi_awvalid(i01_couplers_to_tier2_xbar_1_AWVALID),
        .s_axi_bready(i01_couplers_to_tier2_xbar_1_BREADY),
        .s_axi_bresp(i01_couplers_to_tier2_xbar_1_BRESP),
        .s_axi_bvalid(i01_couplers_to_tier2_xbar_1_BVALID),
        .s_axi_rdata(i01_couplers_to_tier2_xbar_1_RDATA),
        .s_axi_rready(i01_couplers_to_tier2_xbar_1_RREADY),
        .s_axi_rresp(i01_couplers_to_tier2_xbar_1_RRESP),
        .s_axi_rvalid(i01_couplers_to_tier2_xbar_1_RVALID),
        .s_axi_wdata(i01_couplers_to_tier2_xbar_1_WDATA),
        .s_axi_wready(i01_couplers_to_tier2_xbar_1_WREADY),
        .s_axi_wstrb(i01_couplers_to_tier2_xbar_1_WSTRB),
        .s_axi_wvalid(i01_couplers_to_tier2_xbar_1_WVALID));
  system_tier2_xbar_2_0 tier2_xbar_2
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({tier2_xbar_2_to_m16_couplers_ARADDR,tier2_xbar_2_to_m15_couplers_ARADDR}),
        .m_axi_arprot({tier2_xbar_2_to_m16_couplers_ARPROT,tier2_xbar_2_to_m15_couplers_ARPROT}),
        .m_axi_arready({tier2_xbar_2_to_m16_couplers_ARREADY,tier2_xbar_2_to_m15_couplers_ARREADY}),
        .m_axi_arvalid({tier2_xbar_2_to_m16_couplers_ARVALID,tier2_xbar_2_to_m15_couplers_ARVALID}),
        .m_axi_awaddr({tier2_xbar_2_to_m16_couplers_AWADDR,tier2_xbar_2_to_m15_couplers_AWADDR}),
        .m_axi_awprot({tier2_xbar_2_to_m16_couplers_AWPROT,tier2_xbar_2_to_m15_couplers_AWPROT}),
        .m_axi_awready({tier2_xbar_2_to_m16_couplers_AWREADY,tier2_xbar_2_to_m15_couplers_AWREADY}),
        .m_axi_awvalid({tier2_xbar_2_to_m16_couplers_AWVALID,tier2_xbar_2_to_m15_couplers_AWVALID}),
        .m_axi_bready({tier2_xbar_2_to_m16_couplers_BREADY,tier2_xbar_2_to_m15_couplers_BREADY}),
        .m_axi_bresp({tier2_xbar_2_to_m16_couplers_BRESP,tier2_xbar_2_to_m15_couplers_BRESP}),
        .m_axi_bvalid({tier2_xbar_2_to_m16_couplers_BVALID,tier2_xbar_2_to_m15_couplers_BVALID}),
        .m_axi_rdata({tier2_xbar_2_to_m16_couplers_RDATA,tier2_xbar_2_to_m15_couplers_RDATA}),
        .m_axi_rready({tier2_xbar_2_to_m16_couplers_RREADY,tier2_xbar_2_to_m15_couplers_RREADY}),
        .m_axi_rresp({tier2_xbar_2_to_m16_couplers_RRESP,tier2_xbar_2_to_m15_couplers_RRESP}),
        .m_axi_rvalid({tier2_xbar_2_to_m16_couplers_RVALID,tier2_xbar_2_to_m15_couplers_RVALID}),
        .m_axi_wdata({tier2_xbar_2_to_m16_couplers_WDATA,tier2_xbar_2_to_m15_couplers_WDATA}),
        .m_axi_wready({tier2_xbar_2_to_m16_couplers_WREADY,tier2_xbar_2_to_m15_couplers_WREADY}),
        .m_axi_wstrb({tier2_xbar_2_to_m16_couplers_WSTRB,tier2_xbar_2_to_m15_couplers_WSTRB}),
        .m_axi_wvalid({tier2_xbar_2_to_m16_couplers_WVALID,tier2_xbar_2_to_m15_couplers_WVALID}),
        .s_axi_araddr(i02_couplers_to_tier2_xbar_2_ARADDR),
        .s_axi_arprot(i02_couplers_to_tier2_xbar_2_ARPROT),
        .s_axi_arready(i02_couplers_to_tier2_xbar_2_ARREADY),
        .s_axi_arvalid(i02_couplers_to_tier2_xbar_2_ARVALID),
        .s_axi_awaddr(i02_couplers_to_tier2_xbar_2_AWADDR),
        .s_axi_awprot(i02_couplers_to_tier2_xbar_2_AWPROT),
        .s_axi_awready(i02_couplers_to_tier2_xbar_2_AWREADY),
        .s_axi_awvalid(i02_couplers_to_tier2_xbar_2_AWVALID),
        .s_axi_bready(i02_couplers_to_tier2_xbar_2_BREADY),
        .s_axi_bresp(i02_couplers_to_tier2_xbar_2_BRESP),
        .s_axi_bvalid(i02_couplers_to_tier2_xbar_2_BVALID),
        .s_axi_rdata(i02_couplers_to_tier2_xbar_2_RDATA),
        .s_axi_rready(i02_couplers_to_tier2_xbar_2_RREADY),
        .s_axi_rresp(i02_couplers_to_tier2_xbar_2_RRESP),
        .s_axi_rvalid(i02_couplers_to_tier2_xbar_2_RVALID),
        .s_axi_wdata(i02_couplers_to_tier2_xbar_2_WDATA),
        .s_axi_wready(i02_couplers_to_tier2_xbar_2_WREADY),
        .s_axi_wstrb(i02_couplers_to_tier2_xbar_2_WSTRB),
        .s_axi_wvalid(i02_couplers_to_tier2_xbar_2_WVALID));
  system_xbar_0 xbar
       (.aclk(axi_cpu_interconnect_ACLK_net),
        .aresetn(axi_cpu_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_i02_couplers_ARADDR,xbar_to_i01_couplers_ARADDR,xbar_to_i00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_i02_couplers_ARPROT,xbar_to_i01_couplers_ARPROT,xbar_to_i00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_i02_couplers_ARREADY,xbar_to_i01_couplers_ARREADY,xbar_to_i00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_i02_couplers_ARVALID,xbar_to_i01_couplers_ARVALID,xbar_to_i00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_i02_couplers_AWADDR,xbar_to_i01_couplers_AWADDR,xbar_to_i00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_i02_couplers_AWPROT,xbar_to_i01_couplers_AWPROT,xbar_to_i00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_i02_couplers_AWREADY,xbar_to_i01_couplers_AWREADY,xbar_to_i00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_i02_couplers_AWVALID,xbar_to_i01_couplers_AWVALID,xbar_to_i00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_i02_couplers_BREADY,xbar_to_i01_couplers_BREADY,xbar_to_i00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_i02_couplers_BRESP,xbar_to_i01_couplers_BRESP,xbar_to_i00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_i02_couplers_BVALID,xbar_to_i01_couplers_BVALID,xbar_to_i00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_i02_couplers_RDATA,xbar_to_i01_couplers_RDATA,xbar_to_i00_couplers_RDATA}),
        .m_axi_rready({xbar_to_i02_couplers_RREADY,xbar_to_i01_couplers_RREADY,xbar_to_i00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_i02_couplers_RRESP,xbar_to_i01_couplers_RRESP,xbar_to_i00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_i02_couplers_RVALID,xbar_to_i01_couplers_RVALID,xbar_to_i00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_i02_couplers_WDATA,xbar_to_i01_couplers_WDATA,xbar_to_i00_couplers_WDATA}),
        .m_axi_wready({xbar_to_i02_couplers_WREADY,xbar_to_i01_couplers_WREADY,xbar_to_i00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_i02_couplers_WSTRB,xbar_to_i01_couplers_WSTRB,xbar_to_i00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_i02_couplers_WVALID,xbar_to_i01_couplers_WVALID,xbar_to_i00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
