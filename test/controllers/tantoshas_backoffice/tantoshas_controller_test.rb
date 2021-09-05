require 'test_helper'

class TantoshasBackoffice::TantoshasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tantoshas_backoffice_tantoshas_index_url
    assert_response :success
  end

end
