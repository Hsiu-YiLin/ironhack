require_relative("lib/room.rb")
require_relative("lib/game.rb")

puts "You are in a room."

puts "There is a door to the " + available_rooms

puts "Please enter a room"
player_input = gets.chomp.to_s


			

p rooms[2][1].inspect	
if rooms[0][2] == true 
	puts "YES" 
end



room = Room.new()
game = Game.new 
game.add_room(room)