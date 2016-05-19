class CreateDeliveryItemlists < ActiveRecord::Migration
  def change
    create_table :delivery_itemlists do |t|
      t.integer :quantity
      t.references :delivery, index: true, foreign_key: true
      t.references :item_model, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
