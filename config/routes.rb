Rails.application.routes.draw do
  resources :products
  root :to => "home#index"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :create, :edit, :destroy]

  get 'register', to: "users#new"
  get 'home', to: 'home#index'
  get 'navbar/index'

  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  resources :home
end
