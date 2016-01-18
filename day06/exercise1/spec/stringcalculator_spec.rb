require_relative("../lib/stringcalculator.rb")

RSpec.describe StringCalculator do 
	it "returns 0 for empty string" do
		# p string_calculator.add("") == 0
		string_calculator = StringCalculator.new
		expect(string_calculator.add("")).to eq(0)
	end

	it "returns one number" do
		string_calculator = StringCalculator.new
		expect(string_calculator.add("9")).to eq(9)
		expect(string_calculator.add("5")).to eq(5)
	end

	it "returns a long number" do
		string_calculator = StringCalculator.new
		expect(string_calculator.add("123129127391, 234234234234")).to eq(357363361625)
	end
end

