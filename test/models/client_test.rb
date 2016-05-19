require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def setup
    @client = Client.new(client_name: "ADMU")
  end
  
  test "should be valid" do
    assert @client.valid?
  end
  
  test "client name should be present" do
    @client.client_name = "    "
    assert_not @client.valid?
  end
  
  test "first name shouldn't be too long" do
    @client.client_name = "a" * 51
    assert_not @client.valid?
  end
  
end
