class Chart

	def initialize
		@movies = []
	end

	def add_movies(movie)
		@movies.push(movie)
	end
	
	def movie_chart
		movie_string=""
		10.downto(1) do |i|
		@movies.each do |movie|
		if movie.rating >= i
			 movie_string += "|x"
			else
				movie_string += "| "
			end

	  end
	  movie_string += "|\n"
	end


	movie_string
	end

	def movie_titles_bar
		movie_string="\n"
		movie_counter = 1
		@movies.each do |movie|
			movie_string += "|" + movie_counter.to_s
			movie_counter += 1
		end
		movie_string += "| \n "
		movie_string

	end

	def movie_titles
		movie_string=""
		movie_counter = 1
		@movies.each do |movie|
			movie_string += movie_counter.to_s + ": " + movie.title + "\n"
			movie_counter += 1
		end
		movie_string

	end



end
