class Project < ActiveRecord::Base
	has_many :entries
	# def self.clean_old
	# 	timelastweek = Date.beginning_of_week()-7
	# 	where("created_at < ?", 1.week.ago).delete_all
	# end

	def self.last_created_projects(num)
		date = Date.current
		where("created_at >  ? ",date).limit(num)
	end

	def total_hour_in_month(month,year)
		sum = 0
		min = 0
		current_month = Date.new(year, month)
		entries.where(date: current_month.beginning_of_month..current_month.end_of_month) each {|entry| 
			sum += entry.hours
			mint += entry.minutes
		}
		minhour = min/60
		sum += minhour

	end
end
