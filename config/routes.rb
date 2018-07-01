Rails.application.routes.draw do
  get 'welcome/index'

  resources :merchantprofile
  resources :products do
  	get 'make-offer', on: :member
  	post 'make-offer', on: :member
  end
  resources :offer

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
