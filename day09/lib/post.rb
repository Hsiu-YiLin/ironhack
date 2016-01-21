class Post
	attr_reader :title, :date, :text, :author, :category 
	def initialize(title, date, text, author, category)
		@title = title
		@date = date 
		@text = text
		@author = author
		@category = category
	end

	# Put into view
	# def display
	# 	puts "#{@title}"
	# 	puts "**************"
	# 	puts "#{@text}"
	# 	puts "----------------"
	# 	puts ""
	# end
end