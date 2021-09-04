require 'test_helper'

class UsersBackoffice::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get users_backoffice_pages_home_url
    assert_response :success
  end

end
