Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  
  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
