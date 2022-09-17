LOCAL VARIABLE
module simple_task();

task convert;
input [7:0] temp_in;
output [7:0] temp_out;
begin
  temp_out = (9/5) *( temp_in + 32)
end
endtask

endmodule
_____________________________
GOBAL VARIABLE
module task_global();

reg [7:0] temp_out;
reg [7:0] temp_in;

task convert;
begin
  temp_out = (9/5) *( temp_in + 32);
end
endtask

endmodule
________-
CALLING A TASK

module  task_calling (temp_a, temp_b, temp_c, temp_d);
input [7:0] temp_a, temp_c;
output [7:0] temp_b, temp_d;
reg [7:0] temp_b, temp_d;
`include "mytask.v"
  	 
always @ (temp_a)
begin	
  convert (temp_a, temp_b);
end  

always @ (temp_c)
begin	
  convert (temp_c, temp_d);
end  
  	 
endmodule
