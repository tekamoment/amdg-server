class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.datetime :date_delivered

      t.timestamps null: false
    end
  end
end
