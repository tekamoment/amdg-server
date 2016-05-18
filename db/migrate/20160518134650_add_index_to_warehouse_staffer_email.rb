class AddIndexToWarehouseStafferEmail < ActiveRecord::Migration
  def change
    add_index :warehouse_staffers, :email, unique: true
  end
end
