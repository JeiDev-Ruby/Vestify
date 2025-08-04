json.extract! admin_document, :id, :rental_id, :document_type, :file_url, :created_at, :updated_at
json.url admin_document_url(admin_document, format: :json)
