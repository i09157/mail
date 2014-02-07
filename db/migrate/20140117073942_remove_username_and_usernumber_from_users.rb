class RemoveUsernameAndUsernumberFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :username, :string
    remove_column :users, :usernumber, :string
  end
end
