class RenameEmailAddressFromUsersTableToEmail < ActiveRecord::Migration
  def up
    remove_column :users, :email_address
     add_column :users, :email, :string, :unique => true
 
  end

  def down  
     add_column :users, :email_address, :string, :unique => true
     remove_column :users, :email   
  end
end
