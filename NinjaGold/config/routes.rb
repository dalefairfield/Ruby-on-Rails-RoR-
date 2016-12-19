Rails.application.routes.draw do
  root 'rpgs#index'
  get 'rpgs/index' => 'rpgs#index'
  match 'rpgs/process' => 'rpgs#new', :via=> [:get, :post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
