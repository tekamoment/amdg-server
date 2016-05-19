class AddRefsToDeliveries < ActiveRecord::Migration
  def change
    add_reference :deliveries, :supplier, index: true, foreign_key: true
    add_reference :deliveries, :warehouse_staffer, index: true, foreign_key: true
  end
end
