class Room

	attr_reader :exit 
	def initialize (description, exit)
		@description = description
		@exit = exit 
	end
	
	def display_description
		puts @description
	end

	# rooms=[false, true, false],
	# 	[false, true, true],
	# 		[false,false,true]rooms=[

end