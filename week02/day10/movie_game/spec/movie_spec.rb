require "../lib/movie.rb"

describe Movie do
	before :each do 
		@array = Movie.new
	end

describe "Testing movie initialize" do
	it "Returns empty array" do
	expect(@array.movie_array).to eq([])
	end 
end

describe "Testing IMDB scan" do
	it "Returns array with elements" do
		array1= @array.imdb_scan("help")
	expect(array1.any?).to eq(true)
	end 
end

describe "Testing get_array" do
	it "Returns array with 9 elements with pictures" do
		array1 = @array.imdb_scan("help")
		array1 = @array.get_array
		expect(array1.length).to eq(9)
		end 
	end
end