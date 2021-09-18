Rails.application.routes.draw do
  resources :images, only: [:new, :show, :create, :destroy, :edit]
  get 'home/index'
  root 'home#index'
  
  resources :users, only: [:new, :show, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'upload', to: 'images#new', as: 'upload'
end
