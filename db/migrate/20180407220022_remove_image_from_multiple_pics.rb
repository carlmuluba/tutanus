class RemoveImageFromMultiplePics < ActiveRecord::Migration[5.1]
  def change
    remove_column :multiple_pics, :image, :string
  end
end
