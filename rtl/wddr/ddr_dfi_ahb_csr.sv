
/*********************************************************************************
Copyright (c) 2021 Wavious LLC

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*********************************************************************************/

`include "ddr_global_define.vh"
`include "ddr_project_define.vh"
`include "ddr_dfi_csr_defs.vh"

import ddr_global_pkg::*;

module ddr_dfi_ahb_csr #(
   parameter AWIDTH = 32,
   parameter DWIDTH = 32
) (

   input   logic                i_hclk,
   input   logic                i_hreset,
   input   logic [AWIDTH-1:0]   i_haddr,
   input   logic                i_hwrite,
   input   logic                i_hsel,
   input   logic [DWIDTH-1:0]   i_hwdata,
   input   logic [1:0]          i_htrans,
   input   logic [2:0]          i_hsize,
   input   logic [2:0]          i_hburst,
   input   logic                i_hreadyin,
   output  logic                o_hready,
   output  logic [DWIDTH-1:0]   o_hrdata,
   output  logic [1:0]          o_hresp,
   output  logic [`DDR_DFI_TOP_0_CFG_RANGE] o_dfi_top_0_cfg,
   output  logic [`DDR_DFI_DATA_BIT_ENABLE_CFG_RANGE] o_dfi_data_bit_enable_cfg,
   output  logic [`DDR_DFI_PHYFREQ_RANGE_CFG_RANGE] o_dfi_phyfreq_range_cfg,
   output  logic [`DDR_DFI_STATUS_IF_CFG_RANGE] o_dfi_status_if_cfg,
   input   logic [`DDR_DFI_STATUS_IF_STA_RANGE] i_dfi_status_if_sta,
   output  logic [`DDR_DFI_STATUS_IF_EVENT_0_CFG_RANGE] o_dfi_status_if_event_0_cfg,
   output  logic [`DDR_DFI_STATUS_IF_EVENT_1_CFG_RANGE] o_dfi_status_if_event_1_cfg,
   output  logic [`DDR_DFI_CTRLUPD_IF_CFG_RANGE] o_dfi_ctrlupd_if_cfg,
   input   logic [`DDR_DFI_CTRLUPD_IF_STA_RANGE] i_dfi_ctrlupd_if_sta,
   output  logic [`DDR_DFI_CTRLUPD_IF_EVENT_0_CFG_RANGE] o_dfi_ctrlupd_if_event_0_cfg,
   output  logic [`DDR_DFI_CTRLUPD_IF_EVENT_1_CFG_RANGE] o_dfi_ctrlupd_if_event_1_cfg,
   output  logic [`DDR_DFI_LP_CTRL_IF_CFG_RANGE] o_dfi_lp_ctrl_if_cfg,
   input   logic [`DDR_DFI_LP_CTRL_IF_STA_RANGE] i_dfi_lp_ctrl_if_sta,
   output  logic [`DDR_DFI_LP_CTRL_IF_EVENT_0_CFG_RANGE] o_dfi_lp_ctrl_if_event_0_cfg,
   output  logic [`DDR_DFI_LP_CTRL_IF_EVENT_1_CFG_RANGE] o_dfi_lp_ctrl_if_event_1_cfg,
   output  logic [`DDR_DFI_LP_DATA_IF_CFG_RANGE] o_dfi_lp_data_if_cfg,
   input   logic [`DDR_DFI_LP_DATA_IF_STA_RANGE] i_dfi_lp_data_if_sta,
   output  logic [`DDR_DFI_LP_DATA_IF_EVENT_0_CFG_RANGE] o_dfi_lp_data_if_event_0_cfg,
   output  logic [`DDR_DFI_LP_DATA_IF_EVENT_1_CFG_RANGE] o_dfi_lp_data_if_event_1_cfg,
   output  logic [`DDR_DFI_PHYUPD_IF_CFG_RANGE] o_dfi_phyupd_if_cfg,
   input   logic [`DDR_DFI_PHYUPD_IF_STA_RANGE] i_dfi_phyupd_if_sta,
   output  logic [`DDR_DFI_PHYMSTR_IF_CFG_RANGE] o_dfi_phymstr_if_cfg,
   input   logic [`DDR_DFI_PHYMSTR_IF_STA_RANGE] i_dfi_phymstr_if_sta,
   output  logic [`DDR_DFI_DEBUG_CFG_RANGE] o_dfi_debug_cfg
);

   logic                slv_write;
   logic                slv_read;
   logic                slv_error;
   logic [AWIDTH-1:0]   slv_addr;
   logic [DWIDTH-1:0]   slv_wdata;
   logic [DWIDTH-1:0]   slv_rdata;
   logic                slv_ready;

   ddr_ahb_slave #(
      .AWIDTH(AWIDTH),
      .DWIDTH(DWIDTH)
   ) ahb_slave (
      .i_hclk     (i_hclk),
      .i_hreset   (i_hreset),
      .i_haddr    (i_haddr),
      .i_hwrite   (i_hwrite),
      .i_hsel     (i_hsel),
      .i_hwdata   (i_hwdata),
      .i_htrans   (i_htrans),
      .i_hsize    (i_hsize),
      .i_hburst   (i_hburst),
      .i_hreadyin (i_hreadyin),
      .o_hready   (o_hready),
      .o_hrdata   (o_hrdata),
      .o_hresp    (o_hresp),
      .o_write    (slv_write),
      .o_read     (slv_read),
      .o_wdata    (slv_wdata),
      .o_addr     (slv_addr),
      .i_rdata    (slv_rdata),
      .i_error    (slv_error),
      .i_ready    (slv_ready)
   );

   ddr_dfi_csr #(
      .AWIDTH(AWIDTH),
      .DWIDTH(DWIDTH)
   ) dfi_csr (
      .i_hclk   (i_hclk),
      .i_hreset (i_hreset),
      .i_write  (slv_write),
      .i_read   (slv_read),
      .i_wdata  (slv_wdata),
      .i_addr   (slv_addr),
      .o_rdata  (slv_rdata),
      .o_error  (slv_error),
      .o_ready  (slv_ready),
      .o_dfi_top_0_cfg (o_dfi_top_0_cfg),
      .o_dfi_data_bit_enable_cfg (o_dfi_data_bit_enable_cfg),
      .o_dfi_phyfreq_range_cfg (o_dfi_phyfreq_range_cfg),
      .o_dfi_status_if_cfg (o_dfi_status_if_cfg),
      .i_dfi_status_if_sta (i_dfi_status_if_sta),
      .o_dfi_status_if_event_0_cfg (o_dfi_status_if_event_0_cfg),
      .o_dfi_status_if_event_1_cfg (o_dfi_status_if_event_1_cfg),
      .o_dfi_ctrlupd_if_cfg (o_dfi_ctrlupd_if_cfg),
      .i_dfi_ctrlupd_if_sta (i_dfi_ctrlupd_if_sta),
      .o_dfi_ctrlupd_if_event_0_cfg (o_dfi_ctrlupd_if_event_0_cfg),
      .o_dfi_ctrlupd_if_event_1_cfg (o_dfi_ctrlupd_if_event_1_cfg),
      .o_dfi_lp_ctrl_if_cfg (o_dfi_lp_ctrl_if_cfg),
      .i_dfi_lp_ctrl_if_sta (i_dfi_lp_ctrl_if_sta),
      .o_dfi_lp_ctrl_if_event_0_cfg (o_dfi_lp_ctrl_if_event_0_cfg),
      .o_dfi_lp_ctrl_if_event_1_cfg (o_dfi_lp_ctrl_if_event_1_cfg),
      .o_dfi_lp_data_if_cfg (o_dfi_lp_data_if_cfg),
      .i_dfi_lp_data_if_sta (i_dfi_lp_data_if_sta),
      .o_dfi_lp_data_if_event_0_cfg (o_dfi_lp_data_if_event_0_cfg),
      .o_dfi_lp_data_if_event_1_cfg (o_dfi_lp_data_if_event_1_cfg),
      .o_dfi_phyupd_if_cfg (o_dfi_phyupd_if_cfg),
      .i_dfi_phyupd_if_sta (i_dfi_phyupd_if_sta),
      .o_dfi_phymstr_if_cfg (o_dfi_phymstr_if_cfg),
      .i_dfi_phymstr_if_sta (i_dfi_phymstr_if_sta),
      .o_dfi_debug_cfg (o_dfi_debug_cfg)
   );

endmodule
