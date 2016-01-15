# require_relative("king.rb")
# require_relative("rook.rb")
# require_relative("bishop.rb")
# require_relative("knight.rb")
# require_relative("queen.rb")
# require_relative("pawn.rb")
# require_relative("chessboard.rb")	

class Chessboard
	def initialize
		@chessboardpieces = []
		# @chessboardpieces.push(chess_piece)
		@chessboard = Array.new(9,Array.new(9, "--"))

	end

	def initial_chessboard(chess_piece)
		
		# @chessboard[chess_piece.pos_x][chess_piece.pos_y] = chess_piece.start 

		
		#@chessboard = chess_piece.start
	# 	@chessboard = [:i][:y]
	# end

		x=chess_piece.pos_x
		y=chess_piece.pos_y
		puts @chessboard[x][y] = chess_piece.start
		
	end

	def print


		# string = ""
		# 1.upto(8) {|i| puts " \n "
		# 	1.upto(8) {|y| string += @chessboard[i][y]}
		# }
		# string
		puts @chessboard[1][7].inspect
	end
end