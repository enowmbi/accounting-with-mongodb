class RecentBudget
  include Mongoid::Document

  field :financial_year, type: Integer
  field :amount, type: BigDecimal

  embedded_in :account
end
