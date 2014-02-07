class AddUidToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :uid, :string
  end
end
