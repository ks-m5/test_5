Rails.application.routes.draw do

  devise_for :users

  get '/' => 'products#index'

  resources :products

  resources :carts, only: [:index, :update]

  resources :cart_items, only: [:update, :destroy]

  resources :users, only: [:show, :update]

end
