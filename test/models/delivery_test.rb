require 'test_helper'

class DeliveryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @delivery = Delivery.new(date_delivered: DateTime.current())
  end
  
  test "should be valid" do
    assert @delivery.valid?
  end 
  
  test "date_delivered should be present" do
    @delivery.date_delivered = nil
    assert_not @delivery.valid?
  end
end
