require "sinatra"

get "/" do
	"My first Sinatra app."
end

get "/about" do
	"MY PROFILE"
	erb(:author)
end