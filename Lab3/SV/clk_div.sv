module clk_div (input logic clk, input logic rst, output logic clk_en);


/*
logic [23:0] clk_count;

   always_ff @(posedge clk) begin
      if (rst)
	clk_count <= 24'h0;
      else
	clk_count <= clk_count + 1;
   end   
   
   assign clk_en = clk_count[23];
*/




   logic [27:0] clk_count;
  
   always_ff @(posedge clk) begin
      clk_en <= clk_en;
      if (rst)begin
	      clk_count <= 28'h0;
         clk_en <= 1'b0;
      end
      else if (clk_count == 28'h3B9ACA0) begin
         clk_count <= 28'b0;
         clk_en <= ~clk_en;
      end
      else
	      clk_count <= clk_count + 1;
         clk_en <= 1'b0;
      end   
   

endmodule // clk_div
