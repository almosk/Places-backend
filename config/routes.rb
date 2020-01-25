Rails.application.routes.draw do
  resources :places
  resources :posts
  resources :collections
  resources :users
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
