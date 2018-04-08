class AddImagesToMultiplePics < ActiveRecord::Migration[5.1]
  def change
    add_column :multiple_pics, :images, :string, array: true, default: []
  end
end
