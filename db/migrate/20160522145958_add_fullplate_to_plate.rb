class AddFullplateToPlate < ActiveRecord::Migration
  def change
    add_column :plates, :fullplate, :string
  end
end
