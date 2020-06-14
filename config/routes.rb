Rails.application.routes.draw do
  resources :users, only: %i[new create index]
  resources :sessions, only: %i[new create destroy]
  resources :transactions, only: %i[new create index]
  resources :festivals, only: %i[new create index show]
  get 'no_festival', to: 'transactions#no_festival', as: 'no_festival'
  get 'signup', to: 'users#new', as: 'signup'
  get 'myprofile', to: 'users#index', as: 'myprofile'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'main', to: 'sessions#index', as: 'main'
  root 'users#index'
end
