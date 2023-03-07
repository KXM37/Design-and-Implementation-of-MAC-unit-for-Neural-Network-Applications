

module maxPooling(
    	input clk,
    	input rst,
	input [15:0] input1,
	input [15:0] input2,
	input [15:0] input3,
	input [15:0] input4,
    output reg signed [15:0] output1,
	output reg maxPoolingDone
    );

	
	
	
	always @ (posedge clk) begin
		if(~rst) begin
				if($signed(input2) < $signed(input1)) begin
					if($signed(input3) < $signed(input1)) begin
						if($signed(input4) < $signed(input1)) begin
							output1 <= input1;
							maxPoolingDone <= 1;
						end
						else begin
							output1 <= input4;
							maxPoolingDone <= 1;
						end
					end
					else begin
						if($signed(input3) < $signed(input4)) begin
							output1 <= input4;
							maxPoolingDone <= 1;
						end
						else begin
							output1 <= input3;
							maxPoolingDone <= 1;
						end
					end
				end
				else begin
					if($signed(input3) < $signed(input2)) begin
						if($signed(input4) < $signed(input2)) begin
							output1 <= input2;
							maxPoolingDone <= 1;
						end
						else begin
							output1 <= input4;
							maxPoolingDone <= 1;
						end
					end
					else begin
						if($signed(input3) < $signed(input4)) begin
							output1 <= input4;
							maxPoolingDone <= 1;
						end
						else begin
							output1 <= input3;
							maxPoolingDone <= 1;
						end
					end
				end
			end

		else begin
			output1 <= 0;
			maxPoolingDone <= 0;
		end
	end


endmodule
