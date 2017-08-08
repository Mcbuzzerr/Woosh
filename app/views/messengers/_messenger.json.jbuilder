json.extract! messenger, :id, :message, :created_at, :updated_at
json.url messenger_url(messenger, format: :json)
