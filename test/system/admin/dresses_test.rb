require "application_system_test_case"

class Admin::DressesTest < ApplicationSystemTestCase
  setup do
    @admin_dress = admin_dresses(:one)
  end

  test "visiting the index" do
    visit admin_dresses_url
    assert_selector "h1", text: "Dresses"
  end

  test "should create dress" do
    visit admin_dresses_url
    click_on "New dress"

    fill_in "Category", with: @admin_dress.category_id
    fill_in "Description", with: @admin_dress.description
    fill_in "Image url", with: @admin_dress.image_url
    fill_in "Name", with: @admin_dress.name
    click_on "Create Dress"

    assert_text "Dress was successfully created"
    click_on "Back"
  end

  test "should update Dress" do
    visit admin_dress_url(@admin_dress)
    click_on "Edit this dress", match: :first

    fill_in "Category", with: @admin_dress.category_id
    fill_in "Description", with: @admin_dress.description
    fill_in "Image url", with: @admin_dress.image_url
    fill_in "Name", with: @admin_dress.name
    click_on "Update Dress"

    assert_text "Dress was successfully updated"
    click_on "Back"
  end

  test "should destroy Dress" do
    visit admin_dress_url(@admin_dress)
    click_on "Destroy this dress", match: :first

    assert_text "Dress was successfully destroyed"
  end
end
