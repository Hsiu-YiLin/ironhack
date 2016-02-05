class Entry < ActiveRecord::Base
  belongs_to :project

  validates :hours, numericality: {only_integer: true}, presence: true
  validates :minutes, numericality: { only_integer: true }, presence: true
  validates :date, presence: true

end
