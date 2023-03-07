module CNN_Accelerator_Design_Booth (Clk,Rst,In0,In1,In2,In3,In4,In5,In6,In7,In8,In9,In10,In11,In12,In13,In14,In15,W0_0,W0_1,W0_2,W0_3,W0_4,W0_5,W0_6,W0_7,W0_8,W0_9,W0_10,W0_11,W0_12,W0_13,W0_14,W0_15,
W1_0,W1_1,W1_2,W1_3,W1_4,W1_5,W1_6,W1_7,W1_8,W1_9,W1_10,W1_11,W1_12,W1_13,W1_14,W1_15,
W2_0,W2_1,W2_2,W2_3,W2_4,W2_5,W2_6,W2_7,W2_8,W2_9,W2_10,W2_11,W2_12,W2_13,W2_14,W2_15,
W3_0,W3_1,W3_2,W3_3,W3_4,W3_5,W3_6,W3_7,W3_8,W3_9,W3_10,W3_11,W3_12,W3_13,W3_14,W3_15,
CNN_OUT);

input Clk,Rst;

  input [7:0]In0,In1,In2,In3,In4,In5,In6,In7,In8,In9,In10,In11,In12,In13,In14,In15;
  input [7:0]W0_0,W0_1,W0_2,W0_3,W0_4,W0_5,W0_6,W0_7,W0_8,W0_9,W0_10,W0_11,W0_12,W0_13,W0_14,W0_15;
  input [7:0]W1_0,W1_1,W1_2,W1_3,W1_4,W1_5,W1_6,W1_7,W1_8,W1_9,W1_10,W1_11,W1_12,W1_13,W1_14,W1_15;
  input [7:0]W2_0,W2_1,W2_2,W2_3,W2_4,W2_5,W2_6,W2_7,W2_8,W2_9,W2_10,W2_11,W2_12,W2_13,W2_14,W2_15;
  input [7:0]W3_0,W3_1,W3_2,W3_3,W3_4,W3_5,W3_6,W3_7,W3_8,W3_9,W3_10,W3_11,W3_12,W3_13,W3_14,W3_15;
  
  output [15:0]CNN_OUT;


  wire [7:0]W0_Out0,W0_Out1,W0_Out2,W0_Out3,W0_Out4,W0_Out5,W0_Out6,W0_Out7,W0_Out8,W0_Out9,W0_Out10,W0_Out11,W0_Out12,W0_Out13,W0_Out14,W0_Out15;
  wire [7:0]W1_Out0,W1_Out1,W1_Out2,W1_Out3,W1_Out4,W1_Out5,W1_Out6,W1_Out7,W1_Out8,W1_Out9,W1_Out10,W1_Out11,W1_Out12,W1_Out13,W1_Out14,W1_Out15;
  wire [7:0]W2_Out0,W2_Out1,W2_Out2,W2_Out3,W2_Out4,W2_Out5,W2_Out6,W2_Out7,W2_Out8,W2_Out9,W2_Out10,W2_Out11,W2_Out12,W2_Out13,W2_Out14,W2_Out15;
  wire [7:0]W3_Out0,W3_Out1,W3_Out2,W3_Out3,W3_Out4,W3_Out5,W3_Out6,W3_Out7,W3_Out8,W3_Out9,W3_Out10,W3_Out11,W3_Out12,W3_Out13,W3_Out14,W3_Out15;
  
  wire [7:0]I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;

  wire [15:0]Main_Out1,Main_Out4,Main_Out2,Main_Out3,Max_Out; 
  wire  maxPoolingDone;
  
  Input_Buffer Buff0 (.Clk(Clk),.Rst(Rst),.In(In0),.Out(I0)); 
  Input_Buffer Buff1 (.Clk(Clk),.Rst(Rst),.In(In1),.Out(I1)); 
  Input_Buffer Buff2 (.Clk(Clk),.Rst(Rst),.In(In2),.Out(I2)); 
  Input_Buffer Buff3 (.Clk(Clk),.Rst(Rst),.In(In3),.Out(I3)); 
  Input_Buffer Buff4 (.Clk(Clk),.Rst(Rst),.In(In4),.Out(I4)); 
  Input_Buffer Buff5 (.Clk(Clk),.Rst(Rst),.In(In5),.Out(I5)); 
  Input_Buffer Buff6 (.Clk(Clk),.Rst(Rst),.In(In6),.Out(I6)); 
  Input_Buffer Buff7 (.Clk(Clk),.Rst(Rst),.In(In7),.Out(I7)); 
  Input_Buffer Buff8 (.Clk(Clk),.Rst(Rst),.In(In8),.Out(I8)); 
  Input_Buffer Buff9 (.Clk(Clk),.Rst(Rst),.In(In9),.Out(I9)); 
  Input_Buffer Buff10 (.Clk(Clk),.Rst(Rst),.In(In10),.Out(I10)); 
  Input_Buffer Buff11 (.Clk(Clk),.Rst(Rst),.In(In11),.Out(I11)); 
  Input_Buffer Buff12 (.Clk(Clk),.Rst(Rst),.In(In12),.Out(I12)); 
  Input_Buffer Buff13 (.Clk(Clk),.Rst(Rst),.In(In13),.Out(I13)); 
  Input_Buffer Buff14 (.Clk(Clk),.Rst(Rst),.In(In14),.Out(I14)); 
  Input_Buffer Buff15 (.Clk(Clk),.Rst(Rst),.In(In15),.Out(I15));  
  
  
  
  Input_Buffer W0_Buff0 (.Clk(Clk),.Rst(Rst),.In(W0_0),.Out(W0_Out0)); 
  Input_Buffer W0_Buff1 (.Clk(Clk),.Rst(Rst),.In(W0_1),.Out(W0_Out1)); 
  Input_Buffer W0_Buff2 (.Clk(Clk),.Rst(Rst),.In(W0_2),.Out(W0_Out2)); 
  Input_Buffer W0_Buff3 (.Clk(Clk),.Rst(Rst),.In(W0_3),.Out(W0_Out3)); 
  Input_Buffer W0_Buff4 (.Clk(Clk),.Rst(Rst),.In(W0_4),.Out(W0_Out4)); 
  Input_Buffer W0_Buff5 (.Clk(Clk),.Rst(Rst),.In(W0_5),.Out(W0_Out5)); 
  Input_Buffer W0_Buff6 (.Clk(Clk),.Rst(Rst),.In(W0_6),.Out(W0_Out6)); 
  Input_Buffer W0_Buff7 (.Clk(Clk),.Rst(Rst),.In(W0_7),.Out(W0_Out7)); 
  Input_Buffer W0_Buff8 (.Clk(Clk),.Rst(Rst),.In(W0_8),.Out(W0_Out8)); 
  Input_Buffer W0_Buff9 (.Clk(Clk),.Rst(Rst),.In(W0_9),.Out(W0_Out9)); 
  Input_Buffer W0_Buff10 (.Clk(Clk),.Rst(Rst),.In(W0_10),.Out(W0_Out10)); 
  Input_Buffer W0_Buff11 (.Clk(Clk),.Rst(Rst),.In(W0_11),.Out(W0_Out11)); 
  Input_Buffer W0_Buff12 (.Clk(Clk),.Rst(Rst),.In(W0_12),.Out(W0_Out12)); 
  Input_Buffer W0_Buff13 (.Clk(Clk),.Rst(Rst),.In(W0_13),.Out(W0_Out13)); 
  Input_Buffer W0_Buff14 (.Clk(Clk),.Rst(Rst),.In(W0_14),.Out(W0_Out14)); 
  Input_Buffer W0_Buff15 (.Clk(Clk),.Rst(Rst),.In(W0_15),.Out(W0_Out15)); 
  

  Input_Buffer W1_Buff0 (.Clk(Clk),.Rst(Rst),.In(W1_0),.Out(W1_Out0)); 
  Input_Buffer W1_Buff1 (.Clk(Clk),.Rst(Rst),.In(W1_1),.Out(W1_Out1)); 
  Input_Buffer W1_Buff2 (.Clk(Clk),.Rst(Rst),.In(W1_2),.Out(W1_Out2)); 
  Input_Buffer W1_Buff3 (.Clk(Clk),.Rst(Rst),.In(W1_3),.Out(W1_Out3)); 
  Input_Buffer W1_Buff4 (.Clk(Clk),.Rst(Rst),.In(W1_4),.Out(W1_Out4)); 
  Input_Buffer W1_Buff5 (.Clk(Clk),.Rst(Rst),.In(W1_5),.Out(W1_Out5)); 
  Input_Buffer W1_Buff6 (.Clk(Clk),.Rst(Rst),.In(W1_6),.Out(W1_Out6)); 
  Input_Buffer W1_Buff7 (.Clk(Clk),.Rst(Rst),.In(W1_7),.Out(W1_Out7)); 
  Input_Buffer W1_Buff8 (.Clk(Clk),.Rst(Rst),.In(W1_8),.Out(W1_Out8)); 
  Input_Buffer W1_Buff9 (.Clk(Clk),.Rst(Rst),.In(W1_9),.Out(W1_Out9)); 
  Input_Buffer W1_Buff10 (.Clk(Clk),.Rst(Rst),.In(W1_10),.Out(W1_Out10)); 
  Input_Buffer W1_Buff11 (.Clk(Clk),.Rst(Rst),.In(W1_11),.Out(W1_Out11)); 
  Input_Buffer W1_Buff12 (.Clk(Clk),.Rst(Rst),.In(W1_12),.Out(W1_Out12)); 
  Input_Buffer W1_Buff13 (.Clk(Clk),.Rst(Rst),.In(W1_13),.Out(W1_Out13)); 
  Input_Buffer W1_Buff14 (.Clk(Clk),.Rst(Rst),.In(W1_14),.Out(W1_Out14)); 
  Input_Buffer W1_Buff15 (.Clk(Clk),.Rst(Rst),.In(W1_15),.Out(W1_Out15)); 
  
  
  
  Input_Buffer W2_Buff0 (.Clk(Clk),.Rst(Rst),.In(W2_0),.Out(W2_Out0)); 
  Input_Buffer W2_Buff1 (.Clk(Clk),.Rst(Rst),.In(W2_1),.Out(W2_Out1)); 
  Input_Buffer W2_Buff2 (.Clk(Clk),.Rst(Rst),.In(W2_2),.Out(W2_Out2)); 
  Input_Buffer W2_Buff3 (.Clk(Clk),.Rst(Rst),.In(W2_3),.Out(W2_Out3)); 
  Input_Buffer W2_Buff4 (.Clk(Clk),.Rst(Rst),.In(W2_4),.Out(W2_Out4)); 
  Input_Buffer W2_Buff5 (.Clk(Clk),.Rst(Rst),.In(W2_5),.Out(W2_Out5)); 
  Input_Buffer W2_Buff6 (.Clk(Clk),.Rst(Rst),.In(W2_6),.Out(W2_Out6)); 
  Input_Buffer W2_Buff7 (.Clk(Clk),.Rst(Rst),.In(W2_7),.Out(W2_Out7)); 
  Input_Buffer W2_Buff8 (.Clk(Clk),.Rst(Rst),.In(W2_8),.Out(W2_Out8)); 
  Input_Buffer W2_Buff9 (.Clk(Clk),.Rst(Rst),.In(W2_9),.Out(W2_Out9)); 
  Input_Buffer W2_Buff10 (.Clk(Clk),.Rst(Rst),.In(W2_10),.Out(W2_Out10)); 
  Input_Buffer W2_Buff11 (.Clk(Clk),.Rst(Rst),.In(W2_11),.Out(W2_Out11)); 
  Input_Buffer W2_Buff12 (.Clk(Clk),.Rst(Rst),.In(W2_12),.Out(W2_Out12)); 
  Input_Buffer W2_Buff13 (.Clk(Clk),.Rst(Rst),.In(W2_13),.Out(W2_Out13)); 
  Input_Buffer W2_Buff14 (.Clk(Clk),.Rst(Rst),.In(W2_14),.Out(W2_Out14)); 
  Input_Buffer W2_Buff15 (.Clk(Clk),.Rst(Rst),.In(W2_15),.Out(W2_Out15)); 
  
  
  Input_Buffer W3_Buff0 (.Clk(Clk),.Rst(Rst),.In(W3_0),.Out(W3_Out0)); 
  Input_Buffer W3_Buff1 (.Clk(Clk),.Rst(Rst),.In(W3_1),.Out(W3_Out1)); 
  Input_Buffer W3_Buff2 (.Clk(Clk),.Rst(Rst),.In(W3_2),.Out(W3_Out2)); 
  Input_Buffer W3_Buff3 (.Clk(Clk),.Rst(Rst),.In(W3_3),.Out(W3_Out3)); 
  Input_Buffer W3_Buff4 (.Clk(Clk),.Rst(Rst),.In(W3_4),.Out(W3_Out4)); 
  Input_Buffer W3_Buff5 (.Clk(Clk),.Rst(Rst),.In(W3_5),.Out(W3_Out5)); 
  Input_Buffer W3_Buff6 (.Clk(Clk),.Rst(Rst),.In(W3_6),.Out(W3_Out6)); 
  Input_Buffer W3_Buff7 (.Clk(Clk),.Rst(Rst),.In(W3_7),.Out(W3_Out7)); 
  Input_Buffer W3_Buff8 (.Clk(Clk),.Rst(Rst),.In(W3_8),.Out(W3_Out8)); 
  Input_Buffer W3_Buff9 (.Clk(Clk),.Rst(Rst),.In(W3_9),.Out(W3_Out9)); 
  Input_Buffer W3_Buff10 (.Clk(Clk),.Rst(Rst),.In(W3_10),.Out(W3_Out10)); 
  Input_Buffer W3_Buff11 (.Clk(Clk),.Rst(Rst),.In(W3_11),.Out(W3_Out11)); 
  Input_Buffer W3_Buff12 (.Clk(Clk),.Rst(Rst),.In(W3_12),.Out(W3_Out12)); 
  Input_Buffer W3_Buff13 (.Clk(Clk),.Rst(Rst),.In(W3_13),.Out(W3_Out13)); 
  Input_Buffer W3_Buff14 (.Clk(Clk),.Rst(Rst),.In(W3_14),.Out(W3_Out14)); 
  Input_Buffer W3_Buff15 (.Clk(Clk),.Rst(Rst),.In(W3_15),.Out(W3_Out15)); 
  
  
  PE_Unit Computation_Engine1 (
    .I0(I0), 
    .I1(I1), 
    .I2(I2), 
    .I3(I3), 
    .I4(I4), 
    .I5(I5), 
    .I6(I6), 
    .I7(I7), 
    .I8(I8), 
    .I9(I9), 
    .I10(I10), 
    .I11(I11), 
    .I12(I12), 
    .I13(I13), 
    .I14(I14), 
    .I15(I15), 
    .W0(W0_Out0), 
    .W1(W0_Out1), 
    .W2(W0_Out2), 
    .W3(W0_Out3), 
    .W4(W0_Out4), 
    .W5(W0_Out5), 
    .W6(W0_Out6), 
    .W7(W0_Out7), 
    .W8(W0_Out8), 
    .W9(W0_Out9), 
    .W10(W0_Out10), 
    .W11(W0_Out11), 
    .W12(W0_Out12), 
    .W13(W0_Out13), 
    .W14(W0_Out14), 
    .W15(W0_Out15), 
    .Main_Out(Main_Out1)
    );

  PE_Unit Computation_Engine2 (
    .I0(I0), 
    .I1(I1), 
    .I2(I2), 
    .I3(I3), 
    .I4(I4), 
    .I5(I5), 
    .I6(I6), 
    .I7(I7), 
    .I8(I8), 
    .I9(I9), 
    .I10(I10), 
    .I11(I11), 
    .I12(I12), 
    .I13(I13), 
    .I14(I14), 
    .I15(I15), 
    .W0(W1_Out0), 
    .W1(W1_Out1), 
    .W2(W1_Out2), 
    .W3(W1_Out3), 
    .W4(W1_Out4), 
    .W5(W1_Out5), 
    .W6(W1_Out6), 
    .W7(W1_Out7), 
    .W8(W1_Out8), 
    .W9(W1_Out9), 
    .W10(W1_Out10), 
    .W11(W1_Out11), 
    .W12(W1_Out12), 
    .W13(W1_Out13), 
    .W14(W1_Out14), 
    .W15(W1_Out15), 
    .Main_Out(Main_Out2)
    );


  PE_Unit Computation_Engine3 (
    .I0(I0), 
    .I1(I1), 
    .I2(I2), 
    .I3(I3), 
    .I4(I4), 
    .I5(I5), 
    .I6(I6), 
    .I7(I7), 
    .I8(I8), 
    .I9(I9), 
    .I10(I10), 
    .I11(I11), 
    .I12(I12), 
    .I13(I13), 
    .I14(I14), 
    .I15(I15), 
    .W0(W2_Out0), 
    .W1(W2_Out1), 
    .W2(W2_Out2), 
    .W3(W2_Out3), 
    .W4(W2_Out4), 
    .W5(W2_Out5), 
    .W6(W2_Out6), 
    .W7(W2_Out7), 
    .W8(W2_Out8), 
    .W9(W2_Out9), 
    .W10(W2_Out10), 
    .W11(W2_Out11), 
    .W12(W2_Out12), 
    .W13(W2_Out13), 
    .W14(W2_Out14), 
    .W15(W2_Out15), 
    .Main_Out(Main_Out3)
    );


  PE_Unit Computation_Engine4 (
    .I0(I0), 
    .I1(I1), 
    .I2(I2), 
    .I3(I3), 
    .I4(I4), 
    .I5(I5), 
    .I6(I6), 
    .I7(I7), 
    .I8(I8), 
    .I9(I9), 
    .I10(I10), 
    .I11(I11), 
    .I12(I12), 
    .I13(I13), 
    .I14(I14), 
    .I15(I15), 
    .W0(W3_Out0), 
    .W1(W3_Out1), 
    .W2(W3_Out2), 
    .W3(W3_Out3), 
    .W4(W3_Out4), 
    .W5(W3_Out5), 
    .W6(W3_Out6), 
    .W7(W3_Out7), 
    .W8(W3_Out8), 
    .W9(W3_Out9), 
    .W10(W3_Out10), 
    .W11(W3_Out11), 
    .W12(W3_Out12), 
    .W13(W3_Out13), 
    .W14(W3_Out14), 
    .W15(W3_Out15), 
    .Main_Out(Main_Out4)
    );


maxPooling Max_Pooling (
    .clk(Clk), 
    .rst(Rst), 
    .input1(Main_Out1), 
    .input2(Main_Out2), 
    .input3(Main_Out3), 
    .input4(Main_Out4), 
    .output1(Max_Out), 
    .maxPoolingDone(maxPoolingDone)
    );

Output_Buffer Out_Buff (
    .Clk(Clk),
    .Rst(Rst),
    .In(Max_Out),
    .Out(CNN_OUT)
    );     


endmodule


