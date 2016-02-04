class Project < ActiveRecord::Base
	validates :name,
		presence: true,
		uniqueness: true,
		length: {maximum: 30},
		format: {with: /(\w|\s)+/}

end
