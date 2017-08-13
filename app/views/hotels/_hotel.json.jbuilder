json.extract! hotel, :id, :nombre, :photo, :descripcion, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
