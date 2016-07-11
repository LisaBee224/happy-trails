class Activity < ActiveRecord::Base
	has_many :trail_activities
	has_many :trail, through: :trail_activities
end
