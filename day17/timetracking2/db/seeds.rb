# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Project.create name: "Ironhack", description: "Ironhack is a ..."
# Project.create name: "Time tracking app"
# Project.create name: "Recipes", description: "Track my favorite recipes"


10.times do|x|
	p= Project.create name: "Test#{x}", description: "TestDescription#{x}"
	p.entries.create(minutes: 10+x, hours: 10+x)
end
	