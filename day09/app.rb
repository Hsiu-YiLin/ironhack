require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative("lib/post.rb")
require_relative("lib/blog.rb")

post = Post.new("Title1", Time.new(2016, 1, 1), "FIRST POST STUFF","ME", "FUN")
post1 = Post.new("Post2", Time.new(2016, 2, 1), "SECOND POST STUFF", "ME", "BUSINESS")
post2 = Post.new("Post3", Time.new(2016, 1, 16), "THIRD POST STUFF", "ME", "ENTERTAINMENT")
post3 = Post.new("Post4", Time.new(2016, 1, 21), "FOURTH POST STUFF", "ME", "FOOD")


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
	erb :homepage	
end

get "/post_detail/:post_index" do
	@content = my_blog.return_latest_posts
	value = params[:post_index] # value = 0
	@new_content = @content[value.to_i]
	# binding.pry
	erb(:post)
end

get "/create_post" do
	erb(:create_post)
end
# get /:post_index"	
# end

post "/make_post" do
	title = params[:post_title]  
	content = params[:post_content]
	author = params[:author]
	category = params[:category]
	post = Post.new(title, Time.now, content, author, category)
	my_blog.add_post(post)
	redirect to("/")
end