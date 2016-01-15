class Pawn
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end

	def move?(dest_x, dest_y)
	dx = (dest_x - @pos_x).abs
	dy = (dest_y - @pos_y)
	puts dy
	if (dx == 0 && dy == 1) || ((@color == "black") && (dx == 0 && dx == -1)) 
		true
		else
				false
		end
	end
end