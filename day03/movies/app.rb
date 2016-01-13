#main
require_relative("lib/chart.rb")
require_relative("lib/movies.rb")

movies = Chart.new

movie1 = Movies.new("Die Hard", 10)
movie2 = Movies.new("Zoolander", 9)
movie3 = Movies.new("Die Hard 2", 9)
movie4 = Movies.new("Inception", 4)

movies.add_movies(movie1) 
movies.add_movies(movie2) 
movies.add_movies(movie3) 
movies.add_movies(movie4) 

puts movies.movie_chart
puts movies.movie_titles_bar
puts movies.movie_titles