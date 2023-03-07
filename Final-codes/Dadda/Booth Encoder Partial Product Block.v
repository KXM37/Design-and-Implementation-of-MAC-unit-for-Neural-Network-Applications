module SD_Booth_Encoder_PP_Block (X,Y,PP);
  input [7:0]X;
  input [2:0]Y;
  output [15:0]PP;
  reg [15:0]PP;
  
  wire  [15:0]X_2,X_1,X_2b,X_1b;


  assign X_1=X*'d1;
  assign X_1b=X*-'d1;    

  assign X_2=X*'d2;
  assign X_2b=X*-'d2;    

  always @ (*)
  begin
  case (Y)
    3'b000: PP=16'd0;                    
    3'b001: PP=X_1;
    3'b010: PP=X_1;
    3'b011: PP=X_2;
    3'b100: PP=X_2b;
    3'b101: PP=X_1b;
    3'b110: PP=X_1b;
    3'b111: PP=16'd0;                    
  endcase
end  
endmodule