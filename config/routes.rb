Rails.application.routes.draw do

  devise_for :users
  get 'users/show'

  get 'users/create'

  get 'users/new'

  root controller: :landing, action: :index
end
