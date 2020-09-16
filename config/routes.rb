Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "logs#index"
  resources :caffes, only: [:index] do
    resources :logs, only: [:show, :new, :create, :destroy] 
      collection do
        get :all
      end
  end  
end
