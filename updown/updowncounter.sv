module updowncounter
  (
   input logic        clk,
   input logic        rst,
   input logic        up,
   output logic [3:0] count
   );

   // insert your code here
   always_ff @(posedge clk) 
    count <= rst ? 0 : (up ? count + 1 : count - 1);
   

endmodule
