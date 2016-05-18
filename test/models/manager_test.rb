require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  
  def setup
    @user = Manager.new(name: "Example User", email: "example.user@example.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
