class RecentTransaction
  include Mongoid::Document

  field :_id, type: BSON::ObjectId
  field :amount, type: BigDecimal
  field :memo, type: String

  embedded_in :account
end
