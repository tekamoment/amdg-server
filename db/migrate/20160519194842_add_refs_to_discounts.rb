class AddRefsToDiscounts < ActiveRecord::Migration
  def change
    add_reference :discounts, :client, index: true, foreign_key: true
    add_reference :discounts, :item_type, index: true, foreign_key: true
  end
end
