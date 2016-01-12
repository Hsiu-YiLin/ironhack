shoe_brands = ["Nike", "Reebox", "Puma", "Steve Madden", "Uggs"]

shoe_brands.each_with_index do |brand, index|
	puts "This brand is my #{index + 1} favorite #{brand}"
end

favorite = shoe_brands.find do |brand|
	result = brand.length == 6
	puts brand + "-> #{result}"
	result
end

puts "My real favorite brand is: #{favorite}"