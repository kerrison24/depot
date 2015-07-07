Rails.application.routes.draw do
  resources :carts
  resources :line_items
  resources :orders

  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end

  root 'store#index', as: 'store'
end
