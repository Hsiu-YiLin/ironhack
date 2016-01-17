class Sort
	def initialize(word1, word2, dictionary)
		@word1 = word1
		@word2 = word2
		@newword = word1
		@dictionary = dictionary
		@letterold = ""		
	end

	def sort
		
		while @newword != @word2
			num = 0
			try_num = 0
			failed_num = 0	
			while num < @word1.length

				if @word1[num] == @word2[num]
					@newword[num] = @word2[num]
								
				else
					try_num +=1
					@letterold = @word1[num]
					@newword[num] = @word2[num]
					
						if @dictionary.exists?(@newword) == true
						puts @newword
												
						else
						@newword[num]=@letterold
						failed_num +=1
						end
				end

			num += 1
			end		
			
		if failed_num == try_num
			puts "No can do."
			break
		end
		end
	end
end