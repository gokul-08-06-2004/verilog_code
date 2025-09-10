module full_sub(a,b,bin,d,bout);
  input wire a,b,bin;
  output  reg d,bout;
  always@(*)
    begin
      case({a,b,bin})
        3'b000:{d,bout} = 2'b00;
        3'b001:{d,bout} = 2'b11;
        3'b010:{d,bout} = 2'b11;
        3'b011:{d,bout} = 2'b01;
        3'b100:{d,bout} = 2'b10;
        3'b101:{d,bout} = 2'b00;
        3'b110:{d,bout} = 2'b00;
        3'b111:{d,bout} = 2'b11;
        default:{d,bout}=2'b00;
      endcase
    end
endmodule
