module register_1(
    input clk, rstb,
    input din,
    output reg dout
);
always @(posedge clk or negedge rstb) begin
    if(!rstb)
        dout <= 0;
    else
        dout <= din;
end
endmodule