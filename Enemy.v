module Enemy(clk, rst, enemyPos);

input rst, clk;

reg [31:0]random;

reg enemy_move;
reg attacked;

output reg[2:0]enemyPos;

// always @(posedge div_clk)
// begin
// 	if(scan_row[enemyPos - 1] == 16'b010000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else if(scan_row[enemyPos] == 16'b0010000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else if(scan_row[enemyPos + 1] == 16'b0100000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else begin
// 		attacked = 0;
// 	end
// end

// dot matrix col assign
always @(posedge clk)
begin
	if(!rst && !attacked)
	begin
		enemyPos = 3;
	end
	else
	begin
		random = random * 1103515245 + 12345;
		enemy_move = ((random/65536)%32768) % 2;

		if(enemy_move == 0)
		begin
			if(enemyPos < 6)
			begin
				enemyPos <= enemyPos + 1;
			end
			else
			begin
				enemyPos <= enemyPos - 1;
			end
		end
		else if(enemy_move == 1)
		begin
			if(enemyPos > 1)
			begin
				enemyPos <= enemyPos - 1;
			end
			else
			begin
				enemyPos <= enemyPos + 1;
			end
		end
	end
end




endmodule 