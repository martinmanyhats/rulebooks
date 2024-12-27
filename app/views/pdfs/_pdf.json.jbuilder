json.extract! pdf, :id, :name, :owner_id, :version, :description, :page_count, :first_page_numberuploaded_filename, :uploaded_at, :uploaded_by_id, :created_at, :updated_at
json.url pdf_url(pdf, format: :json)
