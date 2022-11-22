class Budget
  include Mongoid::Document
  include Mongoid::Timestamps

  field :start_of_financial_year, type: Date
  field :end_of_financial_year, type: Date
  field :amount, type: BigDecimal
  field :currency, type: String

  belongs_to :account
end
