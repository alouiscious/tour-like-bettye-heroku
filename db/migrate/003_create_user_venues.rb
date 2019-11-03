class CreateUserVenues < ActiveRecord::Migration[5.1]
  def change 
    create_table :user_venues do |t|
      t.integer :user_id
      t.integer :venues_id
      t.boolean  :status
      t.string :notes
      
      t.timestamps null: false
    end
  end
end