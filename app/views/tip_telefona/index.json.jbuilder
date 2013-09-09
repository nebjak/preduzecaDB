json.array!(@tip_telefona) do |tip_telefona|
  json.extract! tip_telefona, :_id, :tip_telefona
  json.url tip_telefona_url(tip_telefona, format: :json)
end
