require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Example User", password: "Example Pass")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
