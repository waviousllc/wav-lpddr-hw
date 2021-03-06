/*********************************************************************************
Copyright (c) 2021 Wavious LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

*********************************************************************************/

`ifdef SYNTHESIS
`else 
// AMS netlist generated by the AMS Unified netlister
// IC subversion:  IC6.1.8-64b.500.14 
// Xcelium version: 20.09-s001
// Copyright(C) 2005-2009, Cadence Design Systems, Inc
// User: shadzibabic Pid: 15762
// Design library name: wphy_gf12lp_ips_sim_lib
// Design cell name: wphy_clk_div_2ph_4g_dlymatch_lvt_tb
// Design view name: config_vlog
// Solver: Spectre



// Library - wphy_gf12lp_ips_lib, Cell -
//wphy_clk_div_2ph_4g_dlymatch_lvt, View - schematic
// LAST TIME SAVED: Sep 17 20:50:56 2020
// NETLIST TIME: Oct 27 01:11:44 2020
`timescale 1ps / 1ps 




 

`endif //SYNTHESIS 
module wphy_clk_div_2ph_4g_dlymatch_lvt (o_clk0, o_clk180,   
    i_byp, i_clk0, i_clk180
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


output  o_clk0, o_clk180;



input  i_byp, i_clk0, i_clk180;

`ifdef SYNTHESIS
`else 

wphy_clk_div_2ph_4g_dlymatch_lvt_TIELO_D2_GL16_LVT I10 ( .tielo(tielo), .vss(vss), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT I9 ( .out(net065), .en(bypb), .enb(bypa), .vss(vss), 
    .in(x0), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT I8 ( .out(net064), .en(bypb), .enb(bypa), .vss(vss), 
    .in(x180), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT I13 ( .out(net065), .en(bypa), .enb(bypb), .vss(vss), 
    .in(i_clk0), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT I14 ( .out(net064), .en(bypa), .enb(bypb), .vss(vss), 
    .in(i_clk180), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_XG_D1_GL16_LVT XG0_1 ( .y(x180), .a(net058), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_2ph_4g_dlymatch_lvt_XG_D1_GL16_LVT XG0_0 ( .y(x180), .a(net058), .en(vdda), .enb(vss), 
    .vdd(vdda), .vss(vss));

wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D2_GL16_LVT I25_1 ( .vdd(vdda), .inn(x180), .vss(vss), 
    .inp(x180));

wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D2_GL16_LVT I25_0 ( .vdd(vdda), .inn(x180), .vss(vss), 
    .inp(x180));

wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D2_GL16_LVT I11 ( .vdd(vdda), .inn(net060), .vss(vss), 
    .inp(net060));

wphy_clk_div_2ph_4g_dlymatch_lvt_wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT_Mmod_nomodel INV15 ( .out(net058), .en(bypb), 
    .enb(bypa), .vss(vss), .in(net059), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT_Mmod_nomodel INV16 ( .out(net059), .en(bypb), 
    .enb(bypa), .vss(vss), .in(net058), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_LATRES_D1_GL16_LVT LAT4 ( .tielo(tielo), .tiehi(tiehi), .vss(vss), 
    .vdd(vdda), .rstb(bypb), .d(i_clk180), .clkb(tiehi), .clk(tielo), 
    .q(net058));

wphy_clk_div_2ph_4g_dlymatch_lvt_LATRES_D1_GL16_LVT LAT1 ( .tielo(tielo), .tiehi(tiehi), .vss(vss), 
    .vdd(vdda), .rstb(bypb), .d(i_clk0), .clkb(tiehi), .clk(tielo), 
    .q(net059));

wphy_clk_div_2ph_4g_dlymatch_lvt_TIEHI_D2_GL16_LVT TIEHI0 ( .tiehi(tiehi), .vss(vss), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV5 ( .in(net064), .vss(vss), .out(o_clk180), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV0 ( .in(net065), .vss(vss), .out(o_clk0), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV1 ( .in(net059), .vss(vss), .out(net060), 
    .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV3 ( .in(net060), .vss(vss), .out(x0), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV11 ( .in(i_byp), .vss(vss), .out(bypb), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT INV12 ( .in(bypb), .vss(vss), .out(bypa), .vdd(vdda));

wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D1_GL16_LVT IDUMLOAD0 ( .vdd(vdda), .inn(net059), .vss(vss), 
    .inp(net059));

wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D1_GL16_LVT IDUMLOAD1 ( .vdd(vdda), .inn(net058), .vss(vss), 
    .inp(net058));

`endif //SYNTHESIS 
endmodule
`ifdef SYNTHESIS
`else
// Library - wphy_gf12lp_ips_sim_lib, Cell -
//wphy_clk_div_2ph_4g_dlymatch_lvt_tb, View - schematic
// LAST TIME SAVED: Oct 27 00:18:23 2020
// NETLIST TIME: Oct 27 01:11:44 2020
`timescale 1ps / 1ps 




 




 // END AMS-UNL Netlist

//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D1_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D1_GL16_LVT ( inp, inn
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input inp;
  input inn;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT" "systemVerilog"

`timescale 1ps/1ps

module wphy_clk_div_2ph_4g_dlymatch_lvt_INV_D2_GL16_LVT( in, out
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

    assign  out = ~in;

endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_TIEHI_D2_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_dlymatch_lvt_TIEHI_D2_GL16_LVT ( tiehi
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
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_LATRES_D1_GL16_LVT" "systemVerilog"


`timescale 1ps/1ps
module wphy_clk_div_2ph_4g_dlymatch_lvt_LATRES_D1_GL16_LVT( q, clk, clkb, d, rstb
`ifdef WLOGIC_MODEL_NO_TIE
`else
, tiehi, tielo 
`endif //WLOGIC_MODEL_NO_TIE
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PGL
);

  input clk;
  output q;
  input d;
  input clkb;
  input rstb;
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

  wire #0 polarity_ok = clk^clkb;

`ifdef WLOGIC_MODEL_NO_TIE
`else

`ifdef WLOGIC_MODEL_TIE_CHECK
  wire signals_ok;
  assign signals_ok = tiehi & ~tielo ;

  assign q = (signals_ok) ? 1'bz : 1'bx;
`endif // WLOGIC_MODEL_TIE_CHECK

`endif //WLOGIC_MODEL_NO_TIE

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd ;

  assign q = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


assign #1  q = polarity_ok ? 
                           (~rstb) ? 
                                 1'b0 
                                 : (clkb) ? 
                                          (d===1'bx) ? $random : d&rstb
                                          : q 
                           : 1'bx;

endmodule

//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT_Mmod_delay"
//"systemVerilog"

`timescale 1ps/1ps

module wphy_clk_div_2ph_4g_dlymatch_lvt_wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT_Mmod_nomodel( in, out, en, enb
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  output out;
  input en;
  input enb;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D1_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_dlymatch_lvt_DUMLOAD_D2_GL16_LVT ( inp, inn
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input inp;
  input inn;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG


endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_XG_D1_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_dlymatch_lvt_XG_D1_GL16_LVT ( y, en, enb, a
`ifdef WLOGIC_MODEL_NO_PG
`else
, vss, vdd 
`endif //WLOGIC_MODEL_NO_PG
); 

  input a;
  input en;
  output y;
  input enb;
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
  
  assign y = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG


assign y = (en && ~enb) ? a:1'bz;

endmodule
//systemVerilog HDL for "wavshared_tsmc12ffc_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT" "systemVerilog"

module wphy_clk_div_2ph_4g_dlymatch_lvt_INVT_D2_GL16_LVT( in, out, en, enb 
`ifdef WLOGIC_MODEL_NO_PG
`else
, vdd, vss
`endif //WLOGIC_MODEL_NO_PG
);

  input in;
  input en, enb;
  output out;
`ifdef WLOGIC_MODEL_NO_PG
`else
  inout vdd;
  inout vss;
`endif //WLOGIC_MODEL_NO_PG

  wire out;

`ifdef WLOGIC_MODEL_NO_PG
`else

`ifdef WLOGIC_MODEL_PWR_CHECK
  wire   power_ok;
  assign power_ok = ~vss & vdd;
  
  assign out = (power_ok) ? 1'bz : 1'bx;

`endif //WLOGIC_MODEL_PWR_CHECK

`endif //WLOGIC_MODEL_NO_PG



assign out = (en) ? ~in:1'bz;


endmodule
//systemVerilog HDL for "wavshared_ln08lpu_dig_lib", "wphy_clk_div_2ph_4g_dlymatch_lvt_TIELO_D2_GL16_LVT" "systemVerilog"


module wphy_clk_div_2ph_4g_dlymatch_lvt_TIELO_D2_GL16_LVT ( tielo
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
`endif //SYNTHESIS
