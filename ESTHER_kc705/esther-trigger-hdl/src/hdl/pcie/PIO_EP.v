//-----------------------------------------------------------------------------
//
// (c) Copyright 2010-2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
// Project    : Series-7 Integrated Block for PCI Express
// File       : PIO_EP.v
// Version    : 3.3
//
// Description: Endpoint Programmed I/O module.
//              Consists of Receive and Transmit modules and a Memory Aperture
//
//------------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module PIO_EP #(
  parameter C_DATA_WIDTH = 64,            // RX/TX interface data width

  // Do not override parameters below this line
  parameter KEEP_WIDTH = C_DATA_WIDTH / 8,              // TSTRB width
  parameter TCQ        = 1
) (

  input                         clk,
  input                         rst_n,

  // AXIS TX
  input                         s_axis_tx_tready,
  output  [C_DATA_WIDTH-1:0]    s_axis_tx_tdata,
  output  [KEEP_WIDTH-1:0]      s_axis_tx_tkeep,
  output                        s_axis_tx_tlast,
  output                        s_axis_tx_tvalid,
  output                        tx_src_dsc,



  //AXIS RX
  input   [C_DATA_WIDTH-1:0]    m_axis_rx_tdata,
  input   [KEEP_WIDTH-1:0]      m_axis_rx_tkeep,
  input                         m_axis_rx_tlast,
  input                         m_axis_rx_tvalid,
  output                        m_axis_rx_tready,
  input   [21:0]                m_axis_rx_tuser,

  output                        req_compl,
  output                        compl_done,

// For DMA
  output                          cfg_interrupt,

  input   [15:0]                cfg_completer_id,

    // DMA extension
  input  [5:0]                  tx_buf_av,
  input                         cfg_interrupt_rdy,
  input  		[23:0] trigger_status,
  output 		[31:0]  control_reg,
  output 		[63:0]  trigger_level,

 // ADC Interface
  input   [63:0]   adc_data,
  input   adc_data_en,
  input   adc_data_clk,
  
  input [7:0] dma_status,
    input cfg_interrupt_n,
  input [7:0] dma_tlp_payload_size,
  input [31:0] dma_host_addr_tx,
  input [C_DATA_WIDTH-1:0] dma_data,
  input dma_tlp_req,
  
  output s_axis_tx_tvalid_n,
    output cfg_interrupt_rdy_n,
    output fifo_rd_en,
    output dma_tlp_compl_done,
    output [5:0] tx_buf_av_n,
    
     output [10:0] rd_addr,
     output [3:0] rd_be,
     output [10:0] wr_addr,
     output [7:0] wr_be,
     output [31:0] wr_data,
     output wr_en,
     
      input [31:0] rd_data,
      input wr_busy
  
);

assign cfg_interrupt=cfg_interrupt_n;
assign s_axis_tx_tvalid_n=s_axis_tx_tvalid;
assign cfg_interrupt_rdy_n=cfg_interrupt_rdy;
assign tx_buf_av_n[5:0]=tx_buf_av[5:0];
    // Local wires

 //   wire  [10:0]      rd_addr;
  //  wire  [3:0]       rd_be;
  //  wire  [31:0]      rd_data;

 //   wire  [10:0]      wr_addr;
