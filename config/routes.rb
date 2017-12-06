Rails.application.routes.draw do

  devise_for :users
  root controller: :landing, action: :index
end
