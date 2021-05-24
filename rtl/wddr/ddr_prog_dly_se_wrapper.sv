
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
`include "ddr_prog_dly_se_wrapper_define.vh"

import ddr_global_pkg::*;

module ddr_prog_dly_se_wrapper #(
   parameter PWIDTH = 9
)  (
      output logic o_clk_b,
      input  logic [PWIDTH-1:0] i_prog_dly_cfg,
      input  logic i_clk
);

`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss  = 1'b0;
`endif

   wphy_prog_dly_se_4g u_prog_dly_se (
      .outb          (o_clk_b),
      .i_ctrl        (i_prog_dly_cfg[`DDR_ANA_PROG_DLY_SE_CTRL_BIN_RANGE]),
      .ena           (i_prog_dly_cfg[`DDR_ANA_PROG_DLY_SE_EN_RANGE]),
      .gear          (i_prog_dly_cfg[`DDR_ANA_PROG_DLY_SE_GEAR_RANGE]),
      .in            (i_clk)
`ifndef WLOGIC_NO_PG
      ,.vdda         (vdda),
      .vss           (vss)
`endif
   );

endmodule
