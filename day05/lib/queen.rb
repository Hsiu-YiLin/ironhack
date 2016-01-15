class Queen
	attr_reader :pos_x, :pos_y, :color
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end

	def start
		if @color == "white"
				"WQ"
			else 
				"BQ"
		end
	end

	def move?(dest_x, dest_y)
	dx = (dest_x - @pos_x).abs
	dy = (dest_y - @pos_y).abs

		if ((dx == 0 || dx ==1) && (dy == 0 || dy ==1)) || dx==dy
				if @color == "white"
				"WQ"
			else 
				"BQ"
					end
			else
				false
		end
	end
end