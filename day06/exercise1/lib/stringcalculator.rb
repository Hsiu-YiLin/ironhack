class StringCalculator
	def add(string)
	result = 0
	new_string = string.split(',')
	p new_string
	new_string.each {|char| 
		if char.to_i.abs > 0
			
			p char.to_i
			result += char.to_i 
		end
	}
	result
	end
end


