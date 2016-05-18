require 'test_helper'

class ItemTypeTest < ActiveSupport::TestCase
  def setup
    @itemtype = ItemType.new(itemtype: "Camera")
  end
  
  test "should be valid" do
    assert @itemtype.valid?
  end
  
  test "itemtype should be present" do
    @itemtype.itemtype = "     "
    assert_not @itemtype.valid?
  end
  
  test "itemtype name shouldn't be too long" do
    @itemtype.itemtype = "a" * 51
    assert_not @itemtype.valid?
  end
  
  # test "the truth" do
  #   assert true
  # end
end
