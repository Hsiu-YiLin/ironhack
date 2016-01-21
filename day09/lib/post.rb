class Post
	attr_reader :title, :date
	def initialize(title, date, text)
		@title = title
		@date = date 
		@text = text
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