json.extract! admin_transaction, :id, :rental_id, :amount, :transaction_type, :status, :created_at, :updated_at
json.url admin_transaction_url(admin_transaction, format: :json)
