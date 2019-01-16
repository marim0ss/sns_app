Rails.application.routes.draw do

  # get 'users/new', to: 'users#new'
  # post 'users', to: 'users#create'

  root to: 'homes#index'

  get '/welcome', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

end
