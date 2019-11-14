class Tours < ActiveRecord::Migration[5.2]
  def change 
    create_table :tours do |t|
      t.integer :user_id
      t.integer :venue_id
      t.boolean  :status
      
      t.timestamps null: false
    end
  end
end