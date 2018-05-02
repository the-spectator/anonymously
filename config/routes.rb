Rails.application.routes.draw do
  get 'dashboard/index'
  
  devise_for :users, path: "sessions"

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root "home#index"

  resources :messages
  resources :messages do
    member do
      get :unlock
    end
  end

  get 'users/index' 
  
  resources :users
  
  resources :messages do
    member do
      get :like
    end
  end

  resources :wallet
  resources :wallet_histories
  
end
