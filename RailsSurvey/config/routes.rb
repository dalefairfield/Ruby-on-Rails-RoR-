Rails.application.routes.draw do
  get 'dojos/index'
  post 'dojos/create'
  get 'dojos/result'
  post '/'=> 'dojos#index'
  root 'dojos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
