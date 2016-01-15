require_relative("lib/king.rb")

black_king= King.new(5, 8, "black")
white_king = King.new(5, 1, "white")

# Test
p white_king.move?(5,2)