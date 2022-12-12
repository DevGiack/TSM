Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #Integration Stripe
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  resources :user_addresses
  resources :payments
  resources :orders
  resources :carts
  resources :stocks
  resources :discounts
  resources :product_categories
  resources :products
  resources :carts

  get 'home/index'
  get 'home/add'
  get 'home/cgv'
  get 'home/cgu'
  get 'home/cookies'
  get 'home/account'
  get 'home/paiement'
  get 'home/livraison'

  match 'products/:id/add', to: 'products#add', as: 'add_product', via: [:get, :post]

  devise_for :users, :controllers => { registrations: 'users/registrations' }

  root "home#index"
end
