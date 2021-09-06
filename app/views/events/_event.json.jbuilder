json.extract! event, :id, :name, :description, :latitude, :longitude, :address, :start_at, :end_at, :private, :event_type, :url, :user, :created_at, :updated_at
json.url event_url(event, format: :json)
