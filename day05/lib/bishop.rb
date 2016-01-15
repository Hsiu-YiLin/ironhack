class Bishop
	attr_reader :pos_x, :pos_y, :color
	def initialize(pos_x, pos_y, color)
		@pos_x = pos_x
		@pos_y = pos_y
		@color = color
	end 

	def start
		if @color == "white"
				"WB"
			else 
				"BB"
		end
	end

	def move?(dest_x, dest_y)
		dx = (dest_x - @pos_x).abs
		dy = (dest_y - @pos_y).abs
		puts dx
		puts dy
		if dx==dy
				if @color == "white"
				"WB"
			else 
				"BB"
					end
				else
					false
		end
	end
end