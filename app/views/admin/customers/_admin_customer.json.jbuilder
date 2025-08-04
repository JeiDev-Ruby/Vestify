json.extract! admin_customer, :id, :name, :email, :phone_number, :address, :created_at, :updated_at
json.url admin_customer_url(admin_customer, format: :json)
