
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

module ddr_prog_dly_dec
(
   input  logic [7:0]  i_code_bin,  //TODO, reduce range at least to [5:0]
   output logic [1:0]  o_code_bin,
   output logic [31:0] o_code_therm
);

   parameter integer TWIDTH = 32;

   logic [TWIDTH-1:0] therm;

//`ifdef DDR_PDA_BEHAV
//RTL Code

   always_comb begin
      case(i_code_bin)
         0:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
         1:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
         2:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
         3:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
         4:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
         5:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
         6:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_0111;
         7:  therm = 32'b0000_0000_0000_0000_0000_0000_0000_1111;
         8:  therm = 32'b0000_0000_0000_0000_0000_0000_0001_1111;
         9:  therm = 32'b0000_0000_0000_0000_0000_0000_0011_1111;
         10: therm = 32'b0000_0000_0000_0000_0000_0000_0111_1111;
         11: therm = 32'b0000_0000_0000_0000_0000_0000_1111_1111;
         12: therm = 32'b0000_0000_0000_0000_0000_0001_1111_1111;
         13: therm = 32'b0000_0000_0000_0000_0000_0011_1111_1111;
         14: therm = 32'b0000_0000_0000_0000_0000_0111_1111_1111;
         15: therm = 32'b0000_0000_0000_0000_0000_1111_1111_1111;
         16: therm = 32'b0000_0000_0000_0000_0001_1111_1111_1111;
         17: therm = 32'b0000_0000_0000_0000_0011_1111_1111_1111;
         18: therm = 32'b0000_0000_0000_0000_0111_1111_1111_1111;
         19: therm = 32'b0000_0000_0000_0000_1111_1111_1111_1111;
         20: therm = 32'b0000_0000_0000_0001_1111_1111_1111_1111;
         21: therm = 32'b0000_0000_0000_0011_1111_1111_1111_1111;
         22: therm = 32'b0000_0000_0000_0111_1111_1111_1111_1111;
         23: therm = 32'b0000_0000_0000_1111_1111_1111_1111_1111;
         24: therm = 32'b0000_0000_0001_1111_1111_1111_1111_1111;
         25: therm = 32'b0000_0000_0011_1111_1111_1111_1111_1111;
         26: therm = 32'b0000_0000_0111_1111_1111_1111_1111_1111;
         27: therm = 32'b0000_0000_1111_1111_1111_1111_1111_1111;
         28: therm = 32'b0000_0001_1111_1111_1111_1111_1111_1111;
         29: therm = 32'b0000_0011_1111_1111_1111_1111_1111_1111;
         30: therm = 32'b0000_0111_1111_1111_1111_1111_1111_1111;
         31: therm = 32'b0000_1111_1111_1111_1111_1111_1111_1111;
         32: therm = 32'b0001_1111_1111_1111_1111_1111_1111_1111;
         33: therm = 32'b0011_1111_1111_1111_1111_1111_1111_1111;
         34: therm = 32'b0111_1111_1111_1111_1111_1111_1111_1111;
         35: therm = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
         default: therm = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
      endcase
   end

   assign o_code_therm = therm;
   assign o_code_bin[0]  = i_code_bin[0] | (|i_code_bin[7:2]);
   assign o_code_bin[1]  = i_code_bin[1] | (|i_code_bin[7:2]);

//`else

//`endif

endmodule
