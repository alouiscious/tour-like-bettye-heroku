class CreateVenues < ActiveRecord::Migration
  def change 
    create_table :venues do |t|
      t.string  :name
      t.string  :booking
      t.string  :box_office
      t.string  :email
      t.string  :password_digest
      t.string  :phone
      t.timestamps null: false
    end
  end
end