class CreatePublicationPartnerActivity < ActiveRecord::Migration[5.1]
  def change
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

    create_table :activities, force: true do |t|
      t.string :act_name
      t.json :act_pics
      t.text :act_about
      t.string :act_address
      t.float :act_lat
      t.float :act_long

      t.timestamps
    end

    create_table :partners, force: true do |t|
      t.string :partner_name
      t.json :partner_pic
      t.text :partner_about
      t.string :partner_address
      t.float :partner_lat
      t.float :partner_long
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
