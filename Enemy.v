module Enemy(clk, rst, enemyPos_row, enemyPos_col, div_clk);

input rst, clk;

reg [31:0]random;

output div_clk;
reg div_clk;
reg [31:0]clk_cnt;

reg enemy_move;
reg attacked;

output reg[2:0]enemyPos_row;
output reg[2:0]enemyPos_col;

always @(posedge clk) begin
	if (!rst) begin
		div_clk <= 0;
		clk_cnt <= 0;
	end
	else  begin
		if (clk_cnt == 32'd12500000) begin
			div_clk <= ~div_clk;
			clk_cnt <= 0;
		end
		else 
			clk_cnt <= clk_cnt + 1;
	end
end

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
always @(posedge div_clk)
begin
	if(!rst && !attacked)
	begin
		enemyPos_row = 3;
		enemyPos_col = 1;
	end
	else
	begin
		random = random * 1103515245 + 12345;
		enemy_move = ((random/65536)%32768) % 2;

		if(enemy_move == 0)
		begin
			if(enemyPos_row < 6)
			begin
				enemyPos_row <= enemyPos_row + 1;
			end
			else
			begin
				enemyPos_row <= enemyPos_row - 1;
			end
		end
		else if(enemy_move == 1)
		begin
			if(enemyPos_row > 1)
			begin
				enemyPos_row <= enemyPos_row - 1;
			end
			else
			begin
				enemyPos_row <= enemyPos_row + 1;
			end
		end
	end
end


endmodule 