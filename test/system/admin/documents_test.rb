require "application_system_test_case"

class Admin::DocumentsTest < ApplicationSystemTestCase
  setup do
    @admin_document = admin_documents(:one)
  end

  test "visiting the index" do
    visit admin_documents_url
    assert_selector "h1", text: "Documents"
  end

  test "should create document" do
    visit admin_documents_url
    click_on "New document"

    fill_in "Document type", with: @admin_document.document_type
    fill_in "File url", with: @admin_document.file_url
    fill_in "Rental", with: @admin_document.rental_id
    click_on "Create Document"

    assert_text "Document was successfully created"
    click_on "Back"
  end

  test "should update Document" do
    visit admin_document_url(@admin_document)
    click_on "Edit this document", match: :first

    fill_in "Document type", with: @admin_document.document_type
    fill_in "File url", with: @admin_document.file_url
    fill_in "Rental", with: @admin_document.rental_id
    click_on "Update Document"

    assert_text "Document was successfully updated"
    click_on "Back"
  end

  test "should destroy Document" do
    visit admin_document_url(@admin_document)
    click_on "Destroy this document", match: :first

    assert_text "Document was successfully destroyed"
  end
end
