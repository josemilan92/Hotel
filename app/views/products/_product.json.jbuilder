json.extract! product, :id, :title, :description, :photo, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
