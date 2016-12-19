Rails.application.routes.draw do
  root 'users#index'
  get 'users/index'
  get 'users/newuser'
  post 'users/newuser' => 'users#newuser'
  get 'users/:id' => 'users#show'
  get 'users/:id' => 'users#edit'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'
  get 'users/:id/destroy' => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
