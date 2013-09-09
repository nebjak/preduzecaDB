json.array!(@preduzece_telefon) do |preduzece_telefon|
  json.extract! preduzece_telefon, :_id, :preduzece_id, :tip_telefona_id, :telefon
  json.url preduzece_telefon_url(preduzece_telefon, format: :json)
end
