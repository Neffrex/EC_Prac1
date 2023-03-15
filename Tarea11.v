//: version "1.8.7"

module PFA(P, S, Cin, B, G, A);
//: interface  /sz:(210, 177) /bd:[ Ti0>B(156/210) Ti1>A(55/210) Ri0>Cin(81/177) Bo0<P(54/210) Bo1<G(108/210) Bo2<S(170/210) ]
input B;    //: /sn:0 {0}(124,181)(135,181){1}
//: {2}(139,181)(184,181){3}
//: {4}(137,183)(137,216){5}
//: {6}(139,218)(212,218){7}
//: {8}(137,220)(137,242)(211,242){9}
input A;    //: /sn:0 {0}(124,171)(143,171){1}
//: {2}(147,171)(174,171)(174,176)(184,176){3}
//: {4}(145,173)(145,211){5}
//: {6}(147,213)(212,213){7}
//: {8}(145,215)(145,237)(211,237){9}
output G;    //: /sn:0 /dp:1 {0}(232,240)(289,240){1}
input Cin;    //: /sn:0 {0}(124,192)(234,192)(234,189)(244,189){1}
output P;    //: /sn:0 /dp:1 {0}(233,216)(288,216){1}
output S;    //: /sn:0 /dp:1 {0}(265,187)(288,187){1}
wire w2;    //: /sn:0 {0}(205,179)(234,179)(234,184)(244,184){1}
//: enddecls

  //: output g4 (P) @(285,216) /sn:0 /w:[ 1 ]
  and g8 (.I0(A), .I1(B), .Z(G));   //: @(222,240) /sn:0 /delay:" 4" /w:[ 9 9 0 ]
  //: output g3 (S) @(285,187) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(122,192) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(122,181) /sn:0 /w:[ 0 ]
  //: joint g10 (B) @(137, 181) /w:[ 2 -1 1 4 ]
  xor g6 (.I0(A), .I1(B), .Z(w2));   //: @(195,179) /sn:0 /delay:" 5" /w:[ 3 3 0 ]
  xor g7 (.I0(w2), .I1(Cin), .Z(S));   //: @(255,187) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  or g9 (.I0(A), .I1(B), .Z(P));   //: @(223,216) /sn:0 /delay:" 4" /w:[ 7 7 0 ]
  //: joint g12 (A) @(145, 213) /w:[ 6 5 -1 8 ]
  //: output g5 (G) @(286,240) /sn:0 /w:[ 1 ]
  //: joint g11 (A) @(145, 171) /w:[ 2 -1 1 4 ]
  //: input g0 (A) @(122,171) /sn:0 /w:[ 0 ]
  //: joint g13 (B) @(137, 218) /w:[ 6 5 -1 8 ]

endmodule

module main;    //: root_module
wire B;    //: /sn:0 {0}(323,50)(323,86){1}
wire A;    //: /sn:0 {0}(222,47)(222,86){1}
wire G;    //: /sn:0 {0}(275,265)(275,294){1}
wire Cin;    //: /sn:0 /dp:1 {0}(406,168)(378,168){1}
wire P;    //: /sn:0 {0}(221,265)(221,293){1}
wire S;    //: /sn:0 {0}(337,265)(337,294){1}
//: enddecls

  led g4 (.I(P));   //: @(221,300) /sn:0 /R:2 /w:[ 1 ] /type:0
  //: switch g3 (Cin) @(424,168) /sn:0 /R:2 /w:[ 0 ] /st:0
  //: switch g2 (B) @(323,37) /sn:0 /R:3 /w:[ 0 ] /st:0
  //: switch g1 (A) @(222,34) /sn:0 /R:3 /w:[ 0 ] /st:0
  led g6 (.I(S));   //: @(337,301) /sn:0 /R:2 /w:[ 1 ] /type:0
  led g5 (.I(G));   //: @(275,301) /sn:0 /R:2 /w:[ 1 ] /type:0
  PFA g0 (.B(B), .A(A), .Cin(Cin), .P(P), .G(G), .S(S));   //: @(167, 87) /sz:(210, 177) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Bo0<0 Bo1<0 Bo2<0 ]

endmodule
