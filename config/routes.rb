Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'users/index'
  root 'users#welcome'
  get 'users/show'
  get 'users/find'
end
