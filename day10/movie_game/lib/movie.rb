require "imdb"
require "pry"

class Movie
		attr_accessor :movie_array
		def initialize
			@movie_array = []
		end

		def imdb_scan(string)
			movie_search = Imdb::Search.new(string)
			@movie_array = movie_search.movies
		end

		def get_array
			new_array = []
			var = 0
			while new_array.length<9
				
				if @movie_array[var].poster != nil
					new_array << @movie_array[var]
				end
				var +=1 
			end
			new_array[0..8]
		end

end