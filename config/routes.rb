Rails.application.routes.draw do
  resources :mining_types
  get 'welcome', to: 'welcome#index'

  resources :coins

  root 'welcome#index'
end
