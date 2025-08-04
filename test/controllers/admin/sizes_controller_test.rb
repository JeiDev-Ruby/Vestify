require "test_helper"

class Admin::SizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_size = admin_sizes(:one)
  end

  test "should get index" do
    get admin_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_size_url
    assert_response :success
  end

  test "should create admin_size" do
    assert_difference("Admin::Size.count") do
      post admin_sizes_url, params: { admin_size: { name: @admin_size.name } }
    end

    assert_redirected_to admin_size_url(Admin::Size.last)
  end

  test "should show admin_size" do
    get admin_size_url(@admin_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_size_url(@admin_size)
    assert_response :success
  end

  test "should update admin_size" do
    patch admin_size_url(@admin_size), params: { admin_size: { name: @admin_size.name } }
    assert_redirected_to admin_size_url(@admin_size)
  end

  test "should destroy admin_size" do
    assert_difference("Admin::Size.count", -1) do
      delete admin_size_url(@admin_size)
    end

    assert_redirected_to admin_sizes_url
  end
end
