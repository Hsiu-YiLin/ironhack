require "imdb"
require "pry"

class Movie
		attr_accessor :movie_array
		def initialize
			@movie_array = []
		end

		def imdb_scan(string)
			@movie_array = Imdb::Search.new(string)
		end

		def get_array
			@movie_array
		end

end