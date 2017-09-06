Rails.application.routes.draw do
  root 'static_pages#home'
  resources :projects
  resources :sessions

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'fulltime', to: 'static_pages#fulltime'
  get 'contact', to: 'contacts#new'
  post 'contact', to: 'contacts#create'
end
