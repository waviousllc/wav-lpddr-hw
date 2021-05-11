
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
`include "ddr_pi_match_wrapper_define.vh"

import ddr_global_pkg::*;

module ddr_pi_match_wrapper #(
   parameter PWIDTH = 9
)
(
   input  logic [PWIDTH-1:0]  i_pi_cfg,
   input i_clk180,
   input i_clk0,
   output o_clk,
   output o_clk_b
);


`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss = 1'b0;
`endif


   wphy_pi_dly_match_4g u_pi_match (
      .out(o_clk),
      .outb(o_clk_b),
      .xcpl(i_pi_cfg[`DDR_ANA_PI_MATCH_XCPL_RANGE]),
      .gear(i_pi_cfg[`DDR_ANA_PI_MATCH_GEAR_RANGE]),
      .ena(i_pi_cfg[`DDR_ANA_PI_MATCH_EN_RANGE]),
      .clk180(i_clk180),
      .clk0(i_clk0)
`ifndef WLOGIC_NO_PG
      ,.vdda(vdda),
      .vss(vss)
`endif
   );

endmodule
