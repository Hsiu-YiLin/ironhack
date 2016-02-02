# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Contact.create(name: "TestName1", 
	address: "TestAddress2", 
	phone_number: "1234567891", 
	email: "test@test.1com")

Contact.create(name: "TestName2", 
	address: "TestAddress2", 
	phone_number: "1234567892", 
	email: "test@test.com2")

Contact.create(name: "TestName3", 
	address: "TestAddress3", 
	phone_number: "1234567893", 
	email: "test@test.com3")

Contact.create(name: "TestName4", 
	address: "TestAddress4", 
	phone_number: "1234567894", 
	email: "test@test.com4")

Contact.create(name: "TestName5", 
	address: "TestAddress5", 
	phone_number: "1234567895", 
	email: "test@test.com5")