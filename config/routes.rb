Rails.application.routes.draw do

  # get 'users/new', to: 'users#new'
  # post 'users', to: 'users#create'

  resources :users, only: [:new, :create]
end
