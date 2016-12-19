Rails.application.routes.draw do
  root 'words#index'
  get 'words/index'
  post 'words/index' => 'words#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
