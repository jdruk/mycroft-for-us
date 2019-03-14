Rails.application.routes.draw do
  resources :links
  resources :concentrators
  resources :plan_of_data
  resources :addresses
  resources :clients
  devise_for :users, :controllers => {registrations: 'users/registrations', sessions: 'users/sessions'}
  root "index#index"
  get 'dashboard', to: "index#dashboard"

  scope "/administrator" do 
  	resources :users
  end
  
end
