Rails.application.routes.draw do
  get 'welcome/index'

  get 'sessions/new'

  resources :sessions

  resources :users

  root 'welcome#index'
end
