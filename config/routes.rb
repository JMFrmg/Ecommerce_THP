Rails.application.routes.draw do
  
 

  root 'home#index'

  resources :orders

  resources :products

  resources :carts

  post 'carts/buy/:id', to: 'carts#buy', as: 'buycart'

  post 'carts/addproduct'

  devise_for :users
  get 'home/index'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
