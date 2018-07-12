Rails.application.routes.draw do
  get 'welcome/index'

  resources :merchantprofile 
  resources :products
  resources :offers
  
  root 'welcome#index'
end