Rails.application.routes.draw do
  get 'cookies', to: "cookies#index"

  #Integration Stripe
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  resources :admin_types
  resources :user_addresses
  resources :payments
  resources :orders
  resources :carts
  resources :stocks
  resources :discounts
  resources :product_categories
  resources :products
  get 'home/index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
