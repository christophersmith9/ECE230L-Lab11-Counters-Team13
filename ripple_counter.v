module ripple_counter(
    input clk,
    input reset,
    output stage1, stage2, stage3
);

    t_flipflop stage_one_TFF(
        .T(clk),
        .reset(reset),
        .Q(stage1)
    );

    t_flipflop stage_two_TFF(
        .T(stage1),
        .reset(reset),
        .Q(stage2)
    );

    t_flipflop stage_three_TFF(
        .T(stage2),
        .reset(reset),
        .Q(stage3)
    );

endmodule