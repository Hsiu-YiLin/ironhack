class Rook < Piece	
	def start
		if @color == "white"
				"WR"
			else 
				"BR"
		end
	end

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs

		if (dy == 0) || (dx == 0)
				if @color == "white"
				"WR"
			else 
				"BR"
					end
			else
				false
		end
	end
end