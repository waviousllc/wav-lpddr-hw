


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

`timescale 1ns/1ps

`define MSB 64

module Wpin_uart_rx (i_a);
   input logic i_a;

real value =0.0;
reg     en=1'b1;

reg start_bit=1'b0;
integer cnt=`MSB-1;
reg clk=1'b0;
reg [`MSB-1:0] a_par ='d0;
wire inputOK;

reg tmp_start_bit=1'b0;
reg [`MSB-1:0] tmp_a_par ='d0;
integer i;

parameter clk_period=0.010;

//always #(clk_period/2) clk=~clk;

initial begin

  if(~en | (~inputOK))
   value =1.234e-15;
  else
   value = $bitstoreal(a_par);

end

assign inputOK= (i_a!==1'bz) & (i_a!==1'bx);

always @(negedge start_bit,en,inputOK) begin
  if(~en | (~inputOK))
   value =1.234e-15;
  else
   value = $bitstoreal(a_par);
end

//always @(clk) begin
// #0.001;
// if(i_a & (~start_bit)) begin
//   cnt=`MSB-1;
//   start_bit=1;
// end 
// else if(cnt>=0 & start_bit) begin
//   a_par[cnt]=i_a; 
//   cnt=cnt-1;
// end
// else begin
//   start_bit=0; 
//   cnt=`MSB-1;
// end 
//end

always @(posedge i_a) begin
  #0;
  if(inputOK)
   start_bit=1'b1;
end

always @(posedge start_bit) begin
  
       //#0.51;
       #((clk_period/2.0)+0.001);
     for(i=63;i>=0;i=i-1) begin
       a_par[i]=i_a;
       #(clk_period/2.0);
       //#0.5;
     end

     start_bit=1'b0;
end

endmodule


`timescale 1ns/1ps

module Wpin_uart_tx (o_z);
   output logic o_z;

real    value=0.0;
reg     en=1'b1;

reg     tmp_o_z;
integer i;

integer indx=`MSB;
reg [`MSB:0] A;
reg clk=1'b0;

parameter clk_period=0.010;

//always #(clk_period/2) clk=~clk;

initial begin
  A[`MSB]=1;
  A[`MSB-1:0] = $realtobits(value); 

  if(!en)
    o_z=1'bz;
end

always @(value) begin
  A[`MSB]=1;
  A[`MSB-1:0] = $realtobits(value); 

  if(!en) begin
      o_z=1'bz;
  end
  else begin
       //#0.5;
       #(clk_period/2.0);
     for(i=64;i>=0;i=i-1) begin
       o_z=A[i];
       //#0.5;
       #(clk_period/2.0);
     end
  end
end

//always @(clk) begin
//  #0.001;
//  if(!en) begin
//    o_z=1'bz;
//  end
//  else begin
//     if(A[`MSB]) begin
//       if(indx>=0) begin
//         o_z=A[indx];
//         indx=indx-1;
//       end
//      else begin
//         A[`MSB]=0;
//      end
//     end
//     else begin
//       indx=`MSB;
//       o_z=1'b0;
//     end
//  end
//end
   

endmodule
