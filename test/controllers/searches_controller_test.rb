require 'test_helper'

class SearchesControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_search_url
    assert_response :success
  end

end