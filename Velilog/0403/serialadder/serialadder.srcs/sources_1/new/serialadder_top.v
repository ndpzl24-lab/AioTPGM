module serialadder_top(
    input clk, rstb, load,
    input [7:0] a, b,
    output [7:0] sum_shift,
    output [7:0] sum_progress,
    output done
);

wire [7:0] shift, progress;
reg [3:0] cnt;

serialadder U0(
    .clk(clk),
    .rstb(rstb),
    .load(load),
    .a(a),
    .b(b),
    .sum_shift(shift),
    .sum_progress(progress)
);

// counter
always @(posedge clk or negedge rstb) begin
    if(!rstb)
        cnt <= 0;
    else if(load)
        cnt <= 0;
    else
        cnt <= cnt + 1;
end

assign done = (cnt == 7);

assign sum_shift = shift;
assign sum_progress = progress;

endmodule