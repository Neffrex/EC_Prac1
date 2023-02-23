//: version "1.8.7"

module CSA(Cin, B, Cout, S, A);
//: interface  /sz:(117, 73) /bd:[ Ti0>B[3:0](70/117) Ti1>A[3:0](37/117) Ri0>Cin(34/73) Lo0<Cout(34/73) Bo0<S[3:0](59/117) ]
input [3:0] B;    //: /sn:0 {0}(1011,65)(1011,184){1}
//: {2}(1009,186)(660,186)(660,201){3}
//: {4}(1011,188)(1011,358)(678,358)(678,368){5}
input [3:0] A;    //: /sn:0 /dp:3 {0}(555,368)(555,341)(985,341)(985,165){1}
//: {2}(985,161)(985,65){3}
//: {4}(983,163)(592,163)(592,201){5}
input Cin;    //: /sn:0 {0}(556,484)(568,484)(568,510){1}
//: {2}(570,512)(641,512){3}
//: {4}(645,512)(721,512){5}
//: {6}(725,512)(796,512){7}
//: {8}(800,512)(1159,512)(1159,305)(1199,305){9}
//: {10}(798,510)(798,485)(782,485){11}
//: {12}(723,510)(723,488)(706,488){13}
//: {14}(643,510)(643,487)(633,487){15}
//: {16}(566,512)(381,512)(381,385){17}
supply1 w8;    //: /sn:0 {0}(815,387)(889,387){1}
output Cout;    //: /sn:0 /dp:1 {0}(368,362)(300,362)(300,562)(290,562){1}
supply0 w2;    //: /sn:0 /dp:1 {0}(814,226)(914,226)(914,393)(938,393){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(827,559)(907,559){1}
wire w13;    //: /sn:0 /dp:1 {0}(693,472)(693,426){1}
wire w6;    //: /sn:0 {0}(795,269)(795,305)(455,305)(455,438)(749,438)(749,469){1}
wire S1;    //: /sn:0 /dp:1 {0}(683,501)(683,564)(821,564){1}
wire [3:0] w7;    //: /sn:0 {0}(515,265)(528,265){1}
//: {2}(529,265)(604,265){3}
//: {4}(605,265)(689,265){5}
//: {6}(690,265)(794,265){7}
//: {8}(795,265)(802,265)(802,254){9}
wire w4;    //: /sn:0 {0}(690,269)(690,297)(446,297)(446,448)(673,448)(673,472){1}
wire w0;    //: /sn:0 {0}(769,426)(769,469){1}
wire w3;    //: /sn:0 {0}(605,269)(605,287)(437,287)(437,455)(600,455)(600,471){1}
wire w19;    //: /sn:0 {0}(485,230)(407,230)(407,352)(397,352){1}
wire [3:0] w10;    //: /sn:0 {0}(800,410)(800,422)(769,422){1}
//: {2}(768,422)(693,422){3}
//: {4}(692,422)(620,422){5}
//: {6}(619,422)(542,422){7}
//: {8}(541,422)(527,422){9}
wire w1;    //: /sn:0 {0}(529,269)(529,273)(429,273)(429,462)(523,462)(523,468){1}
wire S0;    //: /sn:0 /dp:1 {0}(759,498)(759,574)(821,574){1}
wire w33;    //: /sn:0 {0}(486,390)(407,390)(407,372)(397,372){1}
wire w5;    //: /sn:0 /dp:1 {0}(543,468)(543,434)(542,434)(542,426){1}
wire S3;    //: /sn:0 /dp:1 {0}(533,497)(533,544)(821,544){1}
wire w9;    //: /sn:0 /dp:1 {0}(620,471)(620,426){1}
wire S2;    //: /sn:0 /dp:1 {0}(610,500)(610,554)(821,554){1}
//: enddecls

  //: input g8 (Cin) @(1201,305) /sn:0 /R:2 /w:[ 9 ]
  concat g4 (.I0(S0), .I1(S1), .I2(S2), .I3(S3), .Z(S));   //: @(826,559) /sn:0 /w:[ 1 1 1 1 0 ] /dr:0
  mux g16 (.I0(w3), .I1(w9), .S(Cin), .Z(S2));   //: @(610,487) /sn:0 /delay:" 3 3" /w:[ 1 0 15 0 ] /ss:1 /do:0
  //: joint g3 (B) @(1011, 186) /w:[ -1 1 2 4 ]
  mux g17 (.I0(w4), .I1(w13), .S(Cin), .Z(S1));   //: @(683,488) /sn:0 /delay:" 3 3" /w:[ 1 0 13 0 ] /ss:1 /do:0
  tran g26(.Z(w4), .I(w7[1]));   //: @(690,263) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  //: joint g2 (A) @(985, 163) /w:[ -1 2 4 1 ]
  CPA g23 (.B(B), .A(A), .Cin(w2), .Cout(w19), .S(w7));   //: @(486, 202) /sz:(327, 51) /sn:0 /p:[ Ti0>3 Ti1>5 Ri0>0 Lo0<0 Bo0<9 ]
  //: input g1 (B) @(1011,63) /sn:0 /R:3 /w:[ 0 ]
  CPA g24 (.B(B), .A(A), .Cin(w8), .Cout(w33), .S(w10));   //: @(487, 369) /sz:(327, 40) /sn:0 /p:[ Ti0>5 Ti1>0 Ri0>0 Lo0<0 Bo0<0 ]
  mux g18 (.I0(w6), .I1(w0), .S(Cin), .Z(S0));   //: @(759,485) /sn:0 /delay:" 3 3" /w:[ 1 1 11 0 ] /ss:1 /do:0
  //: supply0 g25 (w2) @(944,393) /sn:0 /R:1 /w:[ 1 ]
  tran g10(.Z(w13), .I(w10[1]));   //: @(693,420) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  tran g6(.Z(w5), .I(w10[3]));   //: @(542,420) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  //: output g9 (Cout) @(293,562) /sn:0 /R:2 /w:[ 1 ]
  tran g7(.Z(w9), .I(w10[2]));   //: @(620,420) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  //: joint g22 (Cin) @(798, 512) /w:[ 8 10 7 -1 ]
  tran g12(.Z(w1), .I(w7[3]));   //: @(529,263) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  //: supply1 g28 (w8) @(889,398) /sn:0 /R:3 /w:[ 1 ]
  mux g14 (.I0(w19), .I1(w33), .S(Cin), .Z(Cout));   //: @(381,362) /sn:0 /R:3 /delay:" 3 3" /w:[ 1 1 17 0 ] /ss:1 /do:0
  //: output g5 (S) @(904,559) /sn:0 /w:[ 1 ]
  tran g11(.Z(w0), .I(w10[0]));   //: @(769,420) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: joint g19 (Cin) @(568, 512) /w:[ 2 1 16 -1 ]
  //: joint g21 (Cin) @(723, 512) /w:[ 6 12 5 -1 ]
  //: joint g20 (Cin) @(643, 512) /w:[ 4 14 3 -1 ]
  //: input g0 (A) @(985,63) /sn:0 /R:3 /w:[ 3 ]
  mux g15 (.I0(w1), .I1(w5), .S(Cin), .Z(S3));   //: @(533,484) /sn:0 /delay:" 3 3" /w:[ 1 0 0 0 ] /ss:1 /do:0
  tran g27(.Z(w6), .I(w7[0]));   //: @(795,263) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  tran g13(.Z(w3), .I(w7[2]));   //: @(605,263) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1

