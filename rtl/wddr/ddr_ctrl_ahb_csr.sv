
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
`include "ddr_ctrl_csr_defs.vh"

import ddr_global_pkg::*;

module ddr_ctrl_ahb_csr #(
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
   output  logic [`DDR_CTRL_CLK_CFG_RANGE] o_ctrl_clk_cfg,
   input   logic [`DDR_CTRL_CLK_STA_RANGE] i_ctrl_clk_sta,
   output  logic [`DDR_CTRL_AHB_SNOOP_CFG_RANGE] o_ctrl_ahb_snoop_cfg,
   input   logic [`DDR_CTRL_AHB_SNOOP_STA_RANGE] i_ctrl_ahb_snoop_sta,
   input   logic [`DDR_CTRL_AHB_SNOOP_DATA_STA_RANGE] i_ctrl_ahb_snoop_data_sta,
   output  logic [`DDR_CTRL_AHB_SNOOP_PATTERN_CFG_RANGE] o_ctrl_ahb_snoop_pattern_cfg,
   output  logic [`DDR_CTRL_AHB_SNOOP_PATTERN_0_CFG_RANGE] o_ctrl_ahb_snoop_pattern_0_cfg,
   output  logic [`DDR_CTRL_AHB_SNOOP_PATTERN_1_CFG_RANGE] o_ctrl_ahb_snoop_pattern_1_cfg,
   input   logic [`DDR_CTRL_AHB_SNOOP_PATTERN_STA_RANGE] i_ctrl_ahb_snoop_pattern_sta,
   output  logic [`DDR_CTRL_DEBUG_CFG_RANGE] o_ctrl_debug_cfg,
   output  logic [`DDR_CTRL_DEBUG1_CFG_RANGE] o_ctrl_debug1_cfg
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

   ddr_ctrl_csr #(
      .AWIDTH(AWIDTH),
      .DWIDTH(DWIDTH)
   ) ctrl_csr (
      .i_hclk   (i_hclk),
      .i_hreset (i_hreset),
      .i_write  (slv_write),
      .i_read   (slv_read),
      .i_wdata  (slv_wdata),
      .i_addr   (slv_addr),
      .o_rdata  (slv_rdata),
      .o_error  (slv_error),
      .o_ready  (slv_ready),
      .o_ctrl_clk_cfg (o_ctrl_clk_cfg),
      .i_ctrl_clk_sta (i_ctrl_clk_sta),
      .o_ctrl_ahb_snoop_cfg (o_ctrl_ahb_snoop_cfg),
      .i_ctrl_ahb_snoop_sta (i_ctrl_ahb_snoop_sta),
      .i_ctrl_ahb_snoop_data_sta (i_ctrl_ahb_snoop_data_sta),
      .o_ctrl_ahb_snoop_pattern_cfg (o_ctrl_ahb_snoop_pattern_cfg),
      .o_ctrl_ahb_snoop_pattern_0_cfg (o_ctrl_ahb_snoop_pattern_0_cfg),
      .o_ctrl_ahb_snoop_pattern_1_cfg (o_ctrl_ahb_snoop_pattern_1_cfg),
      .i_ctrl_ahb_snoop_pattern_sta (i_ctrl_ahb_snoop_pattern_sta),
      .o_ctrl_debug_cfg (o_ctrl_debug_cfg),
      .o_ctrl_debug1_cfg (o_ctrl_debug1_cfg)
   );

endmodule
