class AddColumn < ActiveRecord::Migration[5.2]
  def change 
    add_column :users, :username, :string 
    add_column :users, :bandname, :string 
    add_column :users, :fullname, :string
    add_column :users, :nickname, :string
    add_column :users, :zipcode, :string
     end
end