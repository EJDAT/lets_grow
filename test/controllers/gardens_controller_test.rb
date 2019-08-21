require 'test_helper'

class GardensControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gardens_create_url
    assert_response :success
  end

end
