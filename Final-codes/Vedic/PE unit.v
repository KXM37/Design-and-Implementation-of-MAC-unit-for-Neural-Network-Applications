module PE_Unit (I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,W0,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,Main_Out);
  input [7:0]I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
  input [7:0]W0,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15;
  output [15:0]Main_Out;

  wire [15:0]Mul0,Mul1,Mul2,Mul3,Mul4,Mul5,Mul6,Mul7,Mul8,Mul9,Mul10,Mul11,Mul12,Mul13,Mul14,Mul15;
  
  wire [15:0]Add_S1_0,Add_S1_1,Add_S1_2,Add_S1_3,Add_S1_4,Add_S1_5,Add_S1_6,Add_S1_7,Add_S1_8,Add_S1_9,Add_S1_10,Add_S1_11;

  wire [15:0]Add_S2_0,Add_S2_1;
  
  Vedic_8x8_Multiplier M0 (.a(I0),.b(W0),.c(Mul0));
  Vedic_8x8_Multiplier M1 (.a(I1),.b(W1),.c(Mul1));
  Vedic_8x8_Multiplier M2 (.a(I2),.b(W2),.c(Mul2));
  Vedic_8x8_Multiplier M3 (.a(I3),.b(W3),.c(Mul3));
  Vedic_8x8_Multiplier M4 (.a(I4),.b(W4),.c(Mul4));
  Vedic_8x8_Multiplier M5 (.a(I5),.b(W5),.c(Mul5));
  Vedic_8x8_Multiplier M6 (.a(I6),.b(W6),.c(Mul6));
  Vedic_8x8_Multiplier M7 (.a(I7),.b(W7),.c(Mul7));
  Vedic_8x8_Multiplier M8 (.a(I8),.b(W8),.c(Mul8));
  Vedic_8x8_Multiplier M9 (.a(I9),.b(W9),.c(Mul9));
  Vedic_8x8_Multiplier M10 (.a(I10),.b(W10),.c(Mul10));
  Vedic_8x8_Multiplier M11 (.a(I11),.b(W11),.c(Mul11));
  Vedic_8x8_Multiplier M12 (.a(I12),.b(W12),.c(Mul12));
  Vedic_8x8_Multiplier M13 (.a(I13),.b(W13),.c(Mul13));
  Vedic_8x8_Multiplier M14 (.a(I14),.b(W14),.c(Mul14));
  Vedic_8x8_Multiplier M15 (.a(I15),.b(W15),.c(Mul15));
  
  
  //////////////////////Adder Stage 1//////////////////////
  
  
  assign Add_S1_0=Mul0+Mul1;
  assign Add_S1_1=Mul2+Mul3;
  assign Add_S1_2=Mul4+Mul5;
  assign Add_S1_3=Mul6+Mul7;
  assign Add_S1_4=Mul8+Mul9;
  assign Add_S1_5=Mul10+Mul11;
  assign Add_S1_6=Mul12+Mul13;
  assign Add_S1_7=Mul14+Mul15;
  
//////////////////////////////////////////////////////////////////
  
  assign Add_S1_8=Add_S1_0+Add_S1_1;
  assign Add_S1_9=Add_S1_2+Add_S1_3;
  assign Add_S1_10=Add_S1_4+Add_S1_5;
  assign Add_S1_11=Add_S1_6+Add_S1_7;  
  
  
  /////////////////// Adder Stage 2////////////////////////
  
  
  assign Add_S2_0=Add_S1_8+Add_S1_9;
  assign Add_S2_1=Add_S1_10+Add_S1_11;
  
  assign Main_Out=Add_S2_0+Add_S2_1;
  
endmodule