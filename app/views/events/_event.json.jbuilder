json.extract! event, :id, :title, :start_date, :review_date, :end_date, :tags, :completed, :created_at, :updated_at
json.url event_url(event, format: :json)
