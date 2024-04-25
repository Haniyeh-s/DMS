/*
// Code your testbench here
// or browse Examples
module binary_decoder_tb ();
  reg [2:0] tb_x;
  wire [7:0] tb_y;
  
  binary_decoder uut ( .x(tb_x) , .y(tb_y) );
  // Unit Under Test (uut): It's a commonly used placeholder name for the module instance being tested in a testbench. (instantiation )
  
  //.x(tb_x) and .y(tb_y) are connections between signals in the testbench (tb_x and tb_y) and the corresponding ports (x and y) of the binary_decoder module.
  
  initial begin
    $dumpfile("waves.vcd");  //name the VCD file 
    $dumpvars(0, tb_x, tb_y ); //dump all variates
    
    tb_x = 3'b000;
    #10;                        //wait for 10 sec
    tb_x = 3'b001;
    #10;
    tb_x = 3'b010;
    #10;          
    tb_x = 3'b011;
    #10;          
    tb_x = 3'b100;
    #10          
    tb_x = 3'b101;
    #10          
    tb_x = 3'b110;
    #10          
    tb_x = 3'b111;
    #10  
    
    $finish;
   end
endmodule 

*/

module EvenOdd_detector_tb();
  reg[3:0] x_tb;
  wire even_tb;
  wire odd_tb;
  
  EvenOdd_detector EOtest(.x(x_tb), .even(even_tb), .odd(odd_tb));
  
  initial begin
    $dumpfile("waves.vcd");  //name the VCD file 
    $dumpvars(0, EOtest ); //dump all variates
    
    x_tb = 1;
    #10
    
    x_tb = 4;
    #10
    
    $finish;
   end
endmodule 
                            
    

  