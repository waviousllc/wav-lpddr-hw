
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
`include "ddr_clkmux_diff_wrapper_define.vh"

import ddr_global_pkg::*;

module ddr_clkmux_diff_wrapper #(
   parameter PWIDTH = 4
)  (
   output logic o_ddrclk_c,
   output logic o_ddrclk_t,
   output logic o_qdrclk_c,
   output logic o_qdrclk_t,
   input  logic i_pi0,
   input  logic i_pi90,
   input  logic i_pi180,
   input  logic i_pi270,
   input  logic i_qdrclk1_c,
   input  logic i_qdrclk1_t,
   input  logic i_qdrclk2_c,
   input  logic i_qdrclk2_t,
   input  logic i_rdqs_c,
   input  logic i_rdqs_t,
   input  logic i_wck_c,
   input  logic i_wck_t,
   input logic [PWIDTH-1:0] i_ckmux_cfg
);

`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss  = 1'b0;
`endif

wphy_clkmux_diff u_clkmux_diff (
   .d_ddrclk_c    (o_ddrclk_c),
   .d_ddrclk_t    (o_ddrclk_t),
   .d_qdrclk_c    (o_qdrclk_c),
   .d_qdrclk_t    (o_qdrclk_t),
   .d_ddrclk_sel  (i_ckmux_cfg[`DDR_ANA_CKMUX_DDRCLK_SEL_RANGE]),
   .d_pi0         (i_pi0),
   .d_pi90        (i_pi90),
   .d_pi180       (i_pi180),
   .d_pi270       (i_pi270),
   .d_qclk1_c     (i_qdrclk1_c),
   .d_qclk1_t     (i_qdrclk1_t),
   .d_qclk2_c     (i_qdrclk2_c),
   .d_qclk2_t     (i_qdrclk2_t),
   .d_qdrclk_sel  (i_ckmux_cfg[`DDR_ANA_CKMUX_QDRCLK_SEL_RANGE]),
   .d_rdqs_c      (i_rdqs_c),
   .d_rdqs_t      (i_rdqs_t),
   .d_wck_c       (i_wck_c),
   .d_wck_t       (i_wck_t)
`ifndef WLOGIC_NO_PG
   ,.vdda         (vdda),
   .vss           (vss)
`endif
);

endmodule
