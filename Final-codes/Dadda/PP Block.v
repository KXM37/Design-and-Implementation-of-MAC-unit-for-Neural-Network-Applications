module Main_PP_Block (X,Y,PP0,PP1,PP2,PP3,PP4);
  input [7:0]X,Y;
  output [15:0]PP0,PP1,PP2,PP3,PP4;
  wire [10:0]Y_N;
  
  
  assign Y_N={2'b0,Y,1'b0};

  
  SD_Booth_Encoder_PP_Block SD_PP0 (
    .X(X),
    .Y(Y_N[2:0]),
    .PP(PP0)
    );
    
  SD_Booth_Encoder_PP_Block SD_PP1 (
    .X(X),
    .Y(Y_N[4:2]),
    .PP(PP1)
    );    

  SD_Booth_Encoder_PP_Block SD_PP2 (
    .X(X),
    .Y(Y_N[6:4]),
    .PP(PP2)
    );

  SD_Booth_Encoder_PP_Block SD_PP3 (
    .X(X),
    .Y(Y_N[8:6]),
    .PP(PP3)
    );    

  SD_Booth_Encoder_PP_Block SD_PP4 (
    .X(X),
    .Y(Y_N[10:8]),
    .PP(PP4)
    );         

endmodule