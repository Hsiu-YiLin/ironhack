#pair programming

class ProgrammingLanguage
	attr_accessor :name, :age, :type

	def initialize (name, age, type)
		@name = name
		@age = age
		@type = type
	end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("Javascript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go",6,"Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

language_array = [ruby, python, javascript, go, rust, swift, java]

# Step 1
def language_output(array)
	array.each do |language|
		puts "Language: #{language.name} | Age: #{language.age} | Type: #{language.type}"   
	end
end

# Step 2

new_array = language_array.map! do |language|
	ProgrammingLanguage.new(language.name, language.age + 1, language.type)
		 
end


#Step 3 
sorted_array = language_array.sort do |language1, language2| language2.age <=> language1.age end
#step 4



  delete_array = language_array.delete_if do |language|    
  	language.name == "Java"

  end


# #step 5

 shuffle_array = sorted_array.shuffle 

# # step 6
 drop_array = language_array.drop(4)
 

 take_array = language_array.take(3)

  rotated_array = language_array.rotate(3)
  
  language_output(new_array)



