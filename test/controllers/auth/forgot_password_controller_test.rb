require "test_helper"

class Auth::ForgotPasswordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_forgot_password_index_url
    assert_response :success
  end
end
