class Trail < ActiveRecord::Base
  has_many :users
  has_many :trail_activities
  has_many :activities, through: :trail_activities

end
