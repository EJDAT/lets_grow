require 'test_helper'

class UsertasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usertasks_index_url
    assert_response :success
  end

end
