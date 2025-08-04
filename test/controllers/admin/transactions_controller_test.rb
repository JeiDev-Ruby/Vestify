require "test_helper"

class Admin::TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_transaction = admin_transactions(:one)
  end

  test "should get index" do
    get admin_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_transaction_url
    assert_response :success
  end

  test "should create admin_transaction" do
    assert_difference("Admin::Transaction.count") do
      post admin_transactions_url, params: { admin_transaction: { amount: @admin_transaction.amount, rental_id: @admin_transaction.rental_id, status: @admin_transaction.status, transaction_type: @admin_transaction.transaction_type } }
    end

    assert_redirected_to admin_transaction_url(Admin::Transaction.last)
  end

  test "should show admin_transaction" do
    get admin_transaction_url(@admin_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_transaction_url(@admin_transaction)
    assert_response :success
  end

  test "should update admin_transaction" do
    patch admin_transaction_url(@admin_transaction), params: { admin_transaction: { amount: @admin_transaction.amount, rental_id: @admin_transaction.rental_id, status: @admin_transaction.status, transaction_type: @admin_transaction.transaction_type } }
    assert_redirected_to admin_transaction_url(@admin_transaction)
  end

  test "should destroy admin_transaction" do
    assert_difference("Admin::Transaction.count", -1) do
      delete admin_transaction_url(@admin_transaction)
    end

    assert_redirected_to admin_transactions_url
  end
end
