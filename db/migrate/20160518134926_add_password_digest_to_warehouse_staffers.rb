class AddPasswordDigestToWarehouseStaffers < ActiveRecord::Migration
  def change
    add_column :warehouse_staffers, :password_digest, :string
  end
end
