require "pry"
require "sinatra"
require "sinatra/reloader" if development?
enable(:sessions)

credentials = {
	"321" => "321",
	"namethere" => "passyou",
	"rick" => "wrongpassword"
}

get "/" do
  	erb(:homepage)
end

post "/check_username" do
	username = params[:user]
	password = params[:password]
	
	
	# user_credentials[username] = password

	credentials.each_key{|user| 
		# binding.pry
		if username == user
			p user
			session[:username] =[]
			session[:username] = username
			redirect to ("/welcome")
			# erb(:welcome)
    		# session[:password] = password
    		# erb(:welcome)
    	else
    		redirect to ("/")    		
    	end
    }

    
end

get "/welcome" do 
	erb(:welcome)
end



#secret page