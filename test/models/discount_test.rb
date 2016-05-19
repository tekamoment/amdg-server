require 'test_helper'

class DiscountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @model = Discount.new(discount_rate: 0.5)
  end
  
  test "should be valid" do
    assert @model.valid?
  end
  
   test "discount_rate should be present" do 
    @model.discount_rate = nil
    assert_not @model.valid?
  end
  
  test "discount_rate should not be 0" do
    @model.discount_rate = 0
    assert_not @model.valid?
  end
  
  test "discount_rate should not be negative" do
    @model.discount_rate = -1
    assert_not @model.valid?
  end
  
  test "discount_rate should not be greater than 1" do
    @model.discount_rate = 1
    assert_not @model.valid?
  end
end