//    wire  [7:0]       wr_be;
 //   wire  [31:0]      wr_data;
 //   wire              wr_en;
 //   wire              wr_busy;

    wire              req_compl_int;
    wire              req_compl_wd;
    wire              compl_done_int;

    wire  [2:0]       req_tc;
    wire              req_td;
    wire              req_ep;
    wire  [1:0]       req_attr;
    wire  [9:0]       req_len;
    wire  [15:0]      req_rid;
    wire  [7:0]       req_tag;
    wire  [7:0]       req_be;
    wire  [12:0]      req_addr;

   
    wire [31:0] status_reg,  control_reg_i, dma_ha_ch0; // From Pcie regs
    
   // wire [7:0] dma_status;
    
    
    wire [20:0] dma_size_i;

  //  wire  [31:0]    dma_host_addr_tx;
 //   wire  [7:0]     dma_tlp_payload_size;
  //  wire [31:0] host_addr_tx;
  //  wire [63:0] dma_data;
   // wire dma_tlp_req;
   
   
   // wire dma_tlp_compl_done;
  
    wire [63:0]  data_ch0;
 //   wire fifo_rd_en;
    assign control_reg = control_reg_i;

    assign status_reg ={trigger_status, dma_status};

  /* PIO_EP_SHAPI_REGS  #(
        .TCQ( TCQ )
    ) EP_REGS_inst (

        .clk(clk),               // I
        .rst_n(rst_n),           // I

        // Read Port

        .rd_addr(rd_addr),     // I [10:0]
        .rd_be(rd_be),         // I [3:0]
        .rd_data(rd_data),     // O [31:0]

        // Write Port

        .wr_addr(wr_addr),     // I [10:0]
        .wr_be(wr_be),         // I [7:0]
        .wr_data(wr_data),     // I [31:0]
        .wr_en(wr_en),         // I
          .rd_addr(rd_addr),
          .wr_addr(wr_addr),
          .rd_be(rd_be),
          .wr_be(wr_be),
          .wr_data(wr_data),
          .wr_en(wr_en).wr_busy(wr_busy),      // O

        .status_reg(status_reg),  // I
        .control_reg(control_reg_i), // O
        .trigger_level(trigger_level),
        .dma_size(dma_size_i), // O [20:0]
        .dma_ha_ch0(dma_ha_ch0), // O
        .dma_ha_ch1() // O
    );
*/
    //
    // Local-Link Receive Controller
    //

  PIO_RX_ENGINE #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .KEEP_WIDTH( KEEP_WIDTH ),
    .TCQ( TCQ )

  ) EP_RX_inst (

    .clk(clk),                              // I
    .rst_n(rst_n),                          // I

    // AXIS RX
    .m_axis_rx_tdata( m_axis_rx_tdata ),    // I
    .m_axis_rx_tkeep( m_axis_rx_tkeep ),    // I
    .m_axis_rx_tlast( m_axis_rx_tlast ),    // I
    .m_axis_rx_tvalid( m_axis_rx_tvalid ),  // I
    .m_axis_rx_tready( m_axis_rx_tready ),  // O
    .m_axis_rx_tuser ( m_axis_rx_tuser ),   // I

    // Handshake with Tx engine
    .req_compl(req_compl_int),              // O
    .req_compl_wd(req_compl_wd),            // O
    .compl_done(compl_done_int),            // I

    .req_tc(req_tc),                        // O [2:0]
    .req_td(req_td),                        // O
    .req_ep(req_ep),                        // O
    .req_attr(req_attr),                    // O [1:0]
    .req_len(req_len),                      // O [9:0]
    .req_rid(req_rid),                      // O [15:0]
    .req_tag(req_tag),                      // O [7:0]
    .req_be(req_be),                        // O [7:0]
    .req_addr(req_addr),                    // O [12:0]

    // Memory Write Port
    .wr_addr(wr_addr),                      // O [10:0]
    .wr_be(wr_be),                          // O [7:0]
    .wr_data(wr_data),                      // O [31:0]
    .wr_en(wr_en),                          // O
    .wr_busy(wr_busy)                       // I

  );

    //
    // Local-Link Transmit Controller
    //

  PIO_DMA_TX_ENGINE #(
    .C_DATA_WIDTH( C_DATA_WIDTH ),
    .KEEP_WIDTH( KEEP_WIDTH ),
    .TCQ( TCQ )
  ) EP_DMA_TX_inst (

    .clk(clk),                                  // I
    .rst_n(rst_n),                              // I

    // AXIS Tx
    .s_axis_tx_tready( s_axis_tx_tready ),      // I
    .s_axis_tx_tdata( s_axis_tx_tdata ),        // O
    .s_axis_tx_tkeep( s_axis_tx_tkeep ),        // O
    .s_axis_tx_tlast( s_axis_tx_tlast ),        // O
    .s_axis_tx_tvalid( s_axis_tx_tvalid ),      // O
    .tx_src_dsc( tx_src_dsc ),                  // O

    // Handshake with Rx engine
    .req_compl(req_compl_int),                // I
    .req_compl_wd(req_compl_wd),              // I
    .compl_done(compl_done_int),                // 0

    .req_tc(req_tc),                          // I [2:0]
    .req_td(req_td),                          // I
    .req_ep(req_ep),                          // I
    .req_attr(req_attr),                      // I [1:0]
    .req_len(req_len),                        // I [9:0]
    .req_rid(req_rid),                        // I [15:0]
    .req_tag(req_tag),                        // I [7:0]
    .req_be(req_be),                          // I [7:0]
    .req_addr(req_addr),                      // I [12:0]

    // Read Port

    .rd_addr(rd_addr),                        // O [10:0]
    .rd_be(rd_be),                            // O [3:0]
    .rd_data(rd_data),                        // I [31:0]

    .completer_id(cfg_completer_id),           // I [15:0]


    .dma_data(dma_data), // I  [63:0]
    .dma_host_addr(dma_host_addr_tx), // I [31:0]
    .dma_tlp_req(dma_tlp_req),  // I
    .dma_tlp_compl_done(dma_tlp_compl_done), // O
    .fifo_rd_en(fifo_rd_en),  // O
    .dma_tlp_payload_size(dma_tlp_payload_size) // I [7:0] in DW

    );

  /*  pci_dma_engine #(
        .C_DATA_WIDTH( C_DATA_WIDTH ),
        .KEEP_WIDTH( KEEP_WIDTH ),
        .TCQ( TCQ )
    ) pci_dma_engine_inst (

        .pcie_user_clk(clk),                                  // I
        .pcie_user_rst_n(rst_n),                              // I
        .s_axis_tx_tvalid(s_axis_tx_tvalid), //
        .tx_buf_av(tx_buf_av),   // I [5:0]
        .cfg_interrupt    (cfg_interrupt),      // O
        .cfg_interrupt_rdy (cfg_interrupt_rdy), // I

        .control_reg(control_reg_i),     // I [31:0]
        .dma_status(dma_status),       // O [7:0]
        .dma_compl_acq(1'b0),  // I dma_compl_acq
        .dma_size(dma_size_i), // I [31:0]
        .dma_ha_ch0(dma_ha_ch0),  // I [31:0]
        //.dma_ha_ch1(dma_ha_ch1),  // I [31:0]

        .dma_tlp_payload_size(dma_tlp_payload_size), // O [7:0] in DW
        .host_addr_tx(dma_host_addr_tx),
        .dma_data_tx(dma_data),
        .fifo_rd_en(fifo_rd_en),  // I
        .tlp_req(dma_tlp_req),  //O
        .dma_tlp_compl_done(dma_tlp_compl_done),  //I
        //.dma_pkt_cnt(dma_pkt_cnt), // O
        .adc_data_clk(adc_data_clk),       // I
        .adc_data(adc_data),        // I adc_data [31:0]
        .adc_data_en(adc_data_en),       // I
        .data_ready_ch0() //O data_ready_ch0
);

*/
  assign req_compl  = req_compl_int;
  assign compl_done = compl_done_int;

endmodule // PIO_EP