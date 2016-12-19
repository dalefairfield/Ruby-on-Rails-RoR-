Rails.application.routes.draw do
  # resources :users
  get 'users/index'
  get 'users/new'
  get 'users' => 'users#id'
  get 'users/new' => 'users#new'
  get 'users/create' => 'users#create'
  get 'users/total' => 'users#total'
  get 'users/:id' => 'users#index'
  get 'users/:id/edit' => 'users#edit'


  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
