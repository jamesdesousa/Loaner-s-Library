Rails.application.routes.draw do
  
  post '/friendships/:id', to: 'friendships#create', as: 'create_friendship'

  resources :loans
  resources :wishlist_items
  resources :items

  get '/login', to: 'users#login', as: 'login'
  post '/handle_login', to: 'users#handle_login'
  get '/users/homepage', to: 'users#homepage', as: 'user_homepage'
  get '/users/settings', to: 'users#settings', as: 'settings'
  delete '/login', to: "users#destroy"

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
