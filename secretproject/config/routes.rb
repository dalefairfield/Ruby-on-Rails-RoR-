Rails.application.routes.draw do
  get 'secrets/index'

  get 'sessions/new'

  root 'users#new'
  get 'users/new' => 'users#new'
  post 'users/new' => 'users#new'
  post 'users/create' => 'users#create'
  get 'sessions/new' => 'sessions#new'
  get 'sessions/login' => 'sessions#login'
  post 'sessions/login' => 'sessions#login'
  delete '/logout' => 'users#logout'
  delete 'users/delete/:id' => 'users#destroy'
  get 'users/:id' => 'users#show'
  patch 'users/:id' => 'users#update'
  get 'users/:id/edit' => 'users#edit'

  get 'secrets/index' => 'secrets#index'
  get 'secrets/new' => 'secrets#new'
  post 'secrets/new' => 'secrets#new'
  post 'secrets/create' => 'secrets#create'
  delete 'secrets/delete/:id' => 'secrets#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
