require 'test_helper'

class DeliveryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @warehouse_staffer = warehouse_staffers(:michael)
    @supplier = suppliers(:megacorp)
    @delivery = @warehouse_staffer.deliveries.build(date_delivered: DateTime.current(), supplier_id: @supplier.id)
  end
  
  test "should be valid" do
    assert @delivery.valid?
  end 
  
  test "date_delivered should be present" do
    @delivery.date_delivered = nil
    assert_not @delivery.valid?
  end
  
  test "warehouse_staffer id should be present" do
    @delivery.warehouse_staffer_id = nil
    assert_not @delivery.valid?
  end
  
  test "supplier id should be present" do
    @delivery.supplier_id = nil
    assert_not @delivery.valid?
  end
  
end
