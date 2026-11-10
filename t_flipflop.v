module t_flipflop(
    input T,
    input clk,
    input reset,
    output Q, 
    output NotQ
);

    wire T_into_D;

    //The output will invert on each clock cycle if T is asserted
    //The output will stay the same on each clock cycle if T is deasserted

    assign T_into_D = T ^ Q; 

    d_flipflop d_flipflop(
        .D(T_into_D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule