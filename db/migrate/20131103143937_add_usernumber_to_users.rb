class AddUsernumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usernumber, :integer
  end
end
