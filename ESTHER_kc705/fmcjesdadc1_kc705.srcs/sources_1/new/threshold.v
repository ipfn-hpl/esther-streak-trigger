`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2020 03:27:43 PM
// Design Name: 
// Module Name: threshold
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


module treshold #(
  parameter     ADC_DATA_WIDTH = 16) 
  (
input clk,
input rst,
input signed [ADC_DATA_WIDTH-1:0] data,
input signed [15:0] level,
input trig_enable,
input enable,
input invert,
output trig

    );
 reg out=0;
 assign trig=out;
 
   
    function  trigger_falling_eval_f;
        input signed [ADC_DATA_WIDTH:0] adc_channel_mean;
        input signed [ADC_DATA_WIDTH-1:0] trig_lvl;
        
        reg signed [ADC_DATA_WIDTH:0] trig_lvl_ext; 
        begin     
            trig_lvl_ext =  $signed({trig_lvl});//$signed({trig_lvl, 1'b0}); // Mult * 2  with  sign extend
            trigger_falling_eval_f =(adc_channel_mean < trig_lvl_ext)? 1'b1: 1'b0;
        end 
    endfunction

    function  trigger_rising_eval_f;
         input signed [ADC_DATA_WIDTH:0] adc_channel_mean;
         input signed [ADC_DATA_WIDTH-1:0] trig_lvl;
         
         reg signed [ADC_DATA_WIDTH:0] trig_lvl_ext; 
         begin 
            trig_lvl_ext          = $signed({trig_lvl});//$signed({trig_lvl, 1'b0}); // Mult * 2 with sign 
            trigger_rising_eval_f =(adc_channel_mean > trig_lvl_ext)? 1'b1: 1'b0;
         end 
      endfunction
 
always @(posedge clk)   begin
if(rst || !trig_enable || !enable)begin
out<=1'b0;
end
else begin
if(trigger_rising_eval_f(data, level)==1 && invert==0) out<=1'b1;
if(trigger_falling_eval_f(data, level)==1 && invert==1) out<=1'b1;
end
end


endmodule