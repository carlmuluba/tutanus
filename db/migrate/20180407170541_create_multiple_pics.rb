class CreateMultiplePics < ActiveRecord::Migration[5.1]
  def change
    create_table :multiple_pics do |t|
      t.integer :project_id
      t.integer :activity_id
      t.integer :productor_id
      t.string :image

      t.timestamps
    end
    add_index :multiple_pics, :project_id
    add_index :multiple_pics, :activity_id
    add_index :multiple_pics, :productor_id
  end
end
