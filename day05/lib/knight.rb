class Knight < Piece
	
	def start
		if @color == "white"
				"Wk"
			else 
				"Bk"
		end
	end 

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs
		puts dx
		puts dy
		if (dx== 1 && dy==2) || (dx==2 && dy ==1)
				if @color == "white"
				"Wk"
				else 
				"Bk"
				end
			
				else
					false
		end
	end
end