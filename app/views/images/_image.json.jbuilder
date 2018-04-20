json.extract! image, :id, :user_id, :image_data, :description, :created_at, :updated_at
json.url image_url(image, format: :json)
