Rails.application.routes.draw do

  resources :merchantprofile 
  
  resources :products do
  	resources :offers
  end

  resources :offers
  
  root 'products#index'
end