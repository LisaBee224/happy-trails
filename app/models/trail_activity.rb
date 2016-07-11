class TrailActivity < ActiveRecord::Base
	belongs_to :trail
	belongs_to :activity
end
