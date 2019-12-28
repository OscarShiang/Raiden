module Score(score, seven_dis, seven_dis1);

input [31:0]score;
output [6:0]seven_dis;
output [6:0]seven_dis1;

reg [6:0]seven_dis;
reg [6:0]seven_dis1;

 
always@(score) //?
begin
	case(score)
	5'd0:
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b1000000;//0
	end 
	5'd1: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b1111001;//1
	end
	5'd2: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b0100100;//2
	end 
	5'd3: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 =  7'b0110000;//3
	end 
	5'd4: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 =  7'b0011001;//4
	end 
	5'd5: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b0010010;//5
	end 
	5'd6: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b0000010;//6
	end 
	5'd7: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b1111000;//7
	end 
	5'd8: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b0000000;//8
	end 
	5'd9: 
	begin
		seven_dis = 7'b1000000;//0
		seven_dis1 = 7'b0010000;//9
	end 
	5'd10: 
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b1000000;//0
	end 
	5'd11: 
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b1111001;//1
	end 
	5'd12: 
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0100100;//2
	end 
	5'd13:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0110000;//3
	end 
	5'd14:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 =  7'b0011001;//4
	end 
	5'd15:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0010010;//5
	end 
	5'd16:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0000010;//6
	end 
	5'd17:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b1111000;//7
	end 
	5'd18:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0000000;//8
	end 
	5'd19:
	begin
		seven_dis = 7'b1111001;//1
		seven_dis1 = 7'b0010000;//9
	end 
	5'd20:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b1000000;//0
	end 
	5'd21:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b1111001;//1
	end 
	5'd22:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b0100100;//2
	end 
	5'd23:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 =  7'b0110000;//3
	end 
	5'd24:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 =  7'b0011001;//4
	end 
	5'd25:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b0010010;//5
	end 
	5'd26:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b0000010;//6
	end 
	5'd27:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b1111000;//7
	end 
	5'd28:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b0000000;//8
	end 
	5'd29:
	begin
		seven_dis = 7'b0100100;//2
		seven_dis1 = 7'b0010000;//9
	end 
	5'd30:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b1000000;//0
	end 
	5'd31:	
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b1111001;//1
	end 
	5'd32:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b0100100;//2
	end 
	5'd33:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 =  7'b0110000;//3
	end 
	5'd34:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 =  7'b0011001;//4
	end 
	5'd35:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b0010010;//5
	end 
	5'd36:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b0000010;//6
	end 
	5'd37:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b1111000;//7
	end 
	5'd38:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b0000000;//8
	end 
	5'd39:
	begin
		seven_dis = 7'b0110000;//3
		seven_dis1 = 7'b0010000;//9
	end 
	5'd40:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b1000000;//0
	end 
	5'd41:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b1111001;//1
	end 
	5'd42:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b0100100;//2
	end 
	5'd43:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 =  7'b0110000;//3
	end 
	5'd44:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 =  7'b0011001;//4
	end 
	5'd45:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b0010010;//5
	end 
	5'd46:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b0000010;//6
	end 
	5'd47:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b1111000;//7
	end 
	5'd48:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b0000000;//8
	end 
	5'd49:
	begin
		seven_dis = 7'b0011001;//4
		seven_dis1 = 7'b0010000;//9
	end 
	5'd50: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b1000000;//0
	end
	5'd51: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 =  7'b1111001;//1
	end
	5'd52: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0100100;//2
	end
	5'd53: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0110000;//3
	end
	5'd54: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0011001;//4
	end
	5'd55: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0010010;//5
	end
	5'd56: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0000010;//6
	end
	5'd57: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b1111000;//7
	end
	5'd58: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0000000;//8
	end
	5'd59: 
	begin
		seven_dis = 7'b0010010;//5
		seven_dis1 = 7'b0010000;//9 
	end
	5'd60: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b1000000;//0
	end
	5'd61: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 =  7'b1111001;//1
	end
	5'd62: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0100100;//2
	end
	5'd63: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0110000;//3
	end
	5'd64: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0011001;//4
	end
	5'd65: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0010010;//5
	end
	5'd66: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0000010;//6
	end
	5'd67: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b1111000;//7
	end
	5'd68: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0000000;//8
	end
	5'd69: 
	begin
		seven_dis = 7'b0000010;//6
		seven_dis1 = 7'b0010000;//9 
	end
	5'd70: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b1000000;//0
	end
	5'd71: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 =  7'b1111001;//1
	end
	5'd72: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0100100;//2
	end
	5'd73: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0110000;//3
	end
	5'd74: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0011001;//4
	end
	5'd75: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0010010;//5
	end
	5'd76: 
	begin
		seven_dis =7'b1111000;//7
		seven_dis1 = 7'b0000010;//6
	end
	5'd77: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b1111000;//7
	end
	5'd78: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0000000;//8
	end
	5'd79: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0010000;//9 
	end

	5'd80: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b1000000;//0
	end
	5'd81: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 =  7'b1111001;//1
	end
	5'd82: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0100100;//2
	end
	5'd83: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0110000;//3
	end
	5'd84: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0011001;//4
	end
	5'd85: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0010010;//5
	end
	5'd86: 
	begin
		seven_dis =7'b1111000;//7
		seven_dis1 = 7'b0000010;//6
	end
	5'd87: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b1111000;//7
	end
	5'd88: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0000000;//8
	end
	5'd89: 
	begin
		seven_dis = 7'b1111000;//7
		seven_dis1 = 7'b0010000;//9 
	end
	5'd90: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b1000000;//0
	end
	5'd91: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 =  7'b1111001;//1
	end
	5'd92: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0100100;//2
	end
	5'd93: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0110000;//3
	end
	5'd94: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0011001;//4
	end
	5'd95: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0010010;//5
	end
	5'd96: 
	begin
		seven_dis =7'b0010000;//9 
		seven_dis1 = 7'b0000010;//6
	end
	5'd97: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b1111000;//7
	end
	5'd98: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0000000;//8
	end
	5'd99: 
	begin
		seven_dis = 7'b0010000;//9 
		seven_dis1 = 7'b0010000;//9 
	end 
	endcase 
end
endmodule 