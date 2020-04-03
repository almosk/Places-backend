Rails.application.routes.draw do
  resources :collection_posts
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

  namespace :v1 do
    resources :posts
    resources :collections
  end
end
