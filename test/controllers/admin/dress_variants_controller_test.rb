require "test_helper"

class Admin::DressVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dress_variant = admin_dress_variants(:one)
  end

  test "should get index" do
    get admin_dress_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dress_variant_url
    assert_response :success
  end

  test "should create admin_dress_variant" do
    assert_difference("Admin::DressVariant.count") do
      post admin_dress_variants_url, params: { admin_dress_variant: { color: @admin_dress_variant.color, condition: @admin_dress_variant.condition, daily_rate: @admin_dress_variant.daily_rate, dress_id: @admin_dress_variant.dress_id, size_id: @admin_dress_variant.size_id, sku: @admin_dress_variant.sku, status: @admin_dress_variant.status } }
    end

    assert_redirected_to admin_dress_variant_url(Admin::DressVariant.last)
  end

  test "should show admin_dress_variant" do
    get admin_dress_variant_url(@admin_dress_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dress_variant_url(@admin_dress_variant)
    assert_response :success
  end

  test "should update admin_dress_variant" do
    patch admin_dress_variant_url(@admin_dress_variant), params: { admin_dress_variant: { color: @admin_dress_variant.color, condition: @admin_dress_variant.condition, daily_rate: @admin_dress_variant.daily_rate, dress_id: @admin_dress_variant.dress_id, size_id: @admin_dress_variant.size_id, sku: @admin_dress_variant.sku, status: @admin_dress_variant.status } }
    assert_redirected_to admin_dress_variant_url(@admin_dress_variant)
  end

  test "should destroy admin_dress_variant" do
    assert_difference("Admin::DressVariant.count", -1) do
      delete admin_dress_variant_url(@admin_dress_variant)
    end

    assert_redirected_to admin_dress_variants_url
  end
end
