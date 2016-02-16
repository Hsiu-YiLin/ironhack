class Tournament < ActiveRecord::Base
	has_many :registrations
	has_many :players, through: :registration  
end
