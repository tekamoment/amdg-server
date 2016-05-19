class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.datetime :date_issued
      t.references :agent, index: true, foreign_key: true
      t.references :warehouse_staffer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
