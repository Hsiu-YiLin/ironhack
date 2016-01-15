class Knight
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end 

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs
		puts dx
		puts dy
		if (dx== 1 && dy==2) || (dx==2 && dy ==1)
			true
				else
					false
		end
	end
end