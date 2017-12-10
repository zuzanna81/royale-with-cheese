Rails.application.routes.draw do

  get 'webshop/show'

  devise_for :users
  root controller: :landing, action: :index
  post '/search', to: 'landing#search'

  resources :shopping_carts, only: :create
end
