require "test_helper"

class Auth::RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_register_index_url
    assert_response :success
  end
end
