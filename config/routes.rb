Rails.application.routes.draw do
  get 'transactions/show'
  get 'transactions/new'
  get 'transactions/create'
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'myprofile', to: 'users#show', as: 'myprofile'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'main', to: 'sessions#show', as: 'main'
  root 'users#show'
end
