class CreateTeamCollectionProductorsTables < ActiveRecord::Migration[5.1]
  def change
    
    create_table :teams, force: true  do |t|
      t.string :tm_pic
      t.string :tm_name
      t.text :tm_about
      t.date :tm_joined_date
      t.belongs_to :project, index: true
      t.belongs_to :professional, index: true
      t.belongs_to :activity, index: true

      t.timestamps
    end

    create_table :productors, force: true do |t|
      t.json :prod_pics
      t.string :prod_name
      t.text :prod_description
      t.string :prod_url
      t.string :prod_address
      t.float :prod_lat
      t.float :prod_long
      t.belongs_to :project, index: true
      t.belongs_to :item, index: true

      t.timestamps
    end
    
    create_table :collections, force: true  do |t|
      t.string :coll_title
      t.string :coll_cover
      t.text :coll_about
      t.belongs_to :project, index: true
      t.belongs_to :item, index: true


      t.timestamps
    end


  end
end
