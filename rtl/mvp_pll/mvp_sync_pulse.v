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

module mvp_sync_pulse(
  input  wire     clk_in,
  input  wire     clk_in_reset,
  input  wire     data_in,
  
  input  wire     clk_out,
  input  wire     clk_out_reset,
  output wire     data_out  
);

reg     clk_in_pulse;

always @(posedge clk_in or posedge clk_in_reset) begin
  if(clk_in_reset) begin
    clk_in_pulse    <= 1'b0;
  end else begin
    clk_in_pulse    <= data_in ? ~clk_in_pulse : clk_in_pulse;
  end
end


wire pulse_demeted;
reg  pulse_demeted_ff3;
demet_reset u_demet_reset (
  .clk     ( clk_out        ),  
  .reset   ( clk_out_reset  ),  
  .sig_in  ( clk_in_pulse   ),  
  .sig_out ( pulse_demeted  )); 

always @(posedge clk_out or posedge clk_out_reset) begin
  if(clk_out_reset) begin
    pulse_demeted_ff3    <= 1'b0;
  end else begin
    pulse_demeted_ff3    <= pulse_demeted;
  end
end

assign data_out = pulse_demeted ^ pulse_demeted_ff3;


endmodule
