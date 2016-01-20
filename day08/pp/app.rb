require "pry"
require "sinatra"
require "sinatra/reloader" if development?
require_relative("lib/passwordchecker.rb")

get "/"  do
	erb(:home)	
end

post "/validate" do
	username = params[:username]
	password = params[:password]

	test = PasswordChecker.new(username, password)
	if test.verify == true
		redirect to("/congrats")
	else
		redirect to("/faraz")
	end
end

get "/congrats" do
	erb(:congrats)
end

get "/faraz" do
	erb(:loser)
end
