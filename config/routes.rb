Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  resources :products
  resources :cart_items, only: [:create, :destroy]
  resources :carts, only: [:show]
  # get 'top/main'
  # get 'products/index'
  # get 'products/new'
  # get 'carts/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
