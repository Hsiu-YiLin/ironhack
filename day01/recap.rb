class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name=name
		@city=city
		@capacity = capacity
		@price = price
	end
end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 24),
	Home.new("Fernando's place", "Seville", 5, 47),
	Home.new("Josh's place", "Pittsburgh", 3, 41),
	Home.new("Gonzalo's place", "Målaga", 2, 45),
	Home.new("Ariel's place", "San Juan", 4, 49),
	Home.new("Red's place", "New York", 2, 500),
	Home.new("Sam's place", "Chicago",1, 2),
	Home.new("Left's place", "Miami", 3, 6000),
	Home.new("Iron's place", "Melbourne", 5, 40),
	Home.new("Steve's place", "Atlanta",2, 96),
]

def array_printer(array_of_home)
	array_of_home.each {|home|puts "#{home.name} in #{home.city}\nPrice: $#{home.price} a night\nCapcity: #{home.capacity}\n "}
end

puts "Please select an option"
puts "0: See all listings"
puts "1: Sort home prices in ascending order"
puts "2: Sort home prices in descending order"
puts "3: Sort home capacity in ascending order"
puts "4: Sort home capacity in descending order"
puts "5: Find a home in a city that you want"
puts "6: See the average price"
puts "7: Search by price"
input = gets.chomp.to_i

if input == 0
	array_printer(homes)

elsif input == 1 
	homes_sorted = homes.sort {|home1, home2| home1.price <=> home2.price}
	puts "Home prices sorted in ascending order"
	array_printer(homes_sorted)

elsif input == 2 
	homes_sorted = homes.sort_by {|home| -home.price}
	puts "Home prices sorted in decending order"
	array_printer(homes_sorted)

elsif input == 3
	homes_sorted = homes.sort_by {|home| home.capacity}
	puts "Home capacity sorted in ascending order"
	array_printer(homes_sorted)

elsif input == 4 
	homes_sorted = homes.sort_by {|home| -home.capacity}
	puts "Home capacity sorted in decending order"
	array_printer(homes_sorted)

elsif input == 5
	puts "Please enter the city you want to find a home in"
	city_find = gets.chomp.to_s
	city_found = homes.select {|hm| hm.city.downcase == city_find.downcase}
	puts "Here's what we found:"
	array_printer(city_found)

elsif input == 6
	puts "Here is the average price"
	average_price = homes.reduce(0.0) {|sum, home| sum + home.price}
	puts average_price/

elsif input == 7
	puts "Enter a price for how much you want to pay"
	user_price = gets.chomp.to_i
	user_answer = homes.find {|home| home.price == user_price}
	puts "Here's what we found:"
	puts "#{user_answer.name} in #{user_answer.city}\nPrice: $#{user_answer.price} a night\nCapcity: #{user_answer.capacity}\n "
end