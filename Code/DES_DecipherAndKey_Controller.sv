module DES_DecipherAndKey_Controller(input logic rst_n,
                                     input logic clk,
                                     input logic des_encipher_en,
                                     input logic des_decipher_en,
                                     input logic encipher_process,
                                     input logic k16_complete,
                                     output logic decipher_process,
                                     output logic key_process,
                                     output logic desc_ready);
  logic k16_calculation;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      decipher_process <= 1'b0;
    end
    else if(k16_complete &(~encipher_process)) begin
      if (k16_calculation) begin
        decipher_process <= 1'b1;
      end
      else begin
        decipher_process <= 1'b0;
      end
    end
    else begin
      decipher_process <= decipher_process;
    end
  end
  
  always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      key_process <= 1'b0;
    end
    else if (des_encipher_en|des_decipher_en) begin
      key_process <= 1'b1;
    end
    else if ((encipher_process | decipher_process) & k16_complete) begin
      key_process <= 1'b0;
    end
    else begin
      key_process <= key_process;
    end
  end
  
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      k16_calculation <= 1'b0;
    end
    else begin
      k16_calculation <= (~encipher_process)&(~decipher_process)&(key_process);
    end
  end
  
  assign desc_ready = (~key_process) & (~encipher_process);
endmodule
