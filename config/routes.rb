Rails.application.routes.draw do
  devise_for :users
  root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants
  resources :reviews
  resources :friendships, only: :index
end
