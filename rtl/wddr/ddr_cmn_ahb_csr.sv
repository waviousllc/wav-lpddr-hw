
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
`include "ddr_cmn_csr_defs.vh"

import ddr_global_pkg::*;

module ddr_cmn_ahb_csr #(
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
   output  logic [`DDR_CMN_VREF_M0_CFG_RANGE] o_cmn_vref_m0_cfg,
   output  logic [`DDR_CMN_VREF_M1_CFG_RANGE] o_cmn_vref_m1_cfg,
   output  logic [`DDR_CMN_ZQCAL_CFG_RANGE] o_cmn_zqcal_cfg,
   input   logic [`DDR_CMN_ZQCAL_STA_RANGE] i_cmn_zqcal_sta,
   output  logic [`DDR_CMN_IBIAS_CFG_RANGE] o_cmn_ibias_cfg,
   output  logic [`DDR_CMN_TEST_CFG_RANGE] o_cmn_test_cfg,
   output  logic [`DDR_CMN_LDO_M0_CFG_RANGE] o_cmn_ldo_m0_cfg,
   output  logic [`DDR_CMN_LDO_M1_CFG_RANGE] o_cmn_ldo_m1_cfg,
   output  logic [`DDR_CMN_CLK_CTRL_CFG_RANGE] o_cmn_clk_ctrl_cfg,
   output  logic [`DDR_CMN_PMON_ANA_CFG_RANGE] o_cmn_pmon_ana_cfg,
   output  logic [`DDR_CMN_PMON_DIG_CFG_RANGE] o_cmn_pmon_dig_cfg,
   output  logic [`DDR_CMN_PMON_DIG_NAND_CFG_RANGE] o_cmn_pmon_dig_nand_cfg,
   output  logic [`DDR_CMN_PMON_DIG_NOR_CFG_RANGE] o_cmn_pmon_dig_nor_cfg,
   input   logic [`DDR_CMN_PMON_NAND_STA_RANGE] i_cmn_pmon_nand_sta,
   input   logic [`DDR_CMN_PMON_NOR_STA_RANGE] i_cmn_pmon_nor_sta,
   input   logic [`DDR_CMN_CLK_STA_RANGE] i_cmn_clk_sta,
   output  logic [`DDR_CMN_RSTN_CFG_RANGE] o_cmn_rstn_cfg,
   input   logic [`DDR_CMN_RSTN_STA_RANGE] i_cmn_rstn_sta
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

   ddr_cmn_csr #(
      .AWIDTH(AWIDTH),
      .DWIDTH(DWIDTH)
   ) cmn_csr (
      .i_hclk   (i_hclk),
      .i_hreset (i_hreset),
      .i_write  (slv_write),
      .i_read   (slv_read),
      .i_wdata  (slv_wdata),
      .i_addr   (slv_addr),
      .o_rdata  (slv_rdata),
      .o_error  (slv_error),
      .o_ready  (slv_ready),
      .o_cmn_vref_m0_cfg (o_cmn_vref_m0_cfg),
      .o_cmn_vref_m1_cfg (o_cmn_vref_m1_cfg),
      .o_cmn_zqcal_cfg (o_cmn_zqcal_cfg),
      .i_cmn_zqcal_sta (i_cmn_zqcal_sta),
      .o_cmn_ibias_cfg (o_cmn_ibias_cfg),
      .o_cmn_test_cfg (o_cmn_test_cfg),
      .o_cmn_ldo_m0_cfg (o_cmn_ldo_m0_cfg),
      .o_cmn_ldo_m1_cfg (o_cmn_ldo_m1_cfg),
      .o_cmn_clk_ctrl_cfg (o_cmn_clk_ctrl_cfg),
      .o_cmn_pmon_ana_cfg (o_cmn_pmon_ana_cfg),
      .o_cmn_pmon_dig_cfg (o_cmn_pmon_dig_cfg),
      .o_cmn_pmon_dig_nand_cfg (o_cmn_pmon_dig_nand_cfg),
      .o_cmn_pmon_dig_nor_cfg (o_cmn_pmon_dig_nor_cfg),
      .i_cmn_pmon_nand_sta (i_cmn_pmon_nand_sta),
      .i_cmn_pmon_nor_sta (i_cmn_pmon_nor_sta),
      .i_cmn_clk_sta (i_cmn_clk_sta),
      .o_cmn_rstn_cfg (o_cmn_rstn_cfg),
      .i_cmn_rstn_sta (i_cmn_rstn_sta)
   );

endmodule
