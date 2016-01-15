class Rook
	attr_reader :pos_x, :pos_y, :color
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end 

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

		if (dx >= 0 && dy == 0)  || (dx == 0 && dy >=0)
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