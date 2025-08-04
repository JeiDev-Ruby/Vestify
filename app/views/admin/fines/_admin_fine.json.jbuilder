json.extract! admin_fine, :id, :rental_id, :amount, :reason, :paid, :created_at, :updated_at
json.url admin_fine_url(admin_fine, format: :json)
