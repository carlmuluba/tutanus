class AddCollectionsToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :tm_collection_id, :integer
    add_index :teams, :tm_collection_id
  end
end
