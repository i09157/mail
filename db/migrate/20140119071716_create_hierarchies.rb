class CreateHierarchies < ActiveRecord::Migration
  def change
    create_table :hierarchies do |t|
      t.integer :p_id
      t.string :gname

      t.timestamps
    end
  end
end
