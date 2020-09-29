Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/ar', to: 'pages#ar'
  get '/ar', to: 'sessions#show'
  resources :themes, only: [:index, :create]
  resources :furnitures, only: [:index, :show]
  get '/myprofile', to: 'users#myprofile'
  resources :user_themes, only: [:create]
  resources :cart_items, only: [:destroy]
  resources :carts, only: [:index, :update]
  resources :marketplace_ar_items, only: [:create]
end
