#title date time
require_relative("lib/post.rb")
require_relative("lib/blog.rb")
require("colorize")

blog = Blog.new

blog.add_post_to_container Post.new("titel 1", 20150112, "some text1", false)
blog.add_post_to_container Post.new("titel 2", 20150113, "some text2", true)
blog.add_post_to_container Post.new("title 3", 20141114, "some text3", false)
blog.add_post_to_container Post.new("title 4", 20150122, "some text4", false)
blog.add_post_to_container Post.new("title 5", 20150112, "some text5", false)
blog.add_post_to_container Post.new("title 6", 20150209, "some text6", false)
blog.add_post_to_container Post.new("title 7", 20160112, "some text7", false)
blog.add_post_to_container Post.new("title 8", 20160101, "some text8", false)
blog.add_post_to_container Post.new("title 9", 20160109, "some text9", true)

blog.publish_front_page

#Add Pagination
puts "Enter NEXT to continue"
user = gets.chomp.to_s.downcase	
while user 
puts "Yes"

end