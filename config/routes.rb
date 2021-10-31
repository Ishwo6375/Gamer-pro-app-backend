Rails.application.routes.draw do
 
   post "/login", to: "auth#login"

  #signup route
  post "/signup" => "auth#signup"
  resources :favoritelists
  resources :reviews
  resources :games
  resources :genres
  resources :users

end
