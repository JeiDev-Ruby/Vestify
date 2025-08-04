require "test_helper"

class Admin::RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_rental = admin_rentals(:one)
  end

  test "should get index" do
    get admin_rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_rental_url
    assert_response :success
  end

  test "should create admin_rental" do
    assert_difference("Admin::Rental.count") do
      post admin_rentals_url, params: { admin_rental: { customer_id: @admin_rental.customer_id, deposit_amount: @admin_rental.deposit_amount, deposit_returned: @admin_rental.deposit_returned, dress_variant_id: @admin_rental.dress_variant_id, end_date: @admin_rental.end_date, return_date: @admin_rental.return_date, start_date: @admin_rental.start_date, status: @admin_rental.status, total_cost: @admin_rental.total_cost } }
    end

    assert_redirected_to admin_rental_url(Admin::Rental.last)
  end

  test "should show admin_rental" do
    get admin_rental_url(@admin_rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_rental_url(@admin_rental)
    assert_response :success
  end

  test "should update admin_rental" do
    patch admin_rental_url(@admin_rental), params: { admin_rental: { customer_id: @admin_rental.customer_id, deposit_amount: @admin_rental.deposit_amount, deposit_returned: @admin_rental.deposit_returned, dress_variant_id: @admin_rental.dress_variant_id, end_date: @admin_rental.end_date, return_date: @admin_rental.return_date, start_date: @admin_rental.start_date, status: @admin_rental.status, total_cost: @admin_rental.total_cost } }
    assert_redirected_to admin_rental_url(@admin_rental)
  end

  test "should destroy admin_rental" do
    assert_difference("Admin::Rental.count", -1) do
      delete admin_rental_url(@admin_rental)
    end

    assert_redirected_to admin_rentals_url
  end
end
