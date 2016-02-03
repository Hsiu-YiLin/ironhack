require_relative("room.rb")
class Game
	def initialize
		@rooms=[]
		@current_room = 0
	end

	def add_room(single_room)
		@rooms.push(single_room)
	end

	def play
		user_input = ""
		
		while user_input !=@rooms[@current_room].exit
			@rooms[@current_room].display_description
			puts "You may exit in this direction: #{@rooms[@current_room].exit.upcase}"
			user_input = gets.chomp
		end

		@current_room += 1
		if @current_room != @rooms.length
			play
		end
	end

	
end