json.extract! admin_rental, :id, :customer_id, :dress_variant_id, :start_date, :end_date, :return_date, :deposit_amount, :deposit_returned, :total_cost, :status, :created_at, :updated_at
json.url admin_rental_url(admin_rental, format: :json)
