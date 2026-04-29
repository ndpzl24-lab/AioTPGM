`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/22 10:59:15

// Module Name: stepmotor

//////////////////////////////////////////////////////////////////////////////////


module stepmotor(
    input clk,
    input rst,
    input start_op,
    output [3:0] stepmotor
    );
    reg [3:0] motor_data;
    reg [29:0] clk_div_cnt;
    reg clk_1hz;
    reg [1:0] cnt_step;
    reg [11:0] step_count;
    reg [11:0] target_steps;
    reg [1:0] state;
    localparam IDLE =2'b00;
    localparam ROTATE_90_CW = 2'b01;
    localparam ROTATE_180_CCW = 2'b10;
    localparam STOP = 2'b11;
    localparam STEPS_90_DEGREE = 12'd512;
    localparam STEPS_180_DEGREE = 12'd1024;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            clk_div_cnt <= 25'd0;
            clk_1hz <= 1'b0;
        end else begin
            if(clk_div_cnt == 30'd500_000) begin
                clk_div_cnt <= 30'd0;
                clk_1hz <= ~clk_1hz;
            end else begin
                clk_div_cnt <= clk_div_cnt + 1;
            end
        end
    end
    
    always @(posedge clk_1hz or posedge rst) begin
        if (rst) begin
            cnt_step <= 2'b00;
            motor_data <= 4'b0000;
            step_count <= 12'b0;
            target_steps <= 12'd0;
            state <= IDLE;
        end else begin
            case  (state)
                IDLE : begin
                    motor_data <= 4'b0000;
                    step_count <= 12'd0;
                    if (start_op) begin
                        target_steps <= STEPS_90_DEGREE;
                        state <= ROTATE_90_CW;
                        end
                    end
                ROTATE_90_CW : begin
                    if (step_count < target_steps) begin
                        case (cnt_step)
                            2'b00 : motor_data <= 4'b0001;
                            2'b01 : motor_data <= 4'b0010;
                            2'b10 : motor_data <= 4'b0100;
                            2'b11 : motor_data <= 4'b1000;
                            default : motor_data <= 4'b0000;
                        endcase
                        cnt_step <= cnt_step + 1;
                        step_count <= step_count + 1;
                    end else begin
                        motor_data <= 4'b0000;
                        step_count <= 12'd0;
                        target_steps <= STEPS_180_DEGREE;
                        state <= ROTATE_180_CCW;
                    end
                end
                ROTATE_180_CCW : begin
                    if (step_count < target_steps) begin
                        case (cnt_step)
                            2'b00 : motor_data <= 4'b1000;
                            2'b01 : motor_data <= 4'b0100;
                            2'b10 : motor_data <= 4'b0010;
                            2'b11 : motor_data <= 4'b0001;
                            default : motor_data <= 4'b0000;
                        endcase
                    cnt_step <= cnt_step + 1;
                    step_count <= step_count +1;
                    end else begin
                        motor_data <= 4'b0000;
                        step_count <= 12'd0;
                        state <= STOP;
                        end
                    end
               STOP : begin
                motor_data <= 4'b0000;
                state <= IDLE;
                end
                endcase
             end
          end
       assign stepmotor = motor_data;                                         
endmodule
