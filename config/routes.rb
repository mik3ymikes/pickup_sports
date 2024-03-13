Rails.application.routes.draw do
  get 'web/bootstrap'
scope '/' do
  post 'login', to:'sessions#create'
end
resources :events do
#localhost:3000/events/1/join
post 'join', to: 'events#join'
#localhost:3000/events/1/leave
delete 'leave', to: 'events#leave'

end 


scope :profiles do
  get ':username', to: "profiles#show"
end
resources :posts
resources :users do
get 'posts' , to: "users#posts_index"
end

resources :sports
end