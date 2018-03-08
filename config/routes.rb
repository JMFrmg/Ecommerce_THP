Rails.application.routes.draw do



  root 'home#index'

  resources :orders

  resources :products

  resources :carts

  post 'carts/buy/:id', to: 'carts#buy', as: 'buycart'

  post 'carts/addproduct/:id', to: 'carts#addproduct', as: 'addtocart'

  post 'carts/removeproduct/:id', to: 'carts#removeproduct', as: 'removeproduct'

  get 'carts/show', to: 'carts#show'

  get 'products/index', to: 'products#index'

  devise_for :users
  get 'home/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
