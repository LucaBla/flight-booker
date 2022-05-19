json.extract! flight, :id, :date, :duration, :depature_airport_id, :arrival_airport_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
