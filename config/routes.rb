Rails.application.routes.draw do

  resources :merchantprofile 
  resources :products
  resources :offers
  
  root 'products#index'
end