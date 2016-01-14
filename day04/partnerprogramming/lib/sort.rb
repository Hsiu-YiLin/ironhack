class Sort
	def initialize(word1, word2, dictionary)
		@word1 = word1
		@word2 = word2
		@newword = word1
		@dictionary = dictionary
		@letterold = ""		
	end

	def sort
		num = 0
		while (@newword != @word2)
		
			if @word1[num] == @word2[num]
				@newword[num] = @word2[num]
								
			else
				@letterold=@word1[num]
				@newword[num] = @word2[num]
				puts @newword
					if @dictionary.exists?(@newword) == true
					@newword = @word2
					puts @newword
					else
					@newword[num]=@letterold
					end
			end
			num += 1		
		end
	end
end


	# def doesitexists(newword)

	# # dictionary.exists?(newword)	
	# end
