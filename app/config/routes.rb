Rails.application.routes.draw do
  resources :links
  resources :concentrators
  resources :plan_of_data
  resources :addresses
  resources :clients
  devise_for :users
  root "index#index"
  get 'dashboard', to: "index#dashboard"
end
