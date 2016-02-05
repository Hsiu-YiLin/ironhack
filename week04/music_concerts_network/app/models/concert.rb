class Concert < ActiveRecord::Base
	validates :artist,:city, :date, :artist, :presence => true	
end
