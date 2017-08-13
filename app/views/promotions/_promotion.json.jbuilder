json.extract! promotion, :id, :name, :photo, :price, :description, :created_at, :updated_at
json.url promotion_url(promotion, format: :json)
