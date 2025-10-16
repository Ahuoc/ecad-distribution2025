module twotrafficlights(
      input  logic clk,
      input  logic rst,
      output logic [2:0] lightsA, 
      output logic [2:0] lightsB
    );
  logic [2:0] state;
  // insert your code here
  always_ff @(posedge clk) begin
    if (rst) begin
      lightsA <= 4;
      lightsB <= 6;
      state <= 0;
    end
    else
      if (lightsA == 4 && state == 3) begin
        lightsA <= 6;
        state <= state + 1;
      end
      else if (lightsA == 6) begin
        lightsA <= 1;
        state <= state + 1;
      end
      else if (lightsA == 1) begin
        lightsA <= 2;
        state <= state + 1;
      end
      else if (lightsA == 2) begin
        lightsA <= 4;
        state <= state + 1;
      end
      // The state is less than 3 - B should change instead
      else if (lightsB == 4) begin
        lightsB <= 6;
        state <= state + 1;
      end
      else if (lightsB == 6) begin
        lightsB <= 1;
        state <= state + 1;
      end
      else if (lightsB == 1) begin
        lightsB <= 2;
        state <= state + 1;
      end
      else if (lightsB == 2) begin
        lightsB <= 4;
        state <= state + 1;
      end
  end

endmodule
