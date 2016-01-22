require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require "pry"
require "lib/movie.rb"

movies = Movie.new

get "/movie_game" do
	erb(:movie_game)
end

post "/movie_game/user" do

	user_input = params[:user_input]
	binding.pry
	redirect to("/movie_game/start")
end

get "/movie_game/start" do

	@pass_array = movies.get_array
	erb(:movie_game_start)
end
	