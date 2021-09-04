require 'test_helper'

class EmployeesBackoffice::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get employees_backoffice_pages_home_url
    assert_response :success
  end

end
