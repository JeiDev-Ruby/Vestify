require "test_helper"

class Admin::DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_document = admin_documents(:one)
  end

  test "should get index" do
    get admin_documents_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_document_url
    assert_response :success
  end

  test "should create admin_document" do
    assert_difference("Admin::Document.count") do
      post admin_documents_url, params: { admin_document: { document_type: @admin_document.document_type, file_url: @admin_document.file_url, rental_id: @admin_document.rental_id } }
    end

    assert_redirected_to admin_document_url(Admin::Document.last)
  end

  test "should show admin_document" do
    get admin_document_url(@admin_document)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_document_url(@admin_document)
    assert_response :success
  end

  test "should update admin_document" do
    patch admin_document_url(@admin_document), params: { admin_document: { document_type: @admin_document.document_type, file_url: @admin_document.file_url, rental_id: @admin_document.rental_id } }
    assert_redirected_to admin_document_url(@admin_document)
  end

  test "should destroy admin_document" do
    assert_difference("Admin::Document.count", -1) do
      delete admin_document_url(@admin_document)
    end

    assert_redirected_to admin_documents_url
  end
end
