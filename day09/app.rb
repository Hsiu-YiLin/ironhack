require "sinatra"
require "sinatra/reloader" if development?
require "pry"

post = Post.new("My first post", Time.new(2016, 1, 1), "This is my first post on my cool new blog")
post1 = Post.new("My second post", Time.new(2016, 2, 1), "This is my second post on my cool new blog")
post2 = Post.new("My third post", Time.new(2016, 1, 16), "This is my third post on my cool new blog")
post3 = Post.new("My fourth post", Time.new(2016, 1, 21), "This is my fourth post on my cool new blog")


my_blog = Blog.new
my_blog.add_post(post)
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

my_blog.publish_front_page

puts "nxt for Next prev for Previous"

user_input = gets.chomp

while user_input != "exit"

	if user_input == "nxt"
		my_blog.next_page
	elsif user_input == "prev"
		my_blog.previous_page
	else user_input != "exit"
		puts "Command not found"
	end
	user_input = gets.chomp
end