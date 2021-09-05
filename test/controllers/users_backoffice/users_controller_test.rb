require 'test_helper'

class UsersBackoffice::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_backoffice_users_index_url
    assert_response :success
  end

end
