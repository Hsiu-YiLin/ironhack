class InvisibleCar < Car
	def startcar
		puts "Dude, where's my car?"
		puts @sound
		puts super 
	end
end