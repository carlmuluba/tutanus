class AddImagesToProjectActivityItemPart < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :images, :string, array: true, default: []
    add_column :activities, :images, :string, array: true, default: []
    #add_column :itens, :images, :string, array: true, default: []
    #add_column :parts, :images, :string, array: true, default: []
    add_column :collections, :image, :string
    #add_column :professionals, :image, :string
    add_column :publications, :image, :string
    add_column :productors, :image, :string
    add_column :partners, :image, :string
    add_column :teams, :image, :string
  end
end
