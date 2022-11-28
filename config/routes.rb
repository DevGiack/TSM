Rails.application.routes.draw do
  resources :payments
  resources :orders
  resources :carts
  resources :stocks
  resources :discounts
  resources :product_categories
  resources :products
  get 'home/index'
  get 'static_pages/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
