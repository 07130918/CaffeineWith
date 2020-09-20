Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "logs#index"
  resources :caffes, only: [:index] do
    resources :logs, only: [:new, :create, :destroy] 
      collection do
      get 'all' => 'logs#all'
      end
    end  
  resources :user, only: [:show, :edit, :update]  
end
