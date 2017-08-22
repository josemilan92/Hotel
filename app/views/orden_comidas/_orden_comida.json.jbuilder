json.extract! orden_comida, :id, :product, :total, :created_at, :updated_at
json.url orden_comida_url(orden_comida, format: :json)
