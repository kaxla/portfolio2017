Rails.application.routes.draw do
  root 'static_pages#home'
  # resources :users
  resources :projects
  resources :sessions
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'resume', to: 'static_pages#resume'
end
