class Player < ActiveRecord::Base
  require 'csv'
  has_many :team_memberships
  has_many :teams, through: :team_memberships
  def self.read_file
    CSV.foreach('lib/assets/players.csv', headers: true)  do |row|
      Player.create!(row.to_hash)
    end
  end
end

