require 'ruby-dictionary'
require_relative("lib/sort.rb")

dictionary = Dictionary.from_file('/Users/hsiu-yilin/Dropbox/ironhack/day04/partnerprogramming/lib/web2.txt')
#p dictionary.exists?("bees")

puts "Please enter the first word"
word1 = "copy"

#word1 = soda

puts "Please enter the second word"
word2 = "code"

puts "----------------"

#word2 = cake
puts word1
sorted = Sort.new(word1.downcase, word2.downcase, dictionary)

sorted.sort