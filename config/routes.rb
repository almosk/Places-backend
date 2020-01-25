Rails.application.routes.draw do
  resources :places
  resources :posts do
    member do
      put :add_collection
      get :select_collection
    end
  end
  resources :collections
  resources :users
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
