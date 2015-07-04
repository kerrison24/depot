Rails.application.routes.draw do
  get 'cart/index'

  get 'store/index'
  get 'products' => "products#index"

  resources :products
  resources :carts
  root 'store#index', as: 'store'
end
