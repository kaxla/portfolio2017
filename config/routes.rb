Rails.application.routes.draw do
  root 'static_pages#home'
  resources :projects
  resources :sessions

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'resume', to: 'static_pages#resume'
  get 'contact', to: 'contacts#new'
  post 'contact', to: 'contacts#create'
end
