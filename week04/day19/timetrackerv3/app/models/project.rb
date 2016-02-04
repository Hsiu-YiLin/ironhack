class Project < ActiveRecord::Base
  has_many :entries

  validates :name,
    presence: true,
    uniqueness: true,
    length: {maximum: 30}, format: {with: /(\w|\s)+/}

  def self.clean_old
    where("created_at < ?", 1.week.ago).destroy_all
  end

  def total_hours_in_month(month, year)
    sum = 0
    minutes = 0

    month = Date.new(year, month)

    entries
      .where(date: month.beginning_of_month..month.end_of_month)
      .each do |entry|
      sum += entry.hours
      minutes += entry.minutes
    end
    hour_minutes = minutes / 60

    sum + hour_minutes
  end
end
