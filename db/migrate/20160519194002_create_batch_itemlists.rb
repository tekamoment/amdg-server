class CreateBatchItemlists < ActiveRecord::Migration
  def change
    create_table :batch_itemlists do |t|
      t.integer :quantity
      t.integer :quantity_issued
      t.references :item_model, index: true, foreign_key: true
      t.references :inventory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
