require "application_system_test_case"

class Admin::RentalsTest < ApplicationSystemTestCase
  setup do
    @admin_rental = admin_rentals(:one)
  end

  test "visiting the index" do
    visit admin_rentals_url
    assert_selector "h1", text: "Rentals"
  end

  test "should create rental" do
    visit admin_rentals_url
    click_on "New rental"

    fill_in "Customer", with: @admin_rental.customer_id
    fill_in "Deposit amount", with: @admin_rental.deposit_amount
    check "Deposit returned" if @admin_rental.deposit_returned
    fill_in "Dress variant", with: @admin_rental.dress_variant_id
    fill_in "End date", with: @admin_rental.end_date
    fill_in "Return date", with: @admin_rental.return_date
    fill_in "Start date", with: @admin_rental.start_date
    fill_in "Status", with: @admin_rental.status
    fill_in "Total cost", with: @admin_rental.total_cost
    click_on "Create Rental"

    assert_text "Rental was successfully created"
    click_on "Back"
  end

  test "should update Rental" do
    visit admin_rental_url(@admin_rental)
    click_on "Edit this rental", match: :first

    fill_in "Customer", with: @admin_rental.customer_id
    fill_in "Deposit amount", with: @admin_rental.deposit_amount
    check "Deposit returned" if @admin_rental.deposit_returned
    fill_in "Dress variant", with: @admin_rental.dress_variant_id
    fill_in "End date", with: @admin_rental.end_date
    fill_in "Return date", with: @admin_rental.return_date
    fill_in "Start date", with: @admin_rental.start_date
    fill_in "Status", with: @admin_rental.status
    fill_in "Total cost", with: @admin_rental.total_cost
    click_on "Update Rental"

    assert_text "Rental was successfully updated"
    click_on "Back"
  end

  test "should destroy Rental" do
    visit admin_rental_url(@admin_rental)
    click_on "Destroy this rental", match: :first

    assert_text "Rental was successfully destroyed"
  end
end
