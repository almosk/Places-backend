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
    get 'posts/profile_posts'
    get 'posts/explore_posts'
    resources :posts

    get 'collections/profile_collections'
    get 'collections/explore_collections'
    resources :collections

    resources :users
  end
end
