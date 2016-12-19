Rails.application.routes.draw do
  get 'users/index'

  root 'users#index'
  get 'users/index'
  post 'users/index' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
