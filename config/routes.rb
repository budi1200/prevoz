Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'rides#index'

  get 'register' => 'users#new', as: 'register'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  get 'ride/:dat' => 'rides#index', as: 'place'
  get '/profile' => 'users#profile', as: 'profile'
  get '/myrides' => 'users#myrides', as: 'myrides'
  
  resources :rides
  resources :users
  resources :sessions, only: [:create]
end
