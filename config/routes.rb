Rails.application.routes.draw do
 
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/user_profile", to: "users#show"
  resources :favoritelists
  resources :reviews
  resources :games
  resources :genres
  resources :users

end