endmodule

module HA(C, S, B, A);
//: interface  /sz:(263, 230) /bd:[ Li0>A(49/230) Li1>B(127/230) Li2>B(127/230) Li3>A(49/230) Li4>B(127/230) Li5>A(49/230) To0<C(143/263) To1<C(143/263) To2<C(143/263) Ro0<S(91/230) Ro1<S(91/230) Ro2<S(91/230) ]
input B;    //: /sn:0 {0}(122,340)(208,340){1}
//: {2}(212,340)(257,340)(257,326)(265,326){3}
//: {4}(210,342)(210,371)(265,371){5}
input A;    //: /sn:0 {0}(122,321)(225,321){1}
//: {2}(229,321)(265,321){3}
//: {4}(227,323)(227,366)(265,366){5}
output C;    //: /sn:0 /dp:1 {0}(286,369)(380,369){1}
output S;    //: /sn:0 /dp:1 {0}(286,324)(375,324){1}
//: enddecls

  xor g4 (.I0(A), .I1(B), .Z(S));   //: @(276,324) /sn:0 /delay:" 5" /w:[ 3 3 0 ]
  //: output g3 (C) @(377,369) /sn:0 /w:[ 1 ]
  //: output g2 (S) @(372,324) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(120,340) /sn:0 /w:[ 0 ]
  //: joint g6 (B) @(210, 340) /w:[ 2 -1 1 4 ]
  //: joint g7 (A) @(227, 321) /w:[ 2 -1 1 4 ]
  and g5 (.I0(A), .I1(B), .Z(C));   //: @(276,369) /sn:0 /delay:" 4" /w:[ 5 5 0 ]
  //: input g0 (A) @(120,321) /sn:0 /w:[ 0 ]

