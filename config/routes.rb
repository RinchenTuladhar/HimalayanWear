Rails.application.routes.draw do
  root :to => "home#index"

  get 'home', to: 'home#index'
  get 'navbar/index'

  resources :home
end
