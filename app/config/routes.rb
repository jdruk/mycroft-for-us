Rails.application.routes.draw do
  
  resources :concentrators
  post 'test_concentrator/', to: "concentrators#test_concentrator", as: 'test_concentrator'
  post 'info_concentrator/:id', to: "concentrators#concentrator_info", as: 'info_concentrator'

  resources :plan_of_data

  resources :clients do
    resources :addresses do 
      resources :links
    end
  end

  devise_for :users, :controllers => {registrations: 'users/registrations', sessions: 'users/sessions'}
  
  root "index#index"
  
  # Dashboard
  get 'dashboard', to: "index#dashboard"
  scope "/administrator" do 
  	resources :users
    post 'user_change/:id', to: "users#change_approved", as: 'change_user'
  end
  
end
