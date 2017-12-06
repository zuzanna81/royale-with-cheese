Rails.application.routes.draw do

  get 'users/show'

  get 'users/create'

  get 'users/new'

  root controller: :landing, action: :index
  resources :users, only: [:show, :create, :new]
end
