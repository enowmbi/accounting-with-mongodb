class Transaction
  include Mongoid::Document
  include Mongoid::Timestamps

  field :date, type: Date
  field :memo, type: String
  field :ref, type: String
  field :balanced, type: Mongoid::Boolean

  embeds_many :transaction_entries
end
