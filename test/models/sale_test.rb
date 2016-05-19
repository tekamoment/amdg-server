require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  def setup
    @agent = agents(:james)
    @client = clients(:galliard)
    @sale = Sale.new(date_sold: DateTime.current(), agent_id: @agent.id, client_id: @client.id)
  end
  
  test "should be valid" do
    assert @sale.valid?
  end
  
  test "agent should be present" do
    @sale.agent_id = nil
    assert_not @sale.valid?
  end
  
  test "client should be present" do
    @sale.client_id = nil
    assert_not @sale.valid?
  end
  
  # test "the truth" do
  #   assert true
  # end
end
