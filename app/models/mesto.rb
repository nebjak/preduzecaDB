class Mesto
  include Mongoid::Document
  field :_id, type: Integer
  field :mesto, type: String
  field :izbor, type: Integer
end
