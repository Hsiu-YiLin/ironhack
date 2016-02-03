class Authenticate
	def initialize(username, password)
	@username = username
	@password = password
	end

	def check
		if (@username == "hsiuyi" && @password == "hey1")
			puts "Welcome back, #{@username}"
			return true

		else 
			puts "Incorrect username / password"
		end
	end
end
