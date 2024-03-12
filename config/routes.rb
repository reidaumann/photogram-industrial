Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "photos#index"

  get "/:username" => "users#show", as: :user

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users

end
