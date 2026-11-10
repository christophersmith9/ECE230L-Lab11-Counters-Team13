module d_flipflop(
    input D,
    input clk,
    input reset,
    output reg Q, 
    output NotQ
);

    initial begin
        Q <= 1'b0;
    end

    always @(posedge clk) begin 
        if (reset) begin
            Q <= 1'b0;
        end else begin 
            Q <= D; 
        end
    end

    assign NotQ = ~Q;

endmodule