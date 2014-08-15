class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_memberships
  has_many :players, through: :team_memberships
end
