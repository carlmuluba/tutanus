class AddColumnToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :proj_kind, :string
  end
end
