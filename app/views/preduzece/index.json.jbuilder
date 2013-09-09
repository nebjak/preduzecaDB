json.array!(@preduzece) do |preduzece|
  json.extract! preduzece, :_id, :delatnost_id, :mesto_id, :status_id, :id, :naziv, :post_broj, :adresa, :sajt, :napomena
  json.url preduzece_url(preduzece, format: :json)
end
