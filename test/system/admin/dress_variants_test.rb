require "application_system_test_case"

class Admin::DressVariantsTest < ApplicationSystemTestCase
  setup do
    @admin_dress_variant = admin_dress_variants(:one)
  end

  test "visiting the index" do
    visit admin_dress_variants_url
    assert_selector "h1", text: "Dress variants"
  end

  test "should create dress variant" do
    visit admin_dress_variants_url
    click_on "New dress variant"

    fill_in "Color", with: @admin_dress_variant.color
    fill_in "Condition", with: @admin_dress_variant.condition
    fill_in "Daily rate", with: @admin_dress_variant.daily_rate
    fill_in "Dress", with: @admin_dress_variant.dress_id
    fill_in "Size", with: @admin_dress_variant.size_id
    fill_in "Sku", with: @admin_dress_variant.sku
    fill_in "Status", with: @admin_dress_variant.status
    click_on "Create Dress variant"

    assert_text "Dress variant was successfully created"
    click_on "Back"
  end

  test "should update Dress variant" do
    visit admin_dress_variant_url(@admin_dress_variant)
    click_on "Edit this dress variant", match: :first

    fill_in "Color", with: @admin_dress_variant.color
    fill_in "Condition", with: @admin_dress_variant.condition
    fill_in "Daily rate", with: @admin_dress_variant.daily_rate
    fill_in "Dress", with: @admin_dress_variant.dress_id
    fill_in "Size", with: @admin_dress_variant.size_id
    fill_in "Sku", with: @admin_dress_variant.sku
    fill_in "Status", with: @admin_dress_variant.status
    click_on "Update Dress variant"

    assert_text "Dress variant was successfully updated"
    click_on "Back"
  end

  test "should destroy Dress variant" do
    visit admin_dress_variant_url(@admin_dress_variant)
    click_on "Destroy this dress variant", match: :first

    assert_text "Dress variant was successfully destroyed"
  end
end
