json.extract! event, :id, :date, :datetime, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
