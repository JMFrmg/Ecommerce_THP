Rails.application.routes.draw do
  
  get 'orders/index'

  get 'orders/show'

  get 'carts/show'
  get 'carts/destroy'
  post 'carts/addproduct'

  devise_for :users
  get 'home/index'
  
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
