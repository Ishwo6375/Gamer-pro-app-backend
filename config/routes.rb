Rails.application.routes.draw do
  resources :favorite_lists
  resources :games
  resources :genres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
