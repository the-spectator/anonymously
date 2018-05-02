Rails.application.routes.draw do
  get 'dashboard/index'
  root "home#index"
  devise_for :users
  resources :messages
  resources :messages do
    member do
      get :unlock
    end
  end
  
  get 'users/index' 

  root "home#index" 
  devise_for :users, path: "sessions"
  resources :users
  
  resources :messages do
    member do
      get :like
    end
  end
  
end
