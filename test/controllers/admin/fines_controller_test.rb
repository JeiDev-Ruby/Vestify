require "test_helper"

class Admin::FinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_fine = admin_fines(:one)
  end

  test "should get index" do
    get admin_fines_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_fine_url
    assert_response :success
  end

  test "should create admin_fine" do
    assert_difference("Admin::Fine.count") do
      post admin_fines_url, params: { admin_fine: { amount: @admin_fine.amount, paid: @admin_fine.paid, reason: @admin_fine.reason, rental_id: @admin_fine.rental_id } }
    end

    assert_redirected_to admin_fine_url(Admin::Fine.last)
  end

  test "should show admin_fine" do
    get admin_fine_url(@admin_fine)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_fine_url(@admin_fine)
    assert_response :success
  end

  test "should update admin_fine" do
    patch admin_fine_url(@admin_fine), params: { admin_fine: { amount: @admin_fine.amount, paid: @admin_fine.paid, reason: @admin_fine.reason, rental_id: @admin_fine.rental_id } }
    assert_redirected_to admin_fine_url(@admin_fine)
  end

  test "should destroy admin_fine" do
    assert_difference("Admin::Fine.count", -1) do
      delete admin_fine_url(@admin_fine)
    end

    assert_redirected_to admin_fines_url
  end
end
