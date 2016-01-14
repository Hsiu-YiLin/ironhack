class Game
	def initialize
		@rooms=[]
		@current_room = 0
	end

	def add_rooms(single_room)
		@rooms.push(single_room)
	end

	def play
		user_input= ""
		@rooms[0].display_description
		user_input = gets.chomp
		while user_input !=@room[0].exit
			@rooms[0].display_description
		end
	end

	def current_room
end