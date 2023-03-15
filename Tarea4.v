//: version "1.8.7"

module HA(C, S, B, A);
//: interface  /sz:(263, 230) /bd:[ Li0>B(127/230) Li1>A(49/230) To0<C(143/263) Ro0<S(91/230) ]
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
//: interface  /sz:(327, 51) /bd:[ Ti0>B(174/327) Ti1>A(106/327) Ri0>Cin(24/51) Lo0<C4(28/51) Bo0<S0(280/327) Bo1<S1(203/327) Bo2<S2(118/327) Bo3<S3(44/327) ]
input [3:0] B;    //: /sn:0 {0}(734,44)(698,44){1}
//: {2}(697,44)(597,44){3}
//: {4}(596,44)(500,44){5}
//: {6}(499,44)(399,44){7}
//: {8}(398,44)(319,44){9}
input [3:0] A;    //: /sn:0 {0}(319,21)(377,21){1}
//: {2}(378,21)(471,21){3}
//: {4}(472,21)(572,21){5}
//: {6}(573,21)(671,21){7}
//: {8}(672,21)(725,21){9}
input Cin;    //: /sn:0 /dp:1 {0}(720,125)(749,125){1}
output Cout;    //: /sn:0 /dp:1 {0}(354,113)(331,113)(331,181){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(256,247)(168,247){1}
wire w6;    //: /sn:0 {0}(500,48)(500,56)(497,56)(497,80){1}
wire A0;    //: /sn:0 {0}(673,86)(673,33)(672,33)(672,25){1}
wire S1;    //: /sn:0 {0}(587,155)(587,242)(262,242){1}
wire w7;    //: /sn:0 {0}(573,25)(573,83){1}
wire w4;    //: /sn:0 {0}(620,122)(650,122){1}
wire A3;    //: /sn:0 {0}(377,77)(377,33)(378,33)(378,25){1}
wire w3;    //: /sn:0 {0}(424,116)(450,116){1}
wire w1;    //: /sn:0 /dp:1 {0}(391,149)(391,262)(262,262){1}
wire w8;    //: /sn:0 {0}(597,48)(597,83){1}
wire w2;    //: /sn:0 {0}(472,25)(472,33)(473,33)(473,80){1}
wire w5;    //: /sn:0 {0}(550,119)(520,119){1}
wire B3;    //: /sn:0 {0}(401,77)(401,56)(399,56)(399,48){1}
wire w9;    //: /sn:0 {0}(687,158)(687,232)(262,232){1}
wire B0;    //: /sn:0 {0}(697,86)(697,56)(698,56)(698,48){1}
wire S2;    //: /sn:0 {0}(487,152)(487,252)(262,252){1}
//: enddecls

  tran g4(.Z(w2), .I(A[2]));   //: @(472,19) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  //: input g8 (Cin) @(751,125) /sn:0 /R:2 /w:[ 1 ]
  tran g3(.Z(w7), .I(A[1]));   //: @(573,19) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  FA g16 (.B(w6), .A(w2), .Cin(w5), .Cout(w3), .S(S2));   //: @(451, 81) /sz:(68, 70) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]
  FA g17 (.B(B3), .A(A3), .Cin(w3), .Cout(Cout), .S(w1));   //: @(355, 78) /sz:(68, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<0 ]
  tran g2(.Z(A0), .I(A[0]));   //: @(672,19) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  //: input g1 (B) @(317,44) /sn:0 /w:[ 9 ]
  tran g18(.Z(w8), .I(B[1]));   //: @(597,42) /sn:0 /R:1 /w:[ 0 4 3 ] /ss:1
  concat g10 (.I0(w9), .I1(S1), .I2(S2), .I3(w1), .Z(S));   //: @(257,247) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0
  tran g6(.Z(B3), .I(B[3]));   //: @(399,42) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  tran g7(.Z(w6), .I(B[2]));   //: @(500,42) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  //: output g9 (S) @(171,247) /sn:0 /R:2 /w:[ 1 ]
  tran g5(.Z(A3), .I(A[3]));   //: @(378,19) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  FA g14 (.B(B0), .A(A0), .Cin(Cin), .Cout(w4), .S(w9));   //: @(651, 87) /sz:(68, 70) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<0 ]
  tran g19(.Z(B0), .I(B[0]));   //: @(698,42) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  //: input g0 (A) @(317,21) /sn:0 /w:[ 0 ]
  FA g15 (.B(w8), .A(w7), .Cin(w4), .Cout(w5), .S(S1));   //: @(551, 84) /sz:(68, 70) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<0 Bo0<0 ]
  //: output g13 (Cout) @(331,178) /sn:0 /R:3 /w:[ 1 ]

