Rails.application.routes.draw do
  get 'welcome/index'

  resources :merchantprofile do
  	resources :products
  end
  
  resources :products
  resources :offers
  
  root 'welcome#index'
end