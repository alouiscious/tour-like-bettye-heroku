class AddVenueColumns < ActiveRecord::Migration
  def change 
    add_column :venues, :description, :string 
    add_column :venues, :website, :string 
    add_column :venues, :address, :string 
    add_column :venues, :city, :string
    add_column :venues, :state, :string
    add_column :venues, :postal_code, :string
    add_column :venues, :longitude, :string
    add_column :venues, :latitude, :string
     end
end