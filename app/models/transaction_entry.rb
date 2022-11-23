class TransactionEntry
  include Mongoid::Document

  field :account_id, type: BSON::ObjectId
  field :account_name, type: String
  field :amount, type: BigDecimal
  field :entry_type, type: String
  field :memo, type: String

  embedded_in :transaction
end
