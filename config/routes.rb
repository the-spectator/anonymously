Rails.application.routes.draw do
  get 'dashboard/index'
  root "home#index"
  
  devise_for :users do
    resources :messages
    resources :wallets do
    resources :wallet_histories
    end
  end
end
