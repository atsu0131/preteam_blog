Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'blogs/:id' => 'blogs#index'

  resources :blogs
  resources :users
  resources :sessions
end
