`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: thermostat_tb
/////////////////////////////////////////////////////////////////

module thermostat_tb();
    integer i;
    
    reg too_hot, too_cold, mode, fan_on;
    reg heater, ac, fan;
    
    thermostat dut (.too_hot(too_hot), .too_cold(too_cold), .mode(mode), .fan_on(fan_on), 
                    .heater(heater), .aircon(ac), .fan(fan));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 {too_hot, too_cold, mode, fan_on} = 4'b0000;
        #10 {too_hot, too_cold, mode, fan_on} = 4'b1000;
        #10 {too_hot, too_cold, mode, fan_on} = 4'b0110;
        #10 {too_hot, too_cold, mode, fan_on} = 4'b1010;
        #10 {too_hot, too_cold, mode, fan_on} = 4'b1111;
    
        for(i = 0; i < 16; i = i + 1) begin
            #10 {too_hot, too_cold, mode, fan_on} = i;
        end
      
      	#100 $finish;
    end
   
endmodule