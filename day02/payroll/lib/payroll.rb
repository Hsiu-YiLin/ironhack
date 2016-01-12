class Employee
	attr_reader :name, :email
	def initialize(name, email)
	@name=name
	@email=email
	end
end

class HourlyEmployee < Employee
	def initialize(name, email,hour_rate,hour_worked)
		super(name, email)
		@hour_rate=hour_rate
		@hour_worked=hour_worked
	end

	def calculatesalary
		return @hour_rate * @hour_worked
	end
end

class SalaryEmployee < Employee
	def initialize(name, email, salary)
		super(name, email)
		@salary=salary
	end

	def calculatesalary
		@salary 
	end
end

class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, hour_rate, hour_worked)
		super(name, email)
		@salary=salary
		@hour_rate=hour_rate
		@hour_worked=hour_worked
	end

	def calculatesalary
		@salary + ((@hour_worked - 40) * @hour_rate)

	end
end

class Payroll 
	def initialize(employees)
		@employees=employees

	end

	def pay_employees
		@employees.each do |employee|
			puts "#{employee.name} => #{employee.calculatesalary}"
	end

	def notify_employees
		@employees.each do |employee|
		puts "#{employee.name} You have been paid"
	end
	end

	# puts "#{employees.name} => (#{employees.calculatesalary} * 0.82)"
	
	# new_array = @employees.map{|emp|emp.calculatesalary * 0.82}
	# puts new_array.inspect
	# new_array.each do |employee|
	# 	puts "#{employee.name}"
	# end
	# puts "#{employees.name}'s is #{employees.calculatesalary} "


		# @employees.reduce(0.0) {|sum, employee| sum + employee}
	end
end


