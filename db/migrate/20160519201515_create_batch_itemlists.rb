class CreateBatchItemlists < ActiveRecord::Migration
  def change
    create_table :batch_itemlists do |t|
      t.integer :item_id
      t.integer :itemlist_id
      t.integer :quantity
      t.integer :quantity_issued

      t.timestamps null: false
    end
  end
end
