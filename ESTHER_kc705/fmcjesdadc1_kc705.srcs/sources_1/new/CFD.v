`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 09:34:42 AM
// Design Name: 
// Module Name: CFD
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


module CFD#(
  parameter     ADC_DATA_WIDTH = 16) 

  (
input clk,
input rst,
input signed [ADC_DATA_WIDTH-1:0] data,
input  [15:0] delay,
input trig_enable,
input enable,
input invert,
output trig
    );
    reg read_en=0, state=0;
    wire [12:0] count;
    wire signed [ADC_DATA_WIDTH-1:0] data_delay;
 fifo_generator_2(
    .clk (clk),
    .srst (!trig_enable),
    .din (data),
    .wr_en (1'b1),
    .rd_en (read_en),
    .dout (data_delay),
    .full (),
    .empty (),
    .data_count(count)
 );
    
  always @(posedge clk) begin
  if(trig_enable==0)state<=1'b0;
  else begin
  case(state)
  0:begin  
  read_en<=1'b0;
  if(count>delay[14:0]) state<=1'b1;
  end
  1:begin
  read_en<=1'b1;
  
  end
  endcase
   end
       end  
wire signed [ADC_DATA_WIDTH-1:0] f_adc, CFD;
assign f_adc=data/2;
assign CFD=$signed(data_delay-f_adc);

reg cfd_on=0, trigger=0;
assign trig=trigger;

 reg signed [ADC_DATA_WIDTH-1:0] thres=5000;
 reg signed [ADC_DATA_WIDTH-1:0] thresi=-5000;
always @(posedge clk) begin
if(!trig_enable || !enable) begin
trigger <=1'b0;
cfd_on<=1'b0;


end
else begin
if($signed(data>thres)/*CFD<-'d2000 */&& invert==1'b0) cfd_on<=1'b1;
if($signed(data<thresi)/*CFD>'d2000*/ && invert==1'b1) cfd_on<=1'b1;
if(cfd_on==1'b1 && CFD>'b0 && invert==1'b0) trigger<=1'b1;
if(cfd_on==1'b1 && CFD<'b0 && invert==1'b1) trigger<=1'b1;
end

end 
  
endmodule
