class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :plate
      t.string :state
      t.string :category
      t.integer :rating

      t.timestamps null: false
    end
  end
end
