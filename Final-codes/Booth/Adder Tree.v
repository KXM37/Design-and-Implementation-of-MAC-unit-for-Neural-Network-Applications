module Adder_Tree (PP0,PP1,PP2,PP3,PP4,P);
  input [15:0]PP0;
  input [13:0]PP1;
  input [11:0]PP2;
  input [9:0]PP3;
  input [7:0]PP4;
  output [15:0]P;
  
  wire W0,W1;
  wire [2:0]W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12;
    
  assign P[0]=PP0[0];
  assign P[1]=PP0[1];  
  assign {W0,P[2]}=PP0[2]+PP1[0];
  assign {W1,P[3]}=PP0[3]+PP1[1]+W0;
  assign {W2,P[4]}=PP0[4]+PP1[2]+PP2[0]+W1;
  assign {W3,P[5]}=PP0[5]+PP1[3]+PP2[1]+W2;
  assign {W4,P[6]}=PP0[6]+PP1[4]+PP2[2]+PP3[0]+W3;
  assign {W5,P[7]}=PP0[7]+PP1[5]+PP2[3]+PP3[1]+W4;
  assign {W6,P[8]}=PP0[8]+PP1[6]+PP2[4]+PP3[2]+PP4[0]+W5;        
  assign {W7,P[9]}=PP0[9]+PP1[7]+PP2[5]+PP3[3]+PP4[1]+W6;        
  assign {W8,P[10]}=PP0[10]+PP1[8]+PP2[6]+PP3[4]+PP4[2]+W7;        
  assign {W9,P[11]}=PP0[11]+PP1[9]+PP2[7]+PP3[5]+PP4[3]+W8;
  assign {W10,P[12]}=PP0[12]+PP1[10]+PP2[8]+PP3[6]+PP4[4]+W9;        
  assign {W11,P[13]}=PP0[13]+PP1[11]+PP2[9]+PP3[7]+PP4[5]+W10;        
  assign {W12,P[14]}=PP0[14]+PP1[12]+PP2[10]+PP3[8]+PP4[6]+W11;        
  assign P[15]=PP0[15]+PP1[13]+PP2[11]+PP3[9]+PP4[7]+W12;        
  
endmodule