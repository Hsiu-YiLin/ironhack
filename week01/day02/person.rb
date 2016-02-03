class Person
	attr_reader :name
	attr_accessor :age
	def initialize(name, age)
		@name=name
		@age=age
	end
end

test_person = Person.new("Friend",22)
puts test_person.age
puts test_person.name

test_person.age = 23
puts test_person.age
test_person.name = "NoFriend"
puts test_person.name

#Returns error on line 16