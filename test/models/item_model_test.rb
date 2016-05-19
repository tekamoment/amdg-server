require 'test_helper'

class ItemModelTest < ActiveSupport::TestCase
  def setup
    @model = ItemModel.new(description: "Canon EOS 7D", srp: 50000.00, quantity: 1, cost: 40000.00)
  end
  
  test "should be valid" do
    assert @model.valid?
  end
  
  test "description should be present" do
    @model.description = "    "
    assert_not @model.valid?
  end
  
  test "description should not be too long" do
    @model.description = "a" * 101
    assert_not @model.valid?
  end
  
  test "srp should be present" do 
    @model.srp = nil
    assert_not @model.valid?
  end
  
  test "srp should not be 0" do
    @model.srp = 0
    assert_not @model.valid?
  end
  
  test "srp should not be negative" do
    @model.srp = -1
    assert_not @model.valid?
  end
  
  test "cost should be present" do 
    @model.cost = nil
    assert_not @model.valid?
  end
  
  test "cost should not be 0" do
    @model.cost = 0
    assert_not @model.valid?
  end
  
  test "cost should not be negative" do
    @model.cost = -1
    assert_not @model.valid?
  end
  
  test "quantity should be present" do 
    @model.quantity = nil
    assert_not @model.valid?
  end
  
  test "quantity should not be negative" do
    @model.quantity = -1
    assert_not @model.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
