json.array!(@status) do |status|
  json.extract! status, :_id, :status
  json.url status_url(status, format: :json)
end
