class CreateTransferItemlists < ActiveRecord::Migration
  def change
    create_table :transfer_itemlists do |t|
      t.integer :item_id
      t.integer :itemlist_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
