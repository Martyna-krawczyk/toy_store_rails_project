Rails.application.routes.draw do
  get 'toys/index'
  get 'toys/new_toys'
  post 'toys/new'
  
  root 'toys#index'
end
