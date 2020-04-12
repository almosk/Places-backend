Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :collection_posts
  resources :places
  resources :collections
  resources :users
  resources :cities
  resources :posts do
    member do
      get :save_to_collection
      put :add_collection
      put :delete_from_collection
    end
  end

  namespace :v1 do
    resources :posts
    resources :collections
  end
end