endmodule

module CPA(Cin, B, S, A, Cout);
//: interface  /sz:(327, 51) /bd:[ Ti0>A(106/327) Ti1>B(174/327) Ri0>Cin(24/51) Lo0<C4(28/51) Bo0<S3(44/327) Bo1<S2(118/327) Bo2<S1(203/327) Bo3<S0(280/327) ]
input [3:0] B;    //: /sn:0 {0}(734,44)(698,44){1}
//: {2}(697,44)(597,44){3}
//: {4}(596,44)(500,44){5}
//: {6}(499,44)(399,44){7}
//: {8}(398,44)(319,44){9}
input [3:0] A;    //: /sn:0 {0}(319,21)(376,21){1}
//: {2}(377,21)(472,21){3}
//: {4}(473,21)(572,21){5}
//: {6}(573,21)(672,21){7}
//: {8}(673,21)(726,21){9}
input Cin;    //: /sn:0 /dp:1 {0}(720,125)(749,125){1}
output Cout;    //: /sn:0 /dp:1 {0}(354,113)(331,113)(331,181){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(256,247)(168,247){1}
wire A0;    //: /sn:0 {0}(673,86)(673,25){1}
wire w6;    //: /sn:0 {0}(500,48)(500,56)(497,56)(497,80){1}
wire w7;    //: /sn:0 {0}(573,25)(573,83){1}
wire S1;    //: /sn:0 {0}(587,155)(587,242)(262,242){1}
wire w4;    //: /sn:0 {0}(620,122)(650,122){1}
wire A3;    //: /sn:0 {0}(377,77)(377,25){1}
wire w3;    //: /sn:0 {0}(424,116)(450,116){1}
wire w1;    //: /sn:0 /dp:1 {0}(391,149)(391,262)(262,262){1}
wire w8;    //: /sn:0 {0}(597,48)(597,83){1}
wire w2;    //: /sn:0 {0}(473,25)(473,80){1}
wire B3;    //: /sn:0 {0}(401,77)(401,56)(399,56)(399,48){1}
wire w5;    //: /sn:0 {0}(550,119)(520,119){1}
wire B0;    //: /sn:0 {0}(697,86)(697,56)(698,56)(698,48){1}
wire w9;    //: /sn:0 {0}(687,158)(687,232)(262,232){1}
wire S2;    //: /sn:0 {0}(487,152)(487,252)(262,252){1}
//: enddecls

  //: input g8 (Cin) @(751,125) /sn:0 /R:2 /w:[ 1 ]
  tran g4(.Z(w2), .I(A[2]));   //: @(473,19) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  FA g16 (.B(w6), .A(w2), .Cin(w5), .Cout(w3), .S(S2));   //: @(451, 81) /sz:(68, 70) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]
  tran g3(.Z(w7), .I(A[1]));   //: @(573,19) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  FA g17 (.B(B3), .A(A3), .Cin(w3), .Cout(Cout), .S(w1));   //: @(355, 78) /sz:(68, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<0 ]
  tran g2(.Z(A0), .I(A[0]));   //: @(673,19) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  //: input g1 (B) @(317,44) /sn:0 /w:[ 9 ]
  tran g18(.Z(w8), .I(B[1]));   //: @(597,42) /sn:0 /R:1 /w:[ 0 4 3 ] /ss:1
  concat g10 (.I0(w9), .I1(S1), .I2(S2), .I3(w1), .Z(S));   //: @(257,247) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0
  tran g6(.Z(B3), .I(B[3]));   //: @(399,42) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  //: output g9 (S) @(171,247) /sn:0 /R:2 /w:[ 1 ]
  tran g7(.Z(w6), .I(B[2]));   //: @(500,42) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  FA g14 (.B(B0), .A(A0), .Cin(Cin), .Cout(w4), .S(w9));   //: @(651, 87) /sz:(68, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<0 ]
  tran g5(.Z(A3), .I(A[3]));   //: @(377,19) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g19(.Z(B0), .I(B[0]));   //: @(698,42) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  FA g15 (.B(w8), .A(w7), .Cin(w4), .Cout(w5), .S(S1));   //: @(551, 84) /sz:(68, 70) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<0 ]
  //: input g0 (A) @(317,21) /sn:0 /w:[ 0 ]
  //: output g13 (Cout) @(331,178) /sn:0 /R:3 /w:[ 1 ]

