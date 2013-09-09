class PreduzeceTelefon
  include Mongoid::Document
  field :_id, type: Integer
  field :preduzece_id, type: Integer
  field :tip_telefona_id, type: Integer
  field :telefon, type: String

  belongs_to :tip_telefona
  belongs_to :preduzece
end
