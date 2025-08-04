require "test_helper"

class Admin::DressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dress = admin_dresses(:one)
  end

  test "should get index" do
    get admin_dresses_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dress_url
    assert_response :success
  end

  test "should create admin_dress" do
    assert_difference("Admin::Dress.count") do
      post admin_dresses_url, params: { admin_dress: { category_id: @admin_dress.category_id, description: @admin_dress.description, image_url: @admin_dress.image_url, name: @admin_dress.name } }
    end

    assert_redirected_to admin_dress_url(Admin::Dress.last)
  end

  test "should show admin_dress" do
    get admin_dress_url(@admin_dress)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dress_url(@admin_dress)
    assert_response :success
  end

  test "should update admin_dress" do
    patch admin_dress_url(@admin_dress), params: { admin_dress: { category_id: @admin_dress.category_id, description: @admin_dress.description, image_url: @admin_dress.image_url, name: @admin_dress.name } }
    assert_redirected_to admin_dress_url(@admin_dress)
  end

  test "should destroy admin_dress" do
    assert_difference("Admin::Dress.count", -1) do
      delete admin_dress_url(@admin_dress)
    end

    assert_redirected_to admin_dresses_url
  end
end