endmodule

module main;    //: root_module
wire [15:0] w6;    //: /sn:0 /dp:1 {0}(459,147)(459,228){1}
wire [15:0] w4;    //: /sn:0 {0}(434,328)(434,386){1}
wire w0;    //: /sn:0 {0}(4674,282)(4664,282){1}
wire w3;    //: /sn:0 {0}(325,278)(310,278)(310,280)(296,280){1}
wire w1;    //: /sn:0 {0}(578,274)(562,274)(562,272)(546,272){1}
wire [15:0] w5;    //: /sn:0 {0}(404,116)(404,228){1}
//: enddecls

  //: switch g4 (w1) @(596,274) /sn:0 /R:2 /w:[ 0 ] /st:0
  //: switch g3 (w0) @(4692,282) /sn:0 /R:2 /w:[ 0 ] /st:0
  //: dip g2 (w6) @(459,137) /sn:0 /w:[ 0 ] /st:43690
  //: dip g1 (w5) @(404,106) /sn:0 /w:[ 0 ] /st:43690
  led g6 (.I(w3));   //: @(289,280) /sn:0 /R:1 /w:[ 1 ] /type:0
  led g5 (.I(w4));   //: @(434,393) /sn:0 /R:2 /w:[ 1 ] /type:3
  CSA16b g0 (.B(w6), .A(w5), .Cin(w1), .Cout(w3), .S(w4));   //: @(326, 229) /sz:(219, 98) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]

endmodule

module FA(Cout, S, Cin, B, A);
//: interface  /sz:(169, 168) /bd:[ Ti0>A(54/169) Ti1>B(114/169) Li0>Cin(126/168) Li1>B(84/168) Li2>A(43/168) Li3>Cin(126/168) Li4>B(84/168) Li5>A(43/168) Ri0>Cin(91/168) To0<Cout(98/169) To1<Cout(98/169) Lo0<Cout(84/168) Bo0<S(89/169) Ro0<S(83/168) Ro1<S(83/168) ]
input B;    //: /sn:0 {0}(125,198)(216,198){1}
input A;    //: /sn:0 {0}(125,181)(216,181){1}
input Cin;    //: /sn:0 {0}(132,107)(277,107){1}
output Cout;    //: /sn:0 /dp:1 {0}(385,155)(398,155)(398,153)(419,153){1}
output S;    //: /sn:0 {0}(299,98)(299,67)(317,67){1}
wire w1;    //: /sn:0 {0}(239,175)(239,157)(364,157){1}
wire w8;    //: /sn:0 {0}(259,199)(269,199)(269,121)(277,121){1}
wire w5;    //: /sn:0 {0}(319,114)(354,114)(354,152)(364,152){1}
//: enddecls

  //: output g4 (Cout) @(416,153) /sn:0 /w:[ 1 ]
  //: output g3 (S) @(314,67) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(130,107) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(123,198) /sn:0 /w:[ 0 ]
  HA g6 (.B(w8), .A(Cin), .S(S), .C(w5));   //: @(278, 99) /sz:(40, 40) /sn:0 /p:[ Li0>1 Li1>1 To0<0 Ro0<0 ]
  or g9 (.I0(w5), .I1(w1), .Z(Cout));   //: @(375,155) /sn:0 /delay:" 4" /w:[ 1 1 0 ]
  HA g5 (.B(B), .A(A), .C(w1), .S(w8));   //: @(217, 176) /sz:(41, 40) /sn:0 /p:[ Li0>1 Li1>1 To0<0 Ro0<0 ]
  //: input g0 (A) @(123,181) /sn:0 /w:[ 0 ]

endmodule

