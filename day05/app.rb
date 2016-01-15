require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/bishop.rb")

white_king = King.new(5, 1, "white")
black_king= King.new(5, 8, "black")

white_rook_left = Rook.new(1, 1, "white`")
white_rook_right = Rook.new(8, 1, "white")
black_rook_left = Rook.new(1 , 8, "black")
black_rook_right = Rook.new(8, 8, "black")

p black_rook_left.move?(1,10)
p black_rook_right.move?(2,3)

white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white" )

