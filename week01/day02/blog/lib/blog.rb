#container
class Blog
	def initialize()
		@posts_container = []
	end

	def add_post_to_container(post)
		@posts_container.push(post)
	end

	def publish_front_page()
		puts 
		puts @posts_container.length
		
		@posts_container.sort {|post1, post2| post2.date<=>post1.date}
		
		@posts_container.each do |post| if post.sponsor === true
				puts "SPONSORED POST \nPost #{post.title} #{post.date}\n******\n #{post.text}\n ------ \n\n".colorize(:color => :light_blue, :background => :red)
				else
				 puts "Post #{post.title} #{post.date}\n******\n #{post.text}\n ------ \n\n"
				end
		end
		# puts @posts_container
		# post1 = Post.new("titel1", 01122015, "some text1")

	end
end