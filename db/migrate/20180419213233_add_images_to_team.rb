class AddImagesToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :cover, :string
    add_column :collections, :cover, :string
  end
end
