`timescale 1ns / 1ps

module main(
    output LED1,
    input CLOCK50 // Reference design uses a 50MHz oscillator
    );
	 

    reg [32:0] counter;
    reg state;
	 
    assign LED1 = state;
 
    always @ (posedge CLOCK50) begin
        counter <= counter + 1;
        state <= counter[26]; // Toggle pin at a rate of ~0.75 Hz
    end

endmodule
