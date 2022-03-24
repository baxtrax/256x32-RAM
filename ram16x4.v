/* A 16x4-bit RAM Module.
 * The Chipselect needs to be low to activate memory.
 * rw = 0 : Read 
 * rw = 1 : Write
 *
 * Author: Bradley Gathers
 * Date: 3/23/2022
*/
module ram16x4(data_in, data_out, adrs, cs, rw);

	// I/O and Parameters
	input cs; // Enable / Disable data lines
	input rw;
	input [3:0] data_in, adrs;
	output reg [3:0] data_out;
	reg [3:0] mem[15:0]; // 16, 4-bit width array
	
	always @(*) begin
		if (!cs) begin
			if (rw) begin
			mem[adrs] <= data_in; // Write
			end 
			else begin
			data_out <= mem[adrs]; // Read
			end
		end
	end

endmodule


