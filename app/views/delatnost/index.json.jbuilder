json.array!(@delatnost) do |delatnost|
  json.extract! delatnost, :delatnost, :izbor
  json.url delatnost_url(delatnost, format: :json)
end
