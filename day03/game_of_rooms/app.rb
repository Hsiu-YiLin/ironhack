require_relative("lib/room.rb")
require_relative("lib/game.rb")

room0 = Room.new("There is a door to the south","s")
room1 = Room.new("There is a large door to the south", "s")
room2 = Room.new("There is a gray door to the east", "e")
room3 = Room.new("There is a tiny door to the south", "s")
room4 = Room.new("You fell into a pit. You are dead.", "death")

game = Game.new 
game.add_room(room0)
game.add_room(room1)
game.add_room(room2)
game.add_room(room3)
game.add_room(room4)

game.play

# puts "Please enter a room"
# player_input = gets.chomp.to_s
			

# p rooms[2][1].inspect	
# if rooms[0][2] == true 
# 	puts "YES" 
# end