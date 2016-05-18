require 'test_helper'

class AgentTest < ActiveSupport::TestCase
  def setup
    @user = Agent.new(first_name: "Example", last_name: "User", email: "example.user@example.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "first name shouldn't be too long" do
    @user.first_name = "a" * 51
    assert_not @user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
