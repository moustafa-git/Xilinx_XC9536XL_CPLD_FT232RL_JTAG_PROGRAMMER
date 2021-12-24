`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:45 12/23/2021 
// Design Name: 
// Module Name:    frequency_ 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module frequency_(
input wire clk,
input wire swbtn_1,//reset
input wire swbtn_2,//divide by 2
input wire swbtn_3,//divide by 4
input wire swbtn_4,//divide by 8
output reg led
    );

reg def = 1;
reg bool2 = 0;
reg bool3 = 0;
reg bool4 = 0;
reg newclk = 0;	 
reg [2:0] count = 3'd0;

assign clkt = clk;

always@(posedge clk)
begin
count = count + 1;

if(swbtn_1 == 1)begin//reset
def = 1; bool2 = 0; bool3 = 0; bool4 = 0; end
if(swbtn_2 == 1)begin//divide by 2
def = 0; bool2 = 1; bool3 = 0; bool4 = 0; end
if(swbtn_3 == 1)begin//divide by 4
def = 0; bool2 = 0; bool3 = 1; bool4 = 0; end
if(swbtn_4 == 1)begin//divide by 8
def = 0; bool2 = 0; bool3 = 0; bool4 = 1; end


if(bool2 == 1)begin
newclk = count[0]; end //divide by 2
if(bool3 == 1)begin
newclk = count[1]; end //divide by 4
if(bool4 == 1)begin
newclk = count[2]; end //divide by 8


end// always@ end


always@(clkt)
begin
if(def == 1)begin
led = clkt; end
else begin
led = newclk; end
end

endmodule
