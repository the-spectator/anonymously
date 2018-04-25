Rails.application.routes.draw do
	resources :messages
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :messages do
      member do
        get :unlock
      end
    end

    resources :messages do
      member do
        get :like
      end
    end

end
