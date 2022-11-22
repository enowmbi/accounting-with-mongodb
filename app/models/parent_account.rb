class ParentAccount
  include Mongoid::Document
  field :name, type: String

  embedded_in :account
end
