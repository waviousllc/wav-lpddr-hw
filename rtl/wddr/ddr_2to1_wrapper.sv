
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

import ddr_global_pkg::*;

module ddr_2to1_wrapper (
   output logic o_z,
   input  logic i_clk,
   input  logic i_clk_b,
   input  logic i_even,
   input  logic i_odd
);

`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss  = 1'b0;
`endif

   wphy_2to1_14g_rvt u_2to1 (
      .o_z          (o_z),
      .i_clk        (i_clk),
      .i_clk_b      (i_clk_b),
      .i_datar      (i_even),
      .i_dataf      (i_odd)
`ifndef WLOGIC_NO_PG
      ,.vdda        (vdda),
      .vss          (vss)
`endif
   );

endmodule
