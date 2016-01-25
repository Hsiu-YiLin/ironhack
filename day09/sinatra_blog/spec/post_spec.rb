require_relative("../lib/post.rb")

RSpec.describe Post do
	
	before :each do
	@test_post = Post.new("HereTitle",Time.new(1,2,3),"HereText")
	end

	it "creates instance for a new post" do
		expect(new_post = Post.new("HereTitle",Time.new(1,2,3),"HereText")).to eq(@test_post)
	end
end