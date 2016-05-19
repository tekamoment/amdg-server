class AddIndexToItemModelDescription < ActiveRecord::Migration
  def change
    add_index :item_models, :description, unique: true
  end
end
