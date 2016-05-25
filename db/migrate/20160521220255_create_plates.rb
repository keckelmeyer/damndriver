class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.integer :user_id
      t.string :state
      t.string :plate


      t.timestamps null: false
    end
  end
end
