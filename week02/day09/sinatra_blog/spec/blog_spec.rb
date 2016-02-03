require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
	before :each do 
	
	@task1 = Post.new("Title1", Time.new(5,2,3), "Text1")
	@task2 = Post.new("Title2", Time.new(20,4,5), "Text2")
	@blog = Blog.new
	@blog.add_post(@task1)
	@blog.add_post(@task2)
	end

	it "Adds post to Blog posts" do
		expect(true).to eq(@blog.posts.length==2)
	end

	it "Returns array of posts from Blog" do
		expect(@blog.posts).to eq([@task1, @task2])
	end

	it "Returns latest posts array" do
		expect(@blog.return_latest_posts).to eq([@task2, @task1])
	end 

end