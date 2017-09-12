Rails.application.routes.draw do
  
  #get 'sessions/new'

  #resources :sessions
  #resources :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome/index', to: 'welcome#index', as: 'welcome'
  get 'body_mass/index', to: 'body_mass#index', as: 'body_mass'
  
  post "body_mass/mass" , to: "body_mass#mass", as: 'calculate_mass'

  root 'welcome#index'
end
