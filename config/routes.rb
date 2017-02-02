Rails.application.routes.draw do
  root 'static#home'

  resources :accounts
  resources :bills
  resources :users
  resources :statics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
