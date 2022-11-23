class Transaction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date
  field :memo, type: String
  field :ref, type: String
  field :balanced, type: Mongoid::Boolean
  field :total_debits, type: BigDecimal, default: 0.00
  field :total_credits, type: BigDecimal, default: 0.00

  embeds_many :transaction_entries
end
