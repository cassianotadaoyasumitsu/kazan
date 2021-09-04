require 'test_helper'

class TantoshasBackoffice::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get tantoshas_backoffice_pages_home_url
    assert_response :success
  end

end
