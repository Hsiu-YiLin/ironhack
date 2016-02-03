class Entry < ActiveRecord::Base
	belongs_to :project
	validates :hours, numericality: {only_integer: true}, presence: true
	validates :minutes, numericality: {only_integer: true}, presence: true
	validates :date, presence: true
	
	validates_presence_of :date, :hours, :minutes

	validate :project_id, presence: true
end
