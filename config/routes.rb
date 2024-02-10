Rails.application.routes.draw do
  get 'sessions/create'
scope '/' do
  post 'login', to:'sessions#create'
end
resources :events
resources :posts
resources :users do
get 'posts' , to: "users#posts_index"
end

end