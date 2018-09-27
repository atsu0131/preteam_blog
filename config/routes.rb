Rails.application.routes.draw do

  get 'blogs/:id' => 'blogs#index'

  resources :blogs
  resources :users
  resources :sessions

end
