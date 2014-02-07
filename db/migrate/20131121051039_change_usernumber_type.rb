class ChangeUsernumberType < ActiveRecord::Migration
  def change
  	change_column :users, :usernumber, :string
  end
end
