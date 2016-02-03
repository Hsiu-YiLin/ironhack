require_relative("lib/authenticate.rb")
require_relative("lib/text.rb")

puts "Enter your username"
username = gets.chomp
puts "Enter your password"
password = gets.chomp
user = Authenticate.new(username, password)

if user.check == true
	user_txt = Text.new
	puts "Please enter text"
	user_text = gets.chomp
	user_txt.check_text_length(user_text)
else
	"Please exit"
end 

		
	


