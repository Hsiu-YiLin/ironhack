class Contact < ActiveRecord::Base
	def make_favorite!
		self.favorited = true
	end
end