endmodule

module FA(Cout, S, Cin, B, A);
//: interface  /sz:(68, 70) /bd:[ Ti0>B(46/68) Ti1>A(22/68) Ri0>Cin(38/70) Lo0<Cout(35/70) Bo0<S(36/68) ]
input B;    //: /sn:0 {0}(125,198)(216,198){1}
input A;    //: /sn:0 {0}(125,181)(216,181){1}
input Cin;    //: /sn:0 {0}(132,107)(277,107){1}
output Cout;    //: /sn:0 /dp:1 {0}(392,153)(419,153){1}
output S;    //: /sn:0 {0}(299,98)(299,67)(317,67){1}
wire w1;    //: /sn:0 {0}(239,175)(239,155)(371,155){1}
wire w8;    //: /sn:0 {0}(259,199)(269,199)(269,121)(277,121){1}
wire w5;    //: /sn:0 {0}(319,114)(361,114)(361,150)(371,150){1}
//: enddecls

  //: output g4 (Cout) @(416,153) /sn:0 /w:[ 1 ]
  //: output g3 (S) @(314,67) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(130,107) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(123,198) /sn:0 /w:[ 0 ]
  HA g6 (.B(w8), .A(Cin), .S(S), .C(w5));   //: @(278, 99) /sz:(40, 40) /sn:0 /p:[ Li0>1 Li1>1 To0<0 Ro0<0 ]
  or g9 (.I0(w5), .I1(w1), .Z(Cout));   //: @(382,153) /sn:0 /delay:" 4" /w:[ 1 1 0 ]
  HA g5 (.B(B), .A(A), .C(w1), .S(w8));   //: @(217, 176) /sz:(41, 40) /sn:0 /p:[ Li0>1 Li1>1 To0<0 Ro0<0 ]
  //: input g0 (A) @(123,181) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire [3:0] B;    //: /sn:0 {0}(434,57)(434,112){1}
wire [4:0] D5BitS;    //: /sn:0 /dp:1 {0}(326,319)(397,319)(397,341){1}
wire [3:0] A;    //: /sn:0 {0}(280,59)(280,112){1}
wire w0;    //: /sn:0 {0}(-15858,682)(-15868,682){1}
wire w1;    //: /sn:0 {0}(-15807,680)(-15817,680){1}
wire Cin;    //: /sn:0 /dp:1 {0}(707,165)(736,165){1}
wire Cout;    //: /sn:0 /dp:1 {0}(320,314)(110,314)(110,185)(141,185){1}
wire w2;    //: /sn:0 {0}(-19923,685)(-19913,685){1}
wire [3:0] S;    //: /sn:0 /dp:1 {0}(320,324)(290,324)(290,287)(395,287)(395,252){1}
//: enddecls

  concat g4 (.I0(S), .I1(Cout), .Z(D5BitS));   //: @(325,319) /sn:0 /w:[ 0 0 0 ] /dr:0
  //: dip g3 (B) @(434,47) /sn:0 /w:[ 0 ] /st:2
  //: switch g16 (w2) @(-19940,685) /sn:0 /w:[ 0 ] /st:0
  //: switch g17 (Cin) @(754,165) /sn:0 /R:2 /w:[ 1 ] /st:0
  //: dip g2 (A) @(280,49) /sn:0 /w:[ 0 ] /st:3
  led g1 (.I(D5BitS));   //: @(397,348) /sn:0 /R:2 /w:[ 1 ] /type:3
  //: switch g14 (w0) @(-15840,682) /sn:0 /R:2 /w:[ 0 ] /st:0
  CPA g0 (.B(B), .A(A), .Cin(Cin), .Cout(Cout), .S(S));   //: @(142, 113) /sz:(564, 138) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]
  //: switch g15 (w1) @(-15789,680) /sn:0 /R:2 /w:[ 0 ] /st:0

endmodule
