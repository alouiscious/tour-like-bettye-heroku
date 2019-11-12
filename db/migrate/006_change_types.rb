class ChangeTypes < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.phone :phone
      t.email :emai
    end
  end
end