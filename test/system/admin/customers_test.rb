require "application_system_test_case"

class Admin::CustomersTest < ApplicationSystemTestCase
  setup do
    @admin_customer = admin_customers(:one)
  end

  test "visiting the index" do
    visit admin_customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit admin_customers_url
    click_on "New customer"

    fill_in "Address", with: @admin_customer.address
    fill_in "Email", with: @admin_customer.email
    fill_in "Name", with: @admin_customer.name
    fill_in "Phone number", with: @admin_customer.phone_number
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit admin_customer_url(@admin_customer)
    click_on "Edit this customer", match: :first

    fill_in "Address", with: @admin_customer.address
    fill_in "Email", with: @admin_customer.email
    fill_in "Name", with: @admin_customer.name
    fill_in "Phone number", with: @admin_customer.phone_number
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit admin_customer_url(@admin_customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
