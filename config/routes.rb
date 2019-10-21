Rails.application.routes.draw do
  root 'toys#index'

  get 'toys/index', to: 'toys#index'
  get 'toys/new', to: 'toys#new', as: 'new_toy'
  post 'toys/create', to: 'toys#create', as: 'toys'
  patch 'toy/:id', to: 'toys#update', as: 'toy'
  get 'toy/show/:id', to: 'toys#show', as: 'show_toy'
  get 'toy/edit/:id', to: 'toys#edit', as: 'edit_toy'
  delete 'toy/destroy/:id', to: 'toys#destroy', as: 'destroy_toy'
  #resources :toys
  
end
