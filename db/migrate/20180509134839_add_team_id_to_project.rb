class AddTeamIdToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :proj_team_id, :integer
    add_index :projects, :proj_team_id
  end
end
