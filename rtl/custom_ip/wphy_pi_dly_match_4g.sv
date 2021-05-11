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

`ifdef SYNTHESIS
`else 
// AMS netlist generated by the AMS Unified netlister
// IC subversion:  IC6.1.8-64b.500.14 
// Xcelium version: 20.09-s001
// Copyright(C) 2005-2009, Cadence Design Systems, Inc
// User: shadzibabic Pid: 15762
// Design library name: wphy_gf12lp_ips_sim_lib
// Design cell name: wphy_pi_dly_match_4g_tb
// Design view name: config_vlog
// Solver: Spectre



// Library - wphy_gf12lp_ips_lib, Cell - wphy_pi_dly_match_4g_wphy_pi_4g_predrv, View -
//schematic
// LAST TIME SAVED: Sep 18 06:30:31 2020
// NETLIST TIME: Oct 28 23:23:41 2020
`timescale 1ps / 1ps 




 

module wphy_pi_dly_match_4g_wphy_pi_4g_predrv (outn, outp, vdda, vss, en, enb, gear, gearb, 
    inn, inp);

output  outn, outp;

inout  vdda, vss;

input  en, enb, inn, inp;

input [3:0]  gear;
input [3:0]  gearb;


wphy_pi_dly_match_4g_PU_D1_GL16_RVT PUDUM1 ( .vdd(vdda), .en(vdda), .y(outp));

wphy_pi_dly_match_4g_PU_D1_GL16_RVT PU0 ( .vdd(vdda), .en(en), .y(outn));

wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p5 INV7 ( .en(gear[0]), .enb(gearb[0]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p5 INV0 ( .en(gear[0]), .enb(gearb[0]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p25 I3 ( .en(en), .enb(enb), .in(inp), .vss(vss), 
    .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p25 I2 ( .en(en), .enb(enb), .in(inn), .vss(vss), 
    .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV6_1 ( .en(gear[2]), .enb(gearb[2]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV6_0 ( .en(gear[2]), .enb(gearb[2]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve I1 ( .en(gear[1]), .enb(gearb[1]), .in(inn), .vss(vss), 
    .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve I0 ( .en(gear[1]), .enb(gearb[1]), .in(inp), .vss(vss), 
    .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV1_1 ( .en(gear[2]), .enb(gearb[2]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV1_0 ( .en(gear[2]), .enb(gearb[2]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV2_3 ( .en(gear[3]), .enb(gearb[3]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV2_2 ( .en(gear[3]), .enb(gearb[3]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV2_1 ( .en(gear[3]), .enb(gearb[3]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV2_0 ( .en(gear[3]), .enb(gearb[3]), .in(inn), 
    .vss(vss), .out(outp), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV4_3 ( .en(gear[3]), .enb(gearb[3]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV4_2 ( .en(gear[3]), .enb(gearb[3]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV4_1 ( .en(gear[3]), .enb(gearb[3]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_wphy_pi_4g_inve INV4_0 ( .en(gear[3]), .enb(gearb[3]), .in(inp), 
    .vss(vss), .out(outn), .vdda(vdda));

wphy_pi_dly_match_4g_PD_D1_GL16_RVT PDDUM1 ( .vss(vss), .enb(vss), .y(outn));

wphy_pi_dly_match_4g_PD_D1_GL16_RVT PD0 ( .vss(vss), .enb(enb), .y(outp));

endmodule
// Library - wphy_gf12lp_ips_lib, Cell - wphy_pi_dly_match_4g_wphy_pi_4g_outdrv, View -
//schematic
// LAST TIME SAVED: Sep 18 06:30:05 2020
// NETLIST TIME: Oct 28 23:23:41 2020
`timescale 1ps / 1ps 




 

module wphy_pi_dly_match_4g_wphy_pi_4g_outdrv (outn, outp, vdda, vss, inn, inp, tiehi, 
    tielo);

output  outn, outp;

inout  vdda, vss;

input  inn, inp, tiehi, tielo;


wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV0_1 ( .in(n1), .vss(vss), .out(net014), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV0_0 ( .in(n1), .vss(vss), .out(net014), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV2_1 ( .in(p1), .vss(vss), .out(net013), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV2_0 ( .in(p1), .vss(vss), .out(net013), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV6_3 ( .in(net013), .vss(vss), .out(outp), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV6_2 ( .in(net013), .vss(vss), .out(outp), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV6_1 ( .in(net013), .vss(vss), .out(outp), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV6_0 ( .in(net013), .vss(vss), .out(outp), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV3_1 ( .in(inn), .vss(vss), .out(p1), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV3_0 ( .in(inn), .vss(vss), .out(p1), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV1_1 ( .in(inp), .vss(vss), .out(n1), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV1_0 ( .in(inp), .vss(vss), .out(n1), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV7_3 ( .in(net014), .vss(vss), .out(outn), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV7_2 ( .in(net014), .vss(vss), .out(outn), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV7_1 ( .in(net014), .vss(vss), .out(outn), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV7_0 ( .in(net014), .vss(vss), .out(outn), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D1_GL16_RVT_Mmod_nomodel INV5 ( .tiehi(tiehi), .tielo(tielo), 
    .in(net014), .vss(vss), .out(net013), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D1_GL16_RVT_Mmod_nomodel INV4 ( .tiehi(tiehi), .tielo(tielo), 
    .in(net013), .vss(vss), .out(net014), .vdd(vdda));

endmodule
// Library - wphy_gf12lp_ips_lib, Cell - wphy_pi_dly_match_4g, View -
//schematic
// LAST TIME SAVED: Sep 18 06:51:04 2020
// NETLIST TIME: Oct 28 23:23:41 2020
`timescale 1ps / 1ps 




 

`endif //SYNTHESIS 
module wphy_pi_dly_match_4g (out, outb,   clk0, clk180, ena, 
    gear, xcpl
`ifdef WLOGIC_NO_PG 
`else  
 ,vdda  
 ,vss 
`endif //WLOGIC_NO_PG 
);

`ifdef WLOGIC_NO_PG
wire vdda;
assign vdda=1'b1;
wire vss;
assign vss=1'b0;
`else
inout vdda;
inout vss;
`endif


output  out, outb;



input  clk0, clk180, ena;

input [3:0]  xcpl;
input [3:0]  gear;

// Buses in the design 
`ifdef SYNTHESIS 
`else

wire  [3:0]  xcplb;

wire  [3:0]  gear_int;

wire  [3:0]  gear_intb;

wire  [3:0]  xcpl_int;


wphy_pi_dly_match_4g_wphy_pi_4g_predrv predrvI ( .vdda(vdda), .en(en), .enb(enb), 
    .gearb(gear_intb[3:0]), .vss(vss), .inp(clk0), .inn(clk180), 
    .outp(preclk0), .outn(preclk180), .gear(gear_int[3:0]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND1_3 ( .tielo(tielo), .vdd(vdda), 
    .y(gear_intb[3]), .vss(vss), .tiehi(tiehi), .b(en), .a(gear[3]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND1_2 ( .tielo(tielo), .vdd(vdda), 
    .y(gear_intb[2]), .vss(vss), .tiehi(tiehi), .b(en), .a(gear[2]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND1_1 ( .tielo(tielo), .vdd(vdda), 
    .y(gear_intb[1]), .vss(vss), .tiehi(tiehi), .b(en), .a(gear[1]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND1_0 ( .tielo(tielo), .vdd(vdda), 
    .y(gear_intb[0]), .vss(vss), .tiehi(tiehi), .b(en), .a(gear[0]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND7_3 ( .tielo(tielo), .vdd(vdda), .y(xcplb[3]), 
    .vss(vss), .tiehi(tiehi), .b(en), .a(xcpl[3]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND7_2 ( .tielo(tielo), .vdd(vdda), .y(xcplb[2]), 
    .vss(vss), .tiehi(tiehi), .b(en), .a(xcpl[2]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND7_1 ( .tielo(tielo), .vdd(vdda), .y(xcplb[1]), 
    .vss(vss), .tiehi(tiehi), .b(en), .a(xcpl[1]));

wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT NAND7_0 ( .tielo(tielo), .vdd(vdda), .y(xcplb[0]), 
    .vss(vss), .tiehi(tiehi), .b(en), .a(xcpl[0]));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV3 ( .in(enb), .vss(vss), .out(en), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV2 ( .in(ena), .vss(vss), .out(enb), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV10_3 ( .in(gear_intb[3]), .vss(vss), 
    .out(gear_int[3]), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV10_2 ( .in(gear_intb[2]), .vss(vss), 
    .out(gear_int[2]), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV10_1 ( .in(gear_intb[1]), .vss(vss), 
    .out(gear_int[1]), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV10_0 ( .in(gear_intb[0]), .vss(vss), 
    .out(gear_int[0]), .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV8_3 ( .in(xcplb[3]), .vss(vss), .out(xcpl_int[3]), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV8_2 ( .in(xcplb[2]), .vss(vss), .out(xcpl_int[2]), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV8_1 ( .in(xcplb[1]), .vss(vss), .out(xcpl_int[1]), 
    .vdd(vdda));

wphy_pi_dly_match_4g_INV_D2_GL16_RVT INV8_0 ( .in(xcplb[0]), .vss(vss), .out(xcpl_int[0]), 
    .vdd(vdda));

wphy_pi_dly_match_4g_wphy_pi_dly_match_core_4g CORE ( .outn_match(outn_match), 
    .outp_match(outp_match), .preclk0(preclk0), .preclk180(preclk180), 
    .xcpl(xcpl_int), .xcplb(xcplb), .vdda(vdda), .vss(vss));

wphy_pi_dly_match_4g_wphy_pi_4g_outdrv Ioutdrv ( .vss(vss), .tielo(tielo), .outp(out), 
    .outn(outb), .inp(outp_match), .inn(outn_match), .vdda(vdda), 
    .tiehi(tiehi));

wphy_pi_dly_match_4g_TIELO_D2_GL16_RVT TIELO0 ( .tielo(tielo), .vss(vss), .vdd(vdda));

wphy_pi_dly_match_4g_TIEHI_D2_GL16_RVT TIEHI0 ( .tiehi(tiehi), .vss(vss), .vdd(vdda));

`endif //SYNTHESIS 
endmodule
`ifdef SYNTHESIS
`else
// Library - wphy_gf12lp_ips_sim_lib, Cell - wphy_pi_dly_match_4g_tb,
//View - schematic
// LAST TIME SAVED: Oct 28 23:14:16 2020
// NETLIST TIME: Oct 28 23:23:41 2020
`timescale 1ps / 1ps 




 




 // END AMS-UNL Netlist

//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_pi_dly_match_4g_TIEHI_D2_GL16_RVT" "systemVerilog"


module wphy_pi_dly_match_4g_TIEHI_D2_GL16_RVT ( tiehi
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd
`endif //WLOGIC_MODEL_NO_PG
);


  output tiehi;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign tiehi = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tiehi =  1'b1 ;

endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_pi_dly_match_4g_TIELO_D2_GL16_RVT" "systemVerilog"


module wphy_pi_dly_match_4g_TIELO_D2_GL16_RVT ( tielo
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd
`endif //WLOGIC_MODEL_NO_PG
);

  output tielo;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;

  assign tielo = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign tielo =  1'b0 ;


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_pi_dly_match_4g_INV_D1_GL16_RVT_Mmod_nomodel"
//"systemVerilog"


module wphy_pi_dly_match_4g_INV_D1_GL16_RVT_Mmod_nomodel ( in, out, tiehi, tielo
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
  input tiehi;
  input tielo;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

endmodule
//systemVerilog HDL for "wphy_ln08lpu_ips_lib", "wphy_pi_dly_match_4g_wphy_pi_dly_match_core_4g"
//"systemVerilog"

`timescale 1ns/1ps

module wphy_pi_dly_match_4g_wphy_pi_dly_match_core_4g ( outn_match, outp_match, vdda, vss, preclk0,
preclk180, xcpl, xcplb );

  input  [3:0] xcplb; //not implemented 
  input  [3:0] xcpl;  //not implemented 
  output outn_match;
  input preclk180;
  inout vdda;
  output outp_match;
  input preclk0;
  inout vss;

  real tmin_delay;
  wire pwrok;
  reg preclk0_reg=0;
  reg preclk180_reg=1;


  assign pwrok = vdda & ~vss ;
  assign outp_match = pwrok ? preclk0_reg : 1'bx;
  assign outn_match = pwrok ? preclk180_reg : 1'bx;

  //initial begin
  //  preclk0_reg = preclk0;
  //  preclk180_reg = preclk180;
  //end

  always @(preclk0) begin
    preclk0_reg <= #(tmin_delay) preclk0;
  end 

  always @(preclk180) begin
    preclk180_reg <= #(tmin_delay) preclk180;
  end 


   initial begin
      case(predrvI.gear)
          0: tmin_delay = 0.454;
          1: tmin_delay = 0.335;
          2: tmin_delay = 0.250;
          3: tmin_delay = 0.245;
          4: tmin_delay = 0.160;
          5: tmin_delay = 0.157;
          6: tmin_delay = 0.154;
          7: tmin_delay = 0.153;
          8: tmin_delay = 0.140;
          9: tmin_delay = 0.134;
          10: tmin_delay = 0.126;
          11: tmin_delay = 0.125;
          12: tmin_delay = 0.109;
          13: tmin_delay = 0.108;
          14: tmin_delay = 0.107;
          15: tmin_delay = 0.106;
          default: tmin_delay = 0.050;
      endcase
   end
   always @(predrvI.gear) begin
      case(predrvI.gear)
          0: tmin_delay = 0.454;
          1: tmin_delay = 0.335;
          2: tmin_delay = 0.250;
          3: tmin_delay = 0.245;
          4: tmin_delay = 0.160;
          5: tmin_delay = 0.157;
          6: tmin_delay = 0.154;
          7: tmin_delay = 0.153;
          8: tmin_delay = 0.140;
          9: tmin_delay = 0.134;
          10: tmin_delay = 0.126;
          11: tmin_delay = 0.125;
          12: tmin_delay = 0.109;
          13: tmin_delay = 0.108;
          14: tmin_delay = 0.107;
          15: tmin_delay = 0.106;
          default: tmin_delay = 0.050;
      endcase
   end


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_pi_dly_match_4g_INV_D2_GL16_RVT" "systemVerilog"


module wphy_pi_dly_match_4g_INV_D2_GL16_RVT ( in, out
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

   assign out = ~in;

endmodule



module wphy_pi_dly_match_4g_NAND2_D1_GL16_RVT ( y, a, b
`ifdef WLOGIC_MODEL_NO_TIE
`else
,tielo, tiehi
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input b;
  input a;
  output y;
`ifdef WLOGIC_MODEL_NO_TIE
`else
  input tiehi;
  input tielo;
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_TIE
`else

`ifdef WLOGIC_MODEL_TIE_CHECK
  wire   signals_ok;
  assign signals_ok = tiehi & ~tielo;
  
  assign y = (signals_ok) ? 1'bz : 1'bx;
`endif // WLOGIC_MODEL_TIE_CHECK

`endif //WLOGIC_MODEL_NO_TIE

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


 assign y = ~(a&b);

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_pi_dly_match_4g_PD_D1_GL16_RVT" "systemVerilog"

module wphy_pi_dly_match_4g_PD_D1_GL16_RVT( enb, y
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss
`endif //WLOGIC_MODEL_NO_PG
); 

  input y;
  input enb;

`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss ;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

  assign y =  enb ? 1'b0 : 1'bz;

endmodule
//Verilog HDL for "wmx_d2d_serdes_lib", "wmx_d2d_pi_cmos_inv1_en" "functional"


module wphy_pi_dly_match_4g_wphy_pi_4g_inve ( in, vdda, vss, out, en, enb );

  input in;
  inout vdda;
  output out;
  input en;
  input enb;
  inout vss;
  wire pwr_ok;

  assign pwr_ok = vdda & ~vss;
  assign out= pwr_ok ? ( en ? ~in:1'bz) : 1'bx ;

endmodule
//Verilog HDL for "wphy_ln08lpu_ips_lib", "wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p25" "functional"


module wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p25 ( in, vdda, vss, out, en, enb );

  input in;
  inout vdda;
  output out;
  input en;
  input enb;
  inout vss;

  wire polarity_ok = en ^ enb;
  wire pwr_ok;

  assign pwr_ok = vdda & ~vss;
  assign out= (pwr_ok&polarity_ok) ? ( en ? ~in:1'bz) : 1'bx ;


endmodule
//Verilog HDL for "wmx_d2d_serdes_lib", "wmx_d2d_pi_cmos_inv1_en" "functional"


module wphy_pi_dly_match_4g_wphy_pi_dly_match_4g_wphy_pi_4g_inve_0p5 ( in, vdda, vss, out, en, enb );

  input in;
  inout vdda;
  output out;
  input en;
  input enb;
  inout vss;
  wire pwr_ok;

  assign pwr_ok = vdda & ~vss;
  assign out= pwr_ok ? ( en ? ~in:1'bz) : 1'bx ;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_pi_dly_match_4g_PU_D1_GL16_RVT" "systemVerilog"


module wphy_pi_dly_match_4g_PU_D1_GL16_RVT ( en, y
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd 
`endif //WLOGIC_MODEL_NO_PG
);

  input y;
  input en;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
`endif //WLOGIC_MODEL_NO_PG

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = vdd;
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG

 assign y = en ? 1'bz : 1'b1;

endmodule
`endif //SYNTHESIS
