Rails.application.routes.draw do

  # いいねする
  post "likes/:post_id/create", to: 'likes#create'
  # いいね取り消す
  delete "likes/:post_id/destroy", to: 'likes#destroy'

  root to: 'posts#index'

  get '/welcome', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  # , only: [:new, :create]

  resources :posts

end
