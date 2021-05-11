
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

`ifndef WAV_AHB_PKG
`define WAV_AHB_PKG

`timescale 1ps/1ps

package wav_ahb_pkg;

   parameter [2:0] AHB_SIZE_BYTE      = 3'b000;
   parameter [2:0] AHB_SIZE_HWORD     = 3'b001;
   parameter [2:0] AHB_SIZE_WORD      = 3'b010;
   parameter [2:0] AHB_SIZE_DWORD     = 3'b011;
   parameter [2:0] AHB_SIZE_BIT128    = 3'b100;
   parameter [2:0] AHB_SIZE_BIT256    = 3'b101;
   parameter [2:0] AHB_SIZE_BIT512    = 3'b110;

   parameter [2:0] AHB_BURST_SINGLE   = 3'b000;
   parameter [2:0] AHB_BURST_INCR     = 3'b001;
   parameter [2:0] AHB_BURST_INCR4    = 3'b011;
   parameter [2:0] AHB_BURST_INCR8    = 3'b101;
   parameter [2:0] AHB_BURST_INCR16   = 3'b111;

   parameter [1:0] AHB_TRANS_IDLE     = 2'b00;
   parameter [1:0] AHB_TRANS_BUSY     = 2'b01;
   parameter [1:0] AHB_TRANS_NONSEQ   = 2'b10;
   parameter [1:0] AHB_TRANS_SEQ      = 2'b11;

   parameter [1:0] AHB_RESP_OK        = 2'b00;
   parameter [1:0] AHB_RESP_ERROR     = 2'b01;
   parameter [1:0] AHB_RESP_RETRY     = 2'b10;
   parameter [1:0] AHB_RESP_SPLIT     = 2'b11;

endpackage : wav_ahb_pkg
`endif // WAV_AHB_PKG
