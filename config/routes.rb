Rails.application.routes.draw do
  root to: 'toppages#index'

  resources :blogs
  resources :users
  resources :sessions
end
