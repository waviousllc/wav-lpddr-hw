
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

module ddr_clkmux_3to1_diff_wrapper 
(
   output logic       o_c,
   output logic       o_t,
   input  logic       i_01_c,
   input  logic       i_01_t,
   input  logic       i_10_c,
   input  logic       i_10_t,
   input  logic       i_11_c,
   input  logic       i_11_t,
   input  logic [1:0] i_sel
);

`ifndef WLOGIC_NO_PG
   wire vdda, vss;
   assign vdda = 1'b1;
   assign vss  = 1'b0;
`endif

 wphy_clkmux_3to1_diff u_clkmux_3to1 
    ( 
      .out_c         (o_c), 
      .out_t         (o_t), 
      .in01_c        (i_01_c),
      .in01_t        (i_01_t),
      .in10_c        (i_10_c),
      .in10_t        (i_10_t),
      .in11_c        (i_11_c),
      .in11_t        (i_11_t),
      .s             (i_sel)
`ifdef WLOGIC_NO_PG 
`else  
      ,.vdda    
      ,.vss 
`endif //WLOGIC_NO_PG 
    );


endmodule
