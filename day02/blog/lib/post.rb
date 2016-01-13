class Post
	attr_accessor :title, :date,:text, :sponsor
	def initialize (title, date, text, sponsor)
	@title = title
	@date = date
	@text = text
	@sponsor = sponsor
	end
	
	# def buildpost()
	# 	return "Post #{@title} #{@date}\n******\n #{@text}\n ------ \n\n"
	# end
end

