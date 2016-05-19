class CreateItemModels < ActiveRecord::Migration
  def change
    create_table :item_models do |t|
      t.string :description
      t.float :srp
      t.int :quantity
      t.float :cost

      t.timestamps null: false
    end
  end
end
