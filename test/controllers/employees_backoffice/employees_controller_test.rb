require 'test_helper'

class EmployeesBackoffice::EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employees_backoffice_employees_index_url
    assert_response :success
  end

end
