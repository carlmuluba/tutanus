class CreateAllTables < ActiveRecord::Migration[5.1]
  def change
   create_table :projects, force: true do |t|
      t.string :proj_title
      t.json :proj_pics
      t.text :proj_about
      t.date :proj_startdate
      t.date :proj_enddate

      t.timestamps 
    end

    create_table :professionals, force: true  do |t|
      t.string :prof_pic
      t.string :prof_firstname
      t.string :prof_lastname
      t.string :prof_working_field
      t.text :prof_about
      t.string :prof_url
      t.string :prof_social_one
      t.string :prof_social_two
      t.string :prof_social_three
      t.string :prof_email

      t.timestamps
    end

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


    create_table :itens, force: true do |t|
      t.string :it_name
      t.json :it_pics
      t.text :it_description

      t.timestamps
    end

    create_table :parts, force: true do |t|
      t.json :part_pics
      t.string :part_code
      t.string :part_seller
      t.datetime :part_finished_on
      t.datetime :part_aquired_on
      t.belongs_to :item, index: true

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

    create_table :publications, force: true do |t|
      t.json :pub_cover
      t.string :pub_title
      t.json :pub_authors
      t.text :pub_description
      t.string :pub_keywords
      t.datetime :pub_date
      t.string :pub_editor
      t.string :pub_city
      t.string :pub_country

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


    #create_table :owners, force: true do |t|
     # t.string :ow_firstname
     # t.string :ow_lastname
     # t.string :ow_pic
     # t.string :own_address
     # t.float :ow_lat
     # t.float :ow_long
     # t.integer :ow_item_id

     # t.timestamps
    #end

    create_table :activities, force: true do |t|
      t.string :act_name
      t.json :act_pics
      t.text :act_about
      t.string :act_address
      t.float :act_lat
      t.float :act_long

      t.timestamps
    end

  end
end
