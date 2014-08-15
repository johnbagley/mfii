class CreateTeamMembershipsTable < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.integer :team_id, null: false
      t.integer :player_id, null: false
    end
  end
end
