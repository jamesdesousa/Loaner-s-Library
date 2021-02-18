Rails.application.routes.draw do

  get '/friends', to: 'friendships#friends', as: 'friends'
  post '/friendships/:id', to: 'friendships#create', as: 'create_friendship'
  delete '/friendships/:id', to: 'friendships#delete', as: 'destroy_friendship'

  resources :loans
  resources :wishlist_items
  resources :items

  get '/login', to: 'users#login', as: 'login'
  post '/handle_login', to: 'users#handle_login'
  get '/users/homepage', to: 'users#homepage', as: 'user_homepage'
  get '/users/settings', to: 'users#settings', as: 'settings'
  delete '/logout', to: 'users#logout', as: 'logout'
  delete '/login', to: "users#destroy"

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