module CSA16b(S, B, Cin, Cout, A);
//: interface  /sz:(118, 71) /bd:[ Ti0>A[15:0](42/118) Ti1>B[15:0](71/118) Ri0>Cin(34/71) Lo0<Cout(35/71) Bo0<S[15:0](58/118) ]
input [15:0] B;    //: /sn:0 {0}(741,214)(639,214){1}
//: {2}(638,214)(481,214){3}
//: {4}(480,214)(326,214){5}
//: {6}(325,214)(171,214){7}
//: {8}(170,214)(154,214){9}
input [15:0] A;    //: /sn:0 {0}(740,190)(607,190){1}
//: {2}(606,190)(448,190){3}
//: {4}(447,190)(293,190){5}
//: {6}(292,190)(138,190){7}
//: {8}(137,190)(131,190){9}
input Cin;    //: /sn:0 {0}(740,297)(687,297){1}
output Cout;    //: /sn:0 /dp:1 {0}(100,297)(61,297){1}
output [15:0] S;    //: /sn:0 /dp:1 {0}(722,366)(773,366){1}
wire [3:0] w16;    //: /sn:0 {0}(448,194)(448,262){1}
wire [3:0] w6;    //: /sn:0 {0}(470,337)(470,371)(716,371){1}
wire [3:0] w7;    //: /sn:0 /dp:1 {0}(311,336)(311,361)(716,361){1}
wire [3:0] w25;    //: /sn:0 {0}(639,218)(639,262){1}
wire [3:0] w4;    //: /sn:0 {0}(629,337)(629,381)(716,381){1}
wire [3:0] w3;    //: /sn:0 {0}(326,218)(326,262){1}
wire [3:0] w0;    //: /sn:0 {0}(138,194)(138,262){1}
wire w19;    //: /sn:0 {0}(410,297)(392,297)(392,296)(374,296){1}
wire [3:0] w24;    //: /sn:0 {0}(607,194)(607,202)(606,202)(606,262){1}
wire [3:0] w1;    //: /sn:0 {0}(171,218)(171,262){1}
wire [3:0] w8;    //: /sn:0 /dp:1 {0}(156,337)(156,351)(716,351){1}
wire w27;    //: /sn:0 {0}(568,297)(529,297){1}
wire [3:0] w17;    //: /sn:0 {0}(481,218)(481,262){1}
wire [3:0] w2;    //: /sn:0 {0}(293,194)(293,262){1}
wire w5;    //: /sn:0 {0}(255,296)(237,296)(237,297)(219,297){1}
//: enddecls

  tran g8(.Z(w16), .I(A[7:4]));   //: @(448,188) /sn:0 /R:1 /anc:1 /w:[ 0 4 3 ] /ss:1
  CSA g4 (.B(w17), .A(w16), .Cin(w27), .Cout(w19), .S(w6));   //: @(411, 263) /sz:(117, 73) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  CSA g3 (.B(w3), .A(w2), .Cin(w19), .Cout(w5), .S(w7));   //: @(256, 263) /sz:(117, 72) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  concat g16 (.I0(w4), .I1(w6), .I2(w7), .I3(w8), .Z(S));   //: @(721,366) /sn:0 /w:[ 1 1 1 1 0 ] /dr:0
  //: output g17 (S) @(770,366) /sn:0 /w:[ 1 ]
  //: input g2 (B) @(743,214) /sn:0 /R:2 /w:[ 0 ]
  CSA g1 (.B(w1), .A(w0), .Cin(w5), .Cout(Cout), .S(w8));   //: @(101, 263) /sz:(117, 73) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  tran g10(.Z(w0), .I(A[15:12]));   //: @(138,188) /sn:0 /R:1 /w:[ 0 8 7 ] /ss:1
  //: input g6 (Cin) @(742,297) /sn:0 /R:2 /w:[ 0 ]
  tran g9(.Z(w24), .I(A[3:0]));   //: @(607,188) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  tran g7(.Z(w2), .I(A[11:8]));   //: @(293,188) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  tran g12(.Z(w17), .I(B[7:4]));   //: @(481,212) /sn:0 /R:1 /w:[ 0 4 3 ] /ss:1
  tran g14(.Z(w1), .I(B[15:12]));   //: @(171,212) /sn:0 /R:1 /w:[ 0 8 7 ] /ss:1
  tran g11(.Z(w3), .I(B[11:8]));   //: @(326,212) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  CPA g5 (.B(w25), .A(w24), .Cin(Cin), .Cout(w27), .S(w4));   //: @(569, 263) /sz:(117, 73) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  //: output g15 (Cout) @(64,297) /sn:0 /R:2 /w:[ 1 ]
  //: input g0 (A) @(742,190) /sn:0 /R:2 /w:[ 0 ]
  tran g13(.Z(w25), .I(B[3:0]));   //: @(639,212) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1

endmodule
