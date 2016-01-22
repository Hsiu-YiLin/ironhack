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
	@answer = movies.random_question
	erb(:movie_game_start)
end

get "/movie_game/question" do
	erb(:movie_game_right)
	end
	
get "/movie_game/wrong" do
	erb(:movie_game_wrong)
	end