require_relative("../lib/stringcalculator.rb")

RSpec.describe StringCalculator do
	before :each do
		@string_calculator = StringCalculator.new
	end

	it "returns 0 for empty string" do
		# p string_calculator.add("") == 0
		expect(@string_calculator.add("")).to eq(0)
	end

	it "returns one number" do
		expect(@string_calculator.add("9")).to eq(9)
		expect(@string_calculator.add("5")).to eq(5)
	end

	it "returns a long number" do
		expect(@string_calculator.add("123129127391, 234234234234")).to eq(357363361625)
	end
end

