class RemovePicsFromTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :proj_pics, :json
    remove_column :activities, :act_pics, :json
    remove_column :collections, :coll_cover, :string
    remove_column :partners, :partner_pic, :json
    remove_column :productors, :prod_pics, :json
    remove_column :publications, :pub_cover, :string
    remove_column :teams, :tm_pic, :string
  end
end
