require 'test_helper'

class ItemTypeTest < ActiveSupport::TestCase
  def setup
    @itemtype = ItemType.new(itemtype: "Camera")
  end
  
  # test "the truth" do
  #   assert true
  # end
end
