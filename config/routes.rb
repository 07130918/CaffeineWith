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
  resources :users, only: [:show, :edit, :update]
  resources :maps, only: [:index]
  # ↓簡易ログイン用
   devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
