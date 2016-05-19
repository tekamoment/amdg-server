class CreateSaleItemlists < ActiveRecord::Migration
  def change
    create_table :sale_itemlists do |t|
      t.integer :quantity
      t.references :item_model, index: true, foreign_key: true
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
