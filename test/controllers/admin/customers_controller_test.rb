require "test_helper"

class Admin::CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_customer = admin_customers(:one)
  end

  test "should get index" do
    get admin_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_customer_url
    assert_response :success
  end

  test "should create admin_customer" do
    assert_difference("Admin::Customer.count") do
      post admin_customers_url, params: { admin_customer: { address: @admin_customer.address, email: @admin_customer.email, name: @admin_customer.name, phone_number: @admin_customer.phone_number } }
    end

    assert_redirected_to admin_customer_url(Admin::Customer.last)
  end

  test "should show admin_customer" do
    get admin_customer_url(@admin_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_customer_url(@admin_customer)
    assert_response :success
  end

  test "should update admin_customer" do
    patch admin_customer_url(@admin_customer), params: { admin_customer: { address: @admin_customer.address, email: @admin_customer.email, name: @admin_customer.name, phone_number: @admin_customer.phone_number } }
    assert_redirected_to admin_customer_url(@admin_customer)
  end

  test "should destroy admin_customer" do
    assert_difference("Admin::Customer.count", -1) do
      delete admin_customer_url(@admin_customer)
    end

    assert_redirected_to admin_customers_url
  end
end
