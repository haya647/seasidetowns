json.extract! topic, :id, :title, :body, :picture, :created_at, :updated_at
json.url topic_url(topic, format: :json)
