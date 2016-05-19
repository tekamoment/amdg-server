class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.datetime :date_transferred
      t.integer :batch_from_id
      t.integer :batch_to_id

      t.timestamps null: false
    end
  end
end
