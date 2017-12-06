Rails.application.routes.draw do

  root controller: :landing, action: :index
  post '/search', to: 'landing#search'
end
