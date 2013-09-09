class Delatnost
  include Mongoid::Document
  field :_id, type: Integer
  field :delatnost, type: String
  field :izbor, type: Integer

  has_many :preduzece
end
