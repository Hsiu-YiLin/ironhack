# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

puts "Creating projects"
# 5.times do |i|
#   p = Project.create(name: "Project #{i}", description: "Hello #{i}")
#   if i.odd?
#     p.entries.create(minutes: 10 * i, hours: 1 * i)
#   else
#     p.entries.create(minutes: i, hours: i)
#   end
# end

p = Project.create(name: "Leo")
10 .times do
  p.entries.create(hours: 1, minutes: 10, date: 1.month.ago)
end
