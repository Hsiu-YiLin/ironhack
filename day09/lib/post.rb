class Post
	def initialize(title, date, text)
		@title = title
		@date = date 
		@text = text
	end

	def display
		puts "#{@title}"
		puts "**************"
		puts "#{@text}"
		puts "----------------"
		puts ""
	end
end