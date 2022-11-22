json.extract! account, :id, :name, :code, :description, :starting_balance, :currency, :created_at, :updated_at
json.url account_url(account, format: :json)
