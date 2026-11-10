module top(
    input btnU, btnC,
    output [6:0] led
);

    ripple_counter ripple_counter(
        .clk(btnC),
        .reset(btnU),
        .stage1(led[0]),
        .stage2(led[1]),
        .stage3(led[2])
    );

    modulo_counter modulo_counter(
        .clk(btnC),
        .reset(btnU),
        .statebit0(led[3]),
        .statebit1(led[4]),
        .statebit2(led[5]),
        .counter_output(led[6])
    );

endmodule