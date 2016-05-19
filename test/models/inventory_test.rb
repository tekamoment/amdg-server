require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  
  def setup
    @agent = agents(:james)
    @warehouse_staffer = warehouse_staffers(:michael)
    @inventory = Inventory.new(date_issued: DateTime.current(), agent_id: @agent.id, 
                              warehouse_staffer_id: @warehouse_staffer.id)
  end
  
  test "should be valid" do
    assert @inventory.valid?
  end
  
  test "agent should be present" do
    @inventory.agent_id = nil
    assert_not @inventory.valid?
  end
  
  test "warehouse staffer should be present" do
    @inventory.warehouse_staffer_id = nil
    assert_not @inventory.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
