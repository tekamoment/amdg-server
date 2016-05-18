require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  def setup
    @supplier = Supplier(supplier_name: "ACME Inc.")
  end
  
  test "should be valid" do
    assert @supplier.valid?
  end
end
