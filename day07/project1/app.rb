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

get "/users/:username" do
	@username = params[:username]
	erb(:users)

end

get "/hours/ago/:hour" do
	time = Time.now
	@hour_num = params[:hour]
	@time_hour_now = time.strftime("%H")
	@result_hour = @time_hour_now.to_i - @hour_num.to_i
	erb(:time_hour)
end