
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
`include "ddr_pi_wrapper_define.vh"

import ddr_global_pkg::*;

module ddr_pi_wrapper #(
   parameter PWIDTH = 15
)
(
   input  logic [PWIDTH-1:0]  i_pi_cfg,
   input i_clk270,
   input i_clk180,
   input i_clk90,
   input i_clk0,
   output o_clk,
   output o_clk_b
);

   logic [15:0] code_therm;
   logic [1:0] quad;

`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss = 1'b0;
`endif

`ifndef DDR_PI_CSR_DEC
   ddr_pi_b2t_dec u_pi_decoder (
      .i_code_bin(i_pi_cfg[`DDR_ANA_PI_CODE_RANGE]),
      .o_code_therm(code_therm),
      .o_quad(quad)
   );
`else
   assign code_therm = i_pi_cfg[`DDR_ANA_PI_THERM_RANGE];
   assign quad = i_pi_cfg[`DDR_ANA_PI_QUAD_RANGE];
`endif

`ifdef DDRPHY_14G_ANA
   wphy_pi_14g u_pi (
      .out(o_clk),
      .outb(o_clk_b),
      .xcpl(i_pi_cfg[`DDR_ANA_PI_XCPL_RANGE]),
      .quad(quad[1:0]),
      .gear(i_pi_cfg[`DDR_ANA_PI_GEAR_RANGE]),
      .ena(i_pi_cfg[`DDR_ANA_PI_EN_RANGE]),
      .code(code_therm[15:0]),
      .clk270(i_clk270),
      .clk180(i_clk180),
      .clk90(i_clk90),
      .clk0(i_clk0)
`ifndef WLOGIC_NO_PG
      ,.vdda(vdda),
      .vss(vss)
`endif
   );
`else
   wphy_pi_4g u_pi (
      .out(o_clk),
      .outb(o_clk_b),
      .xcpl(i_pi_cfg[`DDR_ANA_PI_XCPL_RANGE]),
      .quad(quad[1:0]),
      .gear(i_pi_cfg[`DDR_ANA_PI_GEAR_RANGE]),
      .ena(i_pi_cfg[`DDR_ANA_PI_EN_RANGE]),
      .code(code_therm[15:0]),
      .clk270(i_clk270),
      .clk180(i_clk180),
      .clk90(i_clk90),
      .clk0(i_clk0)
`ifndef WLOGIC_NO_PG
      ,.vdda(vdda),
      .vss(vss)
`endif
   );
`endif

endmodule
