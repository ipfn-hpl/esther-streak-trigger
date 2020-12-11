`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 03:22:46 PM
// Design Name: 
// Module Name: n_trigger_gen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module n_trigger_gen#(
  parameter     ADC_DATA_WIDTH = 16)  // ADC is 14 bit, but data is 16
  (
    input clk,      // 125 Mhz , two samples per clock
    input [31:0] adc_data_a,
    input adc_enable_a,
    input adc_valid_a,
    input [31:0] adc_data_b,
    input adc_enable_b,
    input adc_valid_b,
    input [31:0] adc_data_c,
    input adc_enable_c,
    input adc_valid_c,
    input [31:0] adc_data_d,
    input adc_enable_d,
    input adc_valid_d,
    
    input trig_enable,  // Enable/Reset State Machine
    input  [63:0] trig_level_arr, // 3 trigger levels
    //input  [1:0]   trig_level_addr,
    //input  trig_level_wrt, // registers write enable
    //input  [15:0] trig_level_data,

    output [15:0] pulse_delay,  // Diference Pulse_0 -> Pulse_1 
    output [15:0] pulse_delay2,  // Diference Pulse_0 -> Pulse_1 
    output trigger0,
    output trigger1,
    input invert,
    input trigger_select,
    input [31:0] trigger_setting
    );
    
    /*********** Function Declarations ***************/
    
    function signed [ADC_DATA_WIDTH:0] adc_channel_mean_f;  // 17 bit for sum headroom
         input [ADC_DATA_WIDTH-1:0] adc_data_first;
         input [ADC_DATA_WIDTH-1:0] adc_data_second;
         
         reg signed [ADC_DATA_WIDTH:0] adc_ext_1st; 
         reg signed [ADC_DATA_WIDTH:0] adc_ext_2nd; 
           begin     
                adc_ext_1st = $signed({adc_data_first[ADC_DATA_WIDTH-1],  adc_data_first}); // sign extend
                adc_ext_2nd = $signed({adc_data_second[ADC_DATA_WIDTH-1], adc_data_second}); 
                adc_channel_mean_f = adc_ext_1st + adc_ext_2nd;
          end 
      endfunction
    
    function  trigger_rising_eval_f;
        input signed [ADC_DATA_WIDTH:0] adc_channel_mean;
        input signed [ADC_DATA_WIDTH-1:0] trig_lvl;
        
        reg signed [ADC_DATA_WIDTH:0] trig_lvl_ext; 
        begin 
           trig_lvl_ext          = $signed({trig_lvl, 1'b0}); // Mult * 2 with sign 
           trigger_rising_eval_f =(adc_channel_mean > trig_lvl_ext)? 1'b1: 1'b0;
        end 
    endfunction
    
    function  trigger_falling_eval_f;
        input signed [ADC_DATA_WIDTH:0] adc_channel_mean;
        input signed [ADC_DATA_WIDTH-1:0] trig_lvl;
        
        reg signed [ADC_DATA_WIDTH:0] trig_lvl_ext; 
        begin     
            trig_lvl_ext = $signed({trig_lvl, 1'b0}); // Mult * 2  with  sign extend
            trigger_falling_eval_f =(adc_channel_mean < trig_lvl_ext)? 1'b1: 1'b0;
        end 
    endfunction
    
    
      
    /*********** End Function Declarations ***************/
    /************ Trigger Logic ************/
        /* ADC Data comes in pairs. Compute mean, or this case simply add */
        reg signed [ADC_DATA_WIDTH:0] adc_mean_a, adc_mean_b, adc_mean_c, adc_mean_d ;
        always @(posedge clk) begin
             if (adc_enable_a)  // Use adc_valid_a ?
                adc_mean_a <= adc_channel_mean_f(adc_data_a[15:0], adc_data_a[31:16]); // check order (not really necessary, its a mean...)
             if (adc_enable_b)  // Use adc_valid_b ?
                adc_mean_b <= adc_channel_mean_f(adc_data_b[15:0], adc_data_b[31:16]); 
             if (adc_enable_c)  
                adc_mean_c <= adc_channel_mean_f(adc_data_c[15:0], adc_data_c[31:16]); 
             if (adc_enable_d)  
                adc_mean_d <= adc_channel_mean_f(adc_data_d[15:0], adc_data_d[31:16]); 
        end
    
        reg  trigger0_r=0;
        assign trigger0 = trigger0_r; 
        
        reg  trigger1_r = 0;
        assign trigger1 = trigger1_r; 
 
        wire  signed [15:0]  trig_level_a = trig_level_arr[15:0]; 
        wire  signed [15:0]  trig_level_b = trig_level_arr[31:16]; 
        wire  signed [15:0]  trig_level_c = trig_level_arr[47:32];   
        wire  signed [15:0]  trig_level_d = trig_level_arr[63:48]; 
    
      wire [11:0] cam_delay;
          assign cam_delay=trigger_setting[10:0];
          wire trigger_0,trigger_1,trigger_2,trigger_3, CFD_0,CFD_1,CFD_2,CFD_3,tresh_0,tresh_1,tresh_2,tresh_3;
          assign trigger_0=CFD_0 || tresh_0;
          assign trigger_1=CFD_1 || tresh_1;
          assign trigger_2=CFD_2 || tresh_2;
          assign trigger_3=CFD_3 || tresh_3;
           reg [15:0] pulse_delay_r=0, pulse_delay_r2=0;
           assign pulse_delay = pulse_delay_r;
           assign pulse_delay2 = pulse_delay_r2;
           localparam IDLE    = 3'b000;
           localparam READY   = 3'b001;
           localparam PULSE0  = 3'b010;
           localparam PULSE1  = 3'b011;
           localparam PULSE2  = 3'b100;
           localparam FINISH  = 3'b101;
           localparam PULSE3  = 3'b110;
          
           localparam WAIT_WIDTH = 24;
           
           reg [WAIT_WIDTH-1:0] wait_cnt = 0; // {WAIT_WIDTH{1'b1}}
           reg [2:0] state = IDLE;
           reg sm_enable0=0,sm_enable1=0,sm_enable2=0,sm_enable3=0;
  treshold #(
             .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
  chan_0 
  (
       .clk(clk),
       .rst(),
       .data(adc_mean_a),
       .level(trig_level_a),
       .trig_enable(sm_enable0),
       .enable(trigger_select),
       .invert(invert),
       .trig(tresh_0)
       );
  treshold #(
         .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
    chan_1(
       .clk(clk),
       .rst(),
       .data(adc_mean_b),
       .level(trig_level_b),
       .trig_enable(sm_enable1),
       .enable(trigger_select),
       .invert(invert),
       .trig(tresh_1)
       );
  treshold #(
         .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
    chan_2(
       .clk(clk),
       .rst(),
       .data(adc_mean_c),
       .level(trig_level_c),
       .trig_enable(sm_enable2),
       .enable(trigger_select),
       .invert(invert),
       .trig(tresh_2)
       );
  treshold #(
         .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
    chan_3(
       .clk(clk),
       .rst(),
       .data(adc_mean_d),
       .level(trig_level_d),
       .trig_enable(sm_enable3),
       .enable(trigger_select),
       .invert(invert),
       .trig(tresh_3)
       );     
CFD #(
   .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
 channel_0 (
    .clk(clk),
   .rst(),
   .data(adc_mean_a),
   .delay(trig_level_a),
   .trig_enable(sm_enable0),
   .enable(!trigger_select),
   .invert(invert),
   .trig(CFD_0)
   );
 CFD #(
      .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
  channel_1 (
       .clk(clk),
      .rst(),
      .data(adc_mean_b),
      .delay(trig_level_b),
      .trig_enable(sm_enable1),
      .enable(!trigger_select),
      .invert(invert),
      .trig(CFD_1)
      );
CFD #(
         .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
   channel_2 (
          .clk(clk),
         .rst(),
         .data(adc_mean_c),
         .delay(trig_level_c),
         .trig_enable(sm_enable2),
         .enable(!trigger_select),
         .invert(invert),
         .trig(CFD_2)
         );
  CFD #(
            .ADC_DATA_WIDTH(ADC_DATA_WIDTH))
    channel_3 (
             .clk(clk),
            .rst(),
            .data(adc_mean_d),
            .delay(trig_level_d),
            .trig_enable(sm_enable3),
            .enable(!trigger_select),
            .invert(invert),
            .trig(CFD_3)
           );    
           
              
reg [31:0] wait_cnt2=0 , counter2=0;

reg signed [31:0] counter=0;
reg [11:0] delays=0;
wire signed [31:0] camera_counter;
wire signed [31:0] streak_timer;
assign streak_timer=$signed(counter)+(cam_delay*5);
assign camera_counter=(wait_cnt+wait_cnt2)>>1;
 always @(posedge clk)
       if (!trig_enable) begin
          state <= IDLE;
          trigger0_r  <=  0; 
          trigger1_r  <=  0; 
          wait_cnt <= 24'd37000; //* 8ns Initial Idle Time  = 0.3 ms , Max 16777215 134 ms
          pulse_delay_r  <=  16'hFFFF; 
          pulse_delay_r2  <=  16'hFFFF; 
      
       end
       else
          case (state)
             IDLE: begin        // Sleeping 
                trigger0_r  <=  0; 
                trigger1_r  <=  0; 
                sm_enable0   <=0;
                sm_enable1   <=0;
                sm_enable2   <=0;
                sm_enable3  <=0;
                wait_cnt <= wait_cnt - 1;
                if (wait_cnt == {WAIT_WIDTH{1'b0}})
                   state <= READY;
             end
             READY: begin // Armed: Waiting first pulse
                if (trigger_0) begin 
                   state <= PULSE0;
                  trigger0_r  <=  1'b1; // signal to storage
                end   
                 sm_enable0<=1'b1;
                wait_cnt <= 0;
             end
             PULSE0 : begin // Got first pulse. Waiting Second
     
                if (trigger_1)begin 
                    state <= PULSE1;
                    
                   // pulse_delay_r  <=  wait_cnt[15:0];  // Save waiting Time
                    wait_cnt2 <= 'b0;
                end
                else begin
                sm_enable1<=1'b1;
                    wait_cnt   <=  wait_cnt + 8'd5; // increase 5 time units
                    end
             end
             PULSE1 : begin   // Waiting Third Pulse 
                if (trigger_2/*trigger_rising_eval_f(adc_mean_c, trig_level_c)*/) begin 
                   
                    state <= PULSE2;
                    counter<='b0;
                    counter2<='b0;
                    pulse_delay_r  <= camera_counter;
                end  
                sm_enable2<=1'b1;
               wait_cnt2<=wait_cnt2+8'd5;
             
                 
             end
             PULSE2 : begin   // Got Third pulse. Waiting calculated delay
                if (camera_counter <= streak_timer) begin  //trigger happnens
                   trigger0_r <=  1'b1; 
                   trigger1_r <=  1'b1;
                   state <= PULSE3;
                   sm_enable3<=1'b1;
                   
                end
                else
                counter2<=counter2+8'd5;
                    counter<=counter+8'd5;
             end
             PULSE3 : begin // CONFIRM TIMING ON LAST SENSOR
               if(trigger_3)begin //if(trigger_3)
               state<=FINISH;
               end
               else
               counter2<=counter2+8'd5;
 //                    state <= IDLE;
             end
             FINISH :begin
             pulse_delay_r2 <=counter2;  //save value
             
             end
             default :  
                     state <= IDLE;
          endcase

           
endmodule
