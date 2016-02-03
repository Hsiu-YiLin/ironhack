require_relative("../lib/passwordchecker.rb")


RSpec.describe PasswordChecker do
	before:each do 
		@pword = PasswordChecker.new("test@email.com","-passwordA1@#{}") 
	end

	it "return true >= 7" do
		expect(@pword.lengthcheck).to eq(true)
	end

	it "return true if has crazy characters" do
		expect(@pword.charactercheck).to eq(true)
	end

	it "return true if password has no username" do
		expect(@pword.userdomaincheck).to eq(true)
	end

	it "return true if password is correct" do
		expect(@pword.verify).to eq(true)
	end
end