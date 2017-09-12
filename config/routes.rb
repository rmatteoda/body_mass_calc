Rails.application.routes.draw do
  get 'welcome/index'

  get 'sessions/new'

  resources :sessions
  resources :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root 'welcome#index'
end
