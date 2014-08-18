class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_memberships, dependent: :destroy
  has_many :players, through: :team_memberships, dependent: :destroy
end
