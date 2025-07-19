// Code your testbench here
// or browse Examples
module tb_DES_Cryp;

  // Testbench signals
  logic clk;
  logic rst_n;
  logic des_encipher_en;
  logic des_decipher_en;
  logic [63:0] des_data;
  logic [63:0] des_key_in;
  
  // Outputs
  logic desc_ready;
  logic [63:0] desc_result;

  // Instantiate the DES_Cryp module
  DES_core des_inst (
    .clk(clk),
    .rst_n(rst_n),
    .des_encipher_en(des_encipher_en),
    .des_decipher_en(des_decipher_en),
    .des_data(des_data),
    .des_key_in(des_key_in),
    .desc_ready(desc_ready),
    .desc_result(desc_result)
  );

  // Clock generation
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 0;
    forever #5 clk = ~clk; // Clock period of 10 ns
  end

  // Test cases
  initial begin
    // Initialize inputs
    rst_n = 0;
    des_encipher_en = 0;
    des_decipher_en=0;
    des_data	= 64'hD4B690218FAEC377;
    des_key_in	= 64'h7CA110454A1A6E57;
	
    // Reset the design
    #10;
    rst_n = 1;

    // Enable DES encryption
    #50;
    des_encipher_en = 1;
    des_decipher_en=0;
    #20;
    des_encipher_en=0;
    des_decipher_en=0;
    // Wait for some clock cycles for the encryption to complete
    wait(desc_ready==1);
   
    #100;
    des_encipher_en = 0;
    des_decipher_en=0;
    des_data	= 64'hDBE2057A420EC6EF;
    des_key_in	= 64'h4142434445464735;
    
    #50;
    des_encipher_en = 0;
    des_decipher_en=1;
    #20;
    des_encipher_en=0;
    des_decipher_en=0;
    wait(desc_ready==1);
    // Finish the simulation
    #100;
    $finish;
  end

endmodule
