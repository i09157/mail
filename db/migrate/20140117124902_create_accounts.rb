class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :kanjiname
      t.string :kananame
      t.string :mail_addr
      t.integer :hierarchy_id
      t.foreign_key :users, dependent: :delete
      t.foreign_key :hierarchies, dependent: :delete
      t.timestamps
    end
  end
end
