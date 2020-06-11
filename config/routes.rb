Rails.application.routes.draw do
  resources :transactions
  resources :users, only: %i[new create index]
  resources :sessions, only: %i[new create destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'myprofile', to: 'users#index', as: 'myprofile'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'main', to: 'sessions#index', as: 'main'
  root 'users#index'
end
