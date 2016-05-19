class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.float :discount_rate

      t.timestamps null: false
    end
  end
end
