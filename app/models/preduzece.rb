class Preduzece
  include Mongoid::Document
  field :_id, type: Integer
  field :delatnost_id, type: Integer
  field :mesto_id, type: Integer
  field :status_id, type: Integer
  field :id, type: Integer
  field :naziv, type: String
  field :post_broj, type: String
  field :adresa, type: String
  field :sajt, type: String
  field :napomena, type: String

  belongs_to :delatnost
  belongs_to :mesto

  has_many :preduzece_telefon
end
