require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative("lib/post.rb")
require_relative("lib/blog.rb")

post = Post.new("Title1", Time.new(2016, 1, 1), "FIRST POST STUFF")
post1 = Post.new("Post2", Time.new(2016, 2, 1), "SECOND POST STUFF")
post2 = Post.new("Post3", Time.new(2016, 1, 16), "THIRD POST STUFF")
post3 = Post.new("Post4", Time.new(2016, 1, 21), "FOURTH POST STUFF")


my_blog = Blog.new
my_blog.add_post(post)
my_blog.add_post(post1)
my_blog.add_post(post2)
my_blog.add_post(post3)

@content = my_blog.return_latest_posts

# my_blog.publish_front_page

# puts "nxt for Next prev for Previous"

# while user_input != "exit"

# 	if user_input == "nxt"
# 		my_blog.next_page
# 	elsif user_input == "prev"
# 		my_blog.previous_page
# 	else user_input != "exit"
# 		puts "Command not found"
# 	end
# 	user_input = gets.chomp
# end

get "/" do
	@content = my_blog.return_latest_posts
	binding.pry
	erb :homepage	
end

get "/post_detail/:post_index" do
	@content = my_blog.return_latest_posts
	value = params[:post_index] # value = 0
	@new_content = @content[value.to_i]
	# binding.pry
	erb(:post_index)
end

get "/post_index"