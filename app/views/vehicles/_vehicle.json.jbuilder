json.extract! vehicle, :id, :plate, :color, :model, :year, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
