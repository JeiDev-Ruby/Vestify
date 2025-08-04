require "application_system_test_case"

class Admin::TransactionsTest < ApplicationSystemTestCase
  setup do
    @admin_transaction = admin_transactions(:one)
  end

  test "visiting the index" do
    visit admin_transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "should create transaction" do
    visit admin_transactions_url
    click_on "New transaction"

    fill_in "Amount", with: @admin_transaction.amount
    fill_in "Rental", with: @admin_transaction.rental_id
    fill_in "Status", with: @admin_transaction.status
    fill_in "Transaction type", with: @admin_transaction.transaction_type
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "should update Transaction" do
    visit admin_transaction_url(@admin_transaction)
    click_on "Edit this transaction", match: :first

    fill_in "Amount", with: @admin_transaction.amount
    fill_in "Rental", with: @admin_transaction.rental_id
    fill_in "Status", with: @admin_transaction.status
    fill_in "Transaction type", with: @admin_transaction.transaction_type
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Transaction" do
    visit admin_transaction_url(@admin_transaction)
    click_on "Destroy this transaction", match: :first

    assert_text "Transaction was successfully destroyed"
  end
end
