Rails.application.routes.draw do
  resources :places
  resources :posts do
    member do
      get :save_to_collection
      put :add_collection
      put :delete_from_collection
    end
  end
  resources :collections
  resources :users
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
