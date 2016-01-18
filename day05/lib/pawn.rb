class Pawn < Piece
	
	def start
		if @color == "white"
				"WP"
			else 
				"BP"
		end
	end

	def move?(dest_x, dest_y)
	dx = (dest_x - @pos_x).abs
	dy = (dest_y - @pos_y)
	puts dy
	if (dx == 0 && dy == 1) || ((@color == "black") && (dx == 0 && dx == -1)) 
		"BP"
		elsif (dx == 0 && dy.abs == 2)
			"WP"
				else
					false
		end
	end
end