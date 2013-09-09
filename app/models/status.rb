class Status
  include Mongoid::Document
  field :_id, type: Integer
  field :status, type: String
end
