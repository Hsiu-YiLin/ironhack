require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require "pry"
require "./lib/movie.rb"

movies = Movie.new

get "/movie_game" do
	erb(:movie_game)
end

post "/movie_game/user" do

	user_input = params[:user_input]
	movies.imdb_scan(user_input)
	redirect to("/movie_game/start")
end

get "/movie_game/start" do

	@pass_array = movies.get_array
	# binding.pry
	erb(:movie_game_start)
end
	