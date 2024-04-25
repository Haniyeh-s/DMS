/*

// Code your design here
module binary_decoder (input [2:0] x, output reg [7:0] y);
  always @(*)
    //In Verilog, always @(*) is a procedural construct known as a                 sensitivity list. It is used to define a block of code that is                executed whenever any of its inputs (*) change.
    
    // The @(*) notation specifically indicates that the block should be            sensitive to any change in the signals within its body. This is              commonly referred to as a "combinational block" because it will              execute whenever any of its input signals change, without any                specific clock signal triggering it. (the output is solely dependent        on the current values of the input signals.) 
  begin
  case(x)
      3'b000: y = 8'b00000001;
      3'b001: y = 8'b00000010;
      3'b010: y = 8'b00000100;
      3'b011: y = 8'b00001000;
      3'b100: y = 8'b00010000;
      3'b101: y = 8'b00100000;
      3'b110: y = 8'b01000000;
      3'b111: y = 8'b10000000;
   endcase
   end
endmodule


*/



module EvenOdd_detector ( 
  input [3:0] x,  
  output reg even, 
  output reg odd
);
  
  always @(*)
    begin
      if (x[0] == 1 ) begin
        odd = 1;
        even = 0;
      end
      else begin 
        odd = 0;
        even = 1;
      end
    end
endmodule
  
        