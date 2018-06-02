Rails.application.routes.draw do
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts


  root  'posts#index'
  resources :users
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

end
