require "sinatra"

get "/" do
	"My first Sinatra app."
end

get "/about" do
	"MY PROFILE"
	erb(:author)
end

get "/hi" do
	"Hello"
	time = Time.now
	@str_time = time.strftime("YEAR: %Y: MONTH: %m DATE: %d")
	erb(:hello)
end