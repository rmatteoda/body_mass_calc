Rails.application.routes.draw do

  resources :sessions
  resources :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  get 'welcome/index', to: 'welcome#index', as: 'welcome'

  get 'body_mass/index', to: 'body_mass#index', as: 'body_mass'
  get 'body_mass/show', to: 'body_mass#show', as: 'show_bmi'
  post "body_mass/calculate" , to: "body_mass#calculate", as: 'calculate_mass'

  root 'welcome#index'
end
