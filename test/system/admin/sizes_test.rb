require "application_system_test_case"

class Admin::SizesTest < ApplicationSystemTestCase
  setup do
    @admin_size = admin_sizes(:one)
  end

  test "visiting the index" do
    visit admin_sizes_url
    assert_selector "h1", text: "Sizes"
  end

  test "should create size" do
    visit admin_sizes_url
    click_on "New size"

    fill_in "Name", with: @admin_size.name
    click_on "Create Size"

    assert_text "Size was successfully created"
    click_on "Back"
  end

  test "should update Size" do
    visit admin_size_url(@admin_size)
    click_on "Edit this size", match: :first

    fill_in "Name", with: @admin_size.name
    click_on "Update Size"

    assert_text "Size was successfully updated"
    click_on "Back"
  end

  test "should destroy Size" do
    visit admin_size_url(@admin_size)
    click_on "Destroy this size", match: :first

    assert_text "Size was successfully destroyed"
  end
end
