Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ui(/:action)', controller: 'ui'

  root to: 'pages#index'

  resources :businesses, only: [:index, :show, :new, :create]
  resources :reviews, only: [:new, :create, :destroy, :edit, :update]

  get '/sign_in', to: 'sessions#new'
  get '/sign_up', to: 'users#new'
  get '/sign_out', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:create]
end
