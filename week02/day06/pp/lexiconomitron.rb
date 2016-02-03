class Lexiconomitron
	def eat_t(string)
		new_string = ""

		string.chars.each do |c|
			if c.downcase != "t"
				new_string += c
			end
		end

		new_string
	end

	def shazam(string_a)
		new_string_a = [string_a[0], string_a[string_a.length-1]]

		new_string_a.each_with_index do |w, i|
			w.reverse!

			new_string_a[i] = eat_t(w)
		end

		new_string_a
	end

	def oompa_loompa(string_a)
		string_a.map! do |w|
			eat_t(w)
		end
		
		string_a.select! do |w|
			w.length < 4			
		end		
	end
end