module Output_Buffer (Clk,Rst,In,Out); 
  input Clk,Rst; 
  input [15:0]In;
  output [15:0]Out; 
  reg [15:0]Out; 
 
  always @(posedge Clk) 
    begin
    if(Rst)
	  Out=16'd0; 
	  else
	  Out = In; 
    end 
	
endmodule