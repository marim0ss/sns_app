Rails.application.routes.draw do

  # get 'users/new', to: 'users#new'
  # post 'users', to: 'users#create'

  root to: 'posts#index'

  get '/welcome', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  # , only: [:new, :create]

  resources :posts
end
