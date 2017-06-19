Rails.application.routes.draw do
  root 'projects#index'
  # resources :users
  resources :projects
  resources :sessions
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
