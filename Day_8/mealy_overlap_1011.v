/*

module mealy_overlap_1011(input clk,rst,in,output reg out);
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
reg [1:0]p_state,nxt_state;

always@(posedge clk or posedge rst )begin
if(rst)
p_state<=s0;
else
p_state<=nxt_state;
end

always@(p_state or in)begin
out=0;
case(p_state)
s0:nxt_state=in?s1:s0;
s1:nxt_state=in?s1:s2;
s2:nxt_state=in?s3:s0;
s3:begin
if(in)begin
nxt_state=s1;
out=1;
end
else
nxt_state=s2;
end
default:nxt_state=s0;
endcase
end
endmodule
*/
module mealy_overlap_1011(input clk, rst, din, output reg dout);

  parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
  reg [1:0] p_state, n_state;

  // state transition
  always @(posedge clk or posedge rst) begin
    if (rst)
      p_state <= s0;
    else
      p_state <= n_state;
  end

  // next state + output logic
  always @(*) begin
    dout = 0; // default
    case (p_state)
      s0: if (din) n_state = s1; else n_state = s0;

      s1: if (din) n_state = s1; else n_state = s2;

      s2: if (din) n_state = s3; else n_state = s0;

      s3: if (din) begin
            n_state = s1;  // <-- overlap: reuse last '1'
            dout = 1;      // detect 1011
          end else begin
            n_state = s2;  // <-- overlap: reuse "10"
            dout = 0;
          end

      default: n_state = s0;
    endcase
  end
endmodule

