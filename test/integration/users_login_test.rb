require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { email: "abcd", password: "abcd" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get home_path
    assert flash.empty?
  end
end
