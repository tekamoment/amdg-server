require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  def setup
    @supplier = Supplier.new(supplier_name: "ACME Inc.")
  end
  
  test "should be valid" do
    assert @supplier.valid?
  end
  
  test "supplier name should be present" do
    @supplier.supplier_name = "      "
    assert_not @supplier.valid?
  end
  
  test "supplier name shouldn't be too long" do
    @supplier.supplier_name = "a" * 101
    assert_not @supplier.valid?
  end
  
end
