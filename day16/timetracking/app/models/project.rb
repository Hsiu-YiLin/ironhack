class Project < ActiveRecord::Base
	def self.clean_old
		# timelastweek = Date.beginning_of_week()-7
		where("created_at < ?", 1.week.ago).delete_all
	end
end
