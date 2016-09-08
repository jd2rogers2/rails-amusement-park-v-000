Rails.application.routes.draw do
  get 'attractions/index'

  resources :sessions
  resources :users
  resources :attractions
  get '/signin', to: 'users#signin'
  root "sessions#home"
end