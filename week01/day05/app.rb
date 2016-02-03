require_relative("lib/piece.rb")	
require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/chessboard.rb")


white_king = King.new(5, 1, "white")
black_king= King.new(5, 8, "black")

white_rook_left = Rook.new(1, 1, "white`")
white_rook_right = Rook.new(8, 1, "white")
black_rook_left = Rook.new(1 , 8, "black")
black_rook_right = Rook.new(8, 8, "black")

# white_bishop_left = Bishop.new(3, 1, "white")
# white_bishop_right = Bishop.new(6, 1, "white")
# black_bishop_left = Bishop.new(3, 8, "black")
# black_bishop_right = Bishop.new(6, 8, "black")

# white_knight_left =  Knight.new(2, 1, "white")
# white_knight_right =  Knight.new(7, 1, "white")
# black_knight_left = Knight.new(2, 8, "black") 
# black_knight_right = Knight.new(7, 8, "black")

# white_queen = Queen.new(4, 1, "white")
# black_queen = Queen.new(4, 8, "black")

# white_pawn1 = Pawn.new(1, 2, "white")
# white_pawn2 = Pawn.new(2, 2, "white")
# white_pawn3 = Pawn.new(3, 2, "white")
# white_pawn4 = Pawn.new(4, 2, "white")
# white_pawn5 = Pawn.new(5, 2, "white")
# white_pawn6 = Pawn.new(6, 2, "white")
# white_pawn7 = Pawn.new(7, 2, "white")
# white_pawn8 = Pawn.new(8, 2, "white")

black_pawn1 = Pawn.new(1, 7, "black")
# black_pawn2 = Pawn.new(2, 7, "black")
# black_pawn3 = Pawn.new(3, 7, "black")
# black_pawn4 = Pawn.new(4, 7, "black")
# black_pawn5 = Pawn.new(5, 7, "black")
# black_pawn6 = Pawn.new(6, 7, "black")
# black_pawn7 = Pawn.new(7, 7, "black")
# black_pawn8 = Pawn.new(8, 7, "black")

chessboard = Chessboard.new 

chessboard.initial_chessboard(black_pawn1)
	# IO.read("lib/initialsetup.txt"))
#chessboard.initial_chessboard()
puts IO.read("lib/initialsetup.txt")


