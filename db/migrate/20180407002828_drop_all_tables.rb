class DropAllTables < ActiveRecord::Migration[5.1]
   def up
    drop_table :teams
    drop_table :activities
    drop_table :collections
    drop_table :itens
    drop_table :parts
    drop_table :professionals
    drop_table :publications
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
