class DropItemlists < ActiveRecord::Migration
  def change
    drop_table :batch_itemlists
    drop_table :delivery_itemlists
    drop_table :sale_itemlists
  end
end
