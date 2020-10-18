Rails.application.routes.draw do
  resources :users, only: [:index, :create]

  root :to => "home#index"

  get 'register', to: "users#new"
  get 'home', to: 'home#index'
  get 'navbar/index'

  resources :home
end
