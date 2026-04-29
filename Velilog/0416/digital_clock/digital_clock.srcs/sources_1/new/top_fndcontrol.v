`timescale 1ns / 1ps

module top_fnd_control(
    input clk, reset, time_mode, sw0,sw1,sw2,sw3,
    output [1:0] mode_out,
    output [2:0] set_pos_out, alarm_out, alarm_on,
    output [3:0] fndsel,
    output [6:0] fnd
);

wire w_clkout, w_clk_out, w_clkout2;
wire [1:0] out_counter;
wire [3:0] fndin, hour10, hour0, min10, min0, sec10, sec0;
wire [4:0] hour_out, w_a_hour_out;
wire [5:0] min_out, sec_out, w_t_sec_out, w_t_min_out, w_a_sec_out, w_a_min_out;
wire [6:0] w_t_mmsec_out;

MasterSelect U0(.clk(clk), 
                .reset(reset), 
                .sw0(sw0), 
                .mode_out(mode_out), 
                .sw1(sw1), 
                .set_pos_out(set_pos_out)
                );
                
DigitalClock U1(.reset(reset), 
                .clk(clk), 
                .clk1Hz(w_clk_out), 
                .mode(mode_out), 
                .set_pos(set_pos_out), 
                .sw2(sw2), 
                .sec_out(sec_out), 
                .min_out(min_out), 
                .hour_out(hour_out)
                );
                
FND_Display U2(.mode(mode_out), 
               .sec_in(sec_out), 
               .min_in(min_out), 
               .hour_in(hour_out), 
               .hour10(hour10), .hour0(hour0), 
               .min10(min10), 
               .min0(min0), 
               .sec10(sec10), 
               .sec0(sec0), 
               .tl_mmsec(w_t_mmsec_out), 
               .tl_sec(w_t_sec_out), 
               .tl_min(w_t_min_out), 
               .al_sec(w_a_sec_out),
               .al_min(w_a_min_out), 
               .al_hour(w_a_hour_out
               ));
               
ClockDevider #(.N(100_000)) U3(.clk(clk), 
                               .reset(reset), 
                               .clk_out(w_clkout));   //1ms, 1000Hz
                               
Counter U4(.inclk(w_clkout), 
           .reset(reset), 
           .out_counter(out_counter)
           );
           
DataMux U5(.time_mode(time_mode), 
           .ina(sec0), 
           .inb(sec10), 
           .inc(min0), 
           .ind(min10), 
           .ine(hour0), 
           .inf(hour10), 
           .insel(out_counter), 
           .outy(fndin)
           );
           
Mux4x1 U6(.sel_in(out_counter), 
          .fndsel(fndsel)
          );
          
FND_Decoder U7(.fndin(fndin), 
               .fnd(fnd));
               
ClockDevider #(.N(100_000_000)) U8(.clk(clk), 
                                   .reset(reset), 
                                   .clk_out(w_clk_out)
                                   );  //1s
                                   
Timer U9(.clk(clk), 
         .reset(reset), 
         .mode(mode_out), 
         .clk100Hz(w_clkout2), 
         .sw1(sw1), 
         .sw2(sw2), 
         .mmsec_out(w_t_mmsec_out), 
         .sec_out(w_t_sec_out), 
         .min_out(w_t_min_out)
         );
         
AlarmLogic U10(.clk(clk), 
               .reset(reset), 
               .clk1000hz(w_clkout), 
               .mode(mode_out), 
               .set_pos(set_pos_out), 
               .clk_min(min_out), 
               .clk_hour(hour_out),
               .sw2(sw2), 
               .sw3(sw3), 
               .sec_out(w_a_sec_out), 
               .min_out(w_a_min_out), 
               .hour_out(w_a_hour_out), 
               .alarm_out(alarm_out), 
               .alarm_on(alarm_on)
               );
               
ClockDevider #(.N(1_000_000)) U11(.clk(clk), 
                                  .reset(reset), 
                                  .clk_out(w_clkout2)
                                  );   //10ms,100Hz
                                  
endmodule