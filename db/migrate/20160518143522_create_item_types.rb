class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :itemtype

      t.timestamps null: false
    end
  end
end
