Rails.application.routes.draw do
  get 'transaction_entries/create'
  get 'transaction_entries/update'
  get 'transaction_entries/destroy'
  root "accounts#index"

  resources :accounts
  resources :budgets
  resources :transactions do
    member do
      resources :transaction_entries
    end
  end
end
