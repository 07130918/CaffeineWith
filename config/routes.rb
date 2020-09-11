Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "logs#index"
  resources :logs, only: [:index, :show, :new, :create, :destroy] do 
    collection do
      get :all
    end
  end  
end
