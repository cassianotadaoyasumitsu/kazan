require 'test_helper'

class Sites::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sites_pages_home_url
    assert_response :success
  end

end
