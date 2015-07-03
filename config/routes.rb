Rails.application.routes.draw do
  get 'store/index'
  get 'products' => "products#index"

  resources :products
  root 'store#index', as: 'store'
end
