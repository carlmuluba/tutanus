class CreateProjectsTable < ActiveRecord::Migration[5.1]
  def change
   create_table :projects, force: true do |t|
      t.string :proj_title
      t.json :proj_pics
      t.text :proj_about
      t.date :proj_startdate
      t.date :proj_enddate

      t.timestamps     end
  end
end
