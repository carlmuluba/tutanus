class AddCoverToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :proj_cover, :string
  end
end
