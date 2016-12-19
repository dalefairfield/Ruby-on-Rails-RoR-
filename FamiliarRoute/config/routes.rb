Rails.application.routes.draw do
  get 'users/index'
  get 'hello' => 'users#hello'
  get 'say/hello' => 'users#say'
  get 'say/hello/joe' => 'users#joe'
  get 'say/hello/michael' => 'users#michael'
  get 'times' => 'users#times'
  get 'times/restart' => 'users#restart'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
