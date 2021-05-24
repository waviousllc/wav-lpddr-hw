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

// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module prim_clock_gating (
  input         clk_i,
  input         en_i,
  input         test_en_i,
  output logic  clk_o
);

  //temp, replace with our stuff
  //assign clk_o = test_en_i ? clk_i : (en_i ? clk_i : 1'b0);

  wav_cgc_rl u_cgc (.i_clk(clk_i), .i_clk_en(en_i), .i_cgc_en(test_en_i), .o_clk(clk_o));

endmodule
