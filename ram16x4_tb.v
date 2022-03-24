/* A test bench to test the functionality of
 * a 16x4 ram module.
 *
 * Author: Bradley Gathers
 * Date: 3/23/2022
*/
module ram16x4_tb();

	// I/O and Parameters
	reg cs; 
	reg rw;
	reg [3:0] data_in, adrs;
	wire [3:0] data_out;
	integer i;

	
	// Initial Setup
	initial begin
		cs = 1'h0;
		rw = 1'h0;
		data_in = 4'h0;
		adrs = 4'h0;
	end
	
	ram16x4 DUT(.data_in(data_in), 
						.data_out(data_out), 
						.adrs(adrs), 
						.cs(cs), 
						.rw(rw));
	
	// Test series list
	initial begin
		$display("Starting simulation! :)");
		
		rw = 1'h0; // Read
		cs = 1'h1;
		// Read through all address with cs high (No data lines)
		for (i = 0; i < 16; i = i + 1) begin
			adrs = i;
			#10;
		end
		
		
		cs = 1'h0;
		// Read through all address with cs low (Connected data lines)
		for (i = 0; i < 16; i = i + 1) begin
			adrs = i;
			#10;
		end
		
		rw = 1'h1; // Write
		// Write random values to all address
		$display("Writing Random Values");  
		for (i = 0; i < 16; i = i + 1) begin
			adrs = i;
			data_in = $random%15;
			$display("Address %d : %d",adrs,data_in);   
			#10;
		end
		
		cs = 1'h1;
		// Read through all address with cs high (No data lines)
		for (i = 0; i < 16; i = i + 1) begin
			adrs = i;
			#10;
		end
		
		rw = 1'h0; // Read
		cs = 1'h0;
		// Read through all address with cs low (Connected data lines)
		for (i = 0; i < 16; i = i + 1) begin
			adrs = i;
			#10;
		end
		
		
		$display("Done simulation! :)");
		#100 $stop;
	end
endmodule