class Account
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :code, type: String
  field :description, type: String
  field :starting_balance, type: BigDecimal
  field :currency, type: String
  field :account_id, type: BSON::ObjectId

  index({ account_id: 1 }, { sparse: true })
end
