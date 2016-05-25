class AddFullplateToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :fullplate, :string
  end
end
