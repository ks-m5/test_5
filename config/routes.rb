Rails.application.routes.draw do

  devise_for :users

  get '/' => 'products#index'

  resources :products

  resources :carts, only: [:index, :show]

  resources :cart_items, only: [:update, :destroy]

  resources :users, only: [:show, :update]

  resources :deliveries, only: [:create]

  resources :buy_products, only: [:create]

  get "/search" => "searches#search"

end