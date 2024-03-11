Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "photos#index"

  get ":username/liked" => "users#liked", as: :liked
  get ":username/feed" => "users#feed", as: :feed
  get ":username/followers" => "users#followers", as: :followers
  get ":username/following" => "users#following", as: :following
  
  get "/:username" => "users#show", as: :user

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users

end
