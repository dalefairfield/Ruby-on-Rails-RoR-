Rails.application.routes.draw do
  root 'products#index'
  get 'products/index'
  get 'products/new'
  post 'products/new' => 'products#new'
  get 'products/:id' => 'products#show'
  get 'products/:id' => 'products#edit'
  get 'products/:id/edit' => 'products#edit'
  patch 'products/:id' => 'products#update'
  get 'products/:id/destroy' => 'products#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
