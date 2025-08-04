require "application_system_test_case"

class Admin::FinesTest < ApplicationSystemTestCase
  setup do
    @admin_fine = admin_fines(:one)
  end

  test "visiting the index" do
    visit admin_fines_url
    assert_selector "h1", text: "Fines"
  end

  test "should create fine" do
    visit admin_fines_url
    click_on "New fine"

    fill_in "Amount", with: @admin_fine.amount
    check "Paid" if @admin_fine.paid
    fill_in "Reason", with: @admin_fine.reason
    fill_in "Rental", with: @admin_fine.rental_id
    click_on "Create Fine"

    assert_text "Fine was successfully created"
    click_on "Back"
  end

  test "should update Fine" do
    visit admin_fine_url(@admin_fine)
    click_on "Edit this fine", match: :first

    fill_in "Amount", with: @admin_fine.amount
    check "Paid" if @admin_fine.paid
    fill_in "Reason", with: @admin_fine.reason
    fill_in "Rental", with: @admin_fine.rental_id
    click_on "Update Fine"

    assert_text "Fine was successfully updated"
    click_on "Back"
  end

  test "should destroy Fine" do
    visit admin_fine_url(@admin_fine)
    click_on "Destroy this fine", match: :first

    assert_text "Fine was successfully destroyed"
  end
end
