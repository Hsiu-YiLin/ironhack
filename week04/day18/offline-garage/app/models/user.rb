class User < ActiveRecord::Base
	has_many :products
	validates :email, presence: true, uniqueness: true
	
end
