Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'

  resources :coins

  root 'welcome#index'
end
