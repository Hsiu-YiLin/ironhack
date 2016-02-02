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
end
