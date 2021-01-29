Rails.application.routes.draw do
 root 'application#home'

 get '/login', to: 'sessions#new'
 get '/login', to: 'sessions#create'
 get '/logout', to: 'sessions#destroy'

 get '/secrets', to: 'secrets#show', as: 'secret'
 
end
