
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

`ifndef WAV_MCU_PKG
`define WAV_MCU_PKG

`timescale 1ps/1ps

package wav_mcu_pkg;

   // ------------------------------------------------------------------------
   // Memory Map
   // ------------------------------------------------------------------------

   parameter WAV_MCUTOP_OFFSET      = 32'h00000000;
   parameter WAV_MCUINTF_OFFSET     = 32'h00004000;
   parameter WAV_MCUCSR_OFFSET      = 32'h00008000;
   parameter WAV_MCU_ITCM_OFFSET    = 32'h00010000;
   parameter WAV_MCU_DTCM_OFFSET    = 32'h00050000;

   parameter WAV_MCUTOP_SIZE        = 32'd 16384;
   parameter WAV_MCUINTF_SIZE       = 32'd 16384;
   parameter WAV_MCUCSR_SIZE        = 32'd 32768;
   parameter WAV_MCU_ITCM_SIZE      = 32'd 65536;
   parameter WAV_MCU_DTCM_SIZE      = 32'd 65536;

   // ------------------------------------------------------------------------
   // Memory Map
   // ------------------------------------------------------------------------

   parameter WAV_NUM_IRQ            = 5'd24 ;

endpackage : wav_mcu_pkg
`endif // WAV_MCU_PKG
