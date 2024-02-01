Rails.application.routes.draw do
get '/users', to: 'users#index'
get '/users/:id', to: 'users#show'

post '/users', to: 'users#create'


put '/users/:id', to: 'users#update' 
end
