class Calculator
	def add(num1, num2)
		# one = num1.to_f
		# two = num2.to_f
		result = num1 + num2
		"#{num1} + #{num2} = #{result}"
	end

	def subtract(num1, num2)
		result = num1 - num2
		"#{num1} - #{num2} = #{result}"

	end

	def multiply(num1, num2)
		result = num1 * num2
		"#{num1} * #{num2} = #{result}"
	
	end

	def divide(num1, num2)
		result = num1 / num2
		"#{num1} / #{num2} = #{result}"

	end
end