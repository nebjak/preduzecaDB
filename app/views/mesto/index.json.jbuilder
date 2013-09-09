json.array!(@mesto) do |mesto|
  json.extract! mesto, :_id, :mesto, :izbor
  json.url mesto_url(mesto, format: :json)
end
