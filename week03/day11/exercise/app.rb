require "sinatra"
require "sinatra/reloader" if development?

get "/" do
	@time = Time.new(2016, 01, 25, 11,32)
	erb(:home)	
end