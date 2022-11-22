json.extract! budget, :id, :account_id, :amount, :currency, :created_at, :updated_at
json.url budget_url(budget, format: :json)
