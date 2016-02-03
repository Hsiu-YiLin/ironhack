class PasswordChecker
	def initialize(email , password)
		@email = email
		@password = password
	end

	def lengthcheck
		@password.length >= 7
		
	end

	def charactercheck
		if (@password =~ /[a-z]/) &&
			(@password =~ /[A-Z]/) &&
			(@password =~ /\d/) &&
			(@password =~ /\w/) &&
			(@password =~ /\W/)
			true
		else
			false
		end
	end

	def userdomaincheck
		
		user = @email.split("@")
		user2 = user[1].split(".")
		p user[0]
		p user2[0]
		if (@password.include? user[0]) || (@password.include? user2[0])
			false
		else
			true
		end
	end

	def verify
		if lengthcheck && charactercheck && userdomaincheck
			true
		else
			false
		end
	end
		






end