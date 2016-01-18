require_relative("lib/stringcalculator.rb")

string_calculator = StringCalculator.new

p string_calculator.add("1, 2") == 3
p string_calculator.add("4, 7") == 11
p string_calculator.add("") == 0
p string_calculator.add("9") == 9
p string_calculator.add("5") == 5 
p string_calculator.add("123129127391, 234234234234") == 357363361625
