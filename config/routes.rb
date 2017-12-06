Rails.application.routes.draw do

  root controller: :landing, action: :index
  get '/search', to: 'landing#search'
end
