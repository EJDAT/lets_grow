require 'test_helper'

class GardenPlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get garden_plants_create_url
    assert_response :success
  end

end
