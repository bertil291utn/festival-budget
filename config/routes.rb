Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'myprofile', to: 'users#show', as: 'myprofile'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'users#show'
end
