Rails.application.routes.draw do
  get 'admin/index'
  resources :sub_categories
  resources :category_allocations
  resources :categories
  resources :products
  resources :admin

  get '/w/:id', to: "product_list#show"

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
