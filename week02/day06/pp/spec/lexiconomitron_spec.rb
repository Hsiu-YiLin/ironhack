
require_relative("../lexiconomitron.rb")


describe Lexiconomitron do
	before :each do
		@lexi = Lexiconomitron.new
	end

  	describe "#eat_t" do
    	it "removes every letter t from the input" do
      		expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    	end
  	end

  	describe "#shazam" do
  		it "reverses the letters of the words from an array and returns first and last words" do
  			string_a = ["This", "is", "a", "boring", "test"]

  			expect(@lexi.shazam(string_a)).to eq(["sih", "se"])
  		end
  	end

  	describe "#oompa_loompa" do
  		it "returns words less than 3 characters from an array" do
  			string_a = ["if", "you", "wanna", "be", "my", "lover"]

  			expect(@lexi.oompa_loompa(string_a)).to eq(["if", "you", "be", "my"])
  		end
  	end
end 