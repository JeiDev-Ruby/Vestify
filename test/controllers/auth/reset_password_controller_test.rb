require "test_helper"

class Auth::ResetPasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_reset_password_index_url
    assert_response :success
  end
end
