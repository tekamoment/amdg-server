class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.datetime :date_sold
      t.references :agent, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
