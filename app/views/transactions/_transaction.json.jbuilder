json.extract! transaction, :id, :date, :memo, :ref, :balanced, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
