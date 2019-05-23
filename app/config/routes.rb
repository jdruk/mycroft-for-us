Rails.application.routes.draw do
  
  resources :image_cashieros
  get 'financial/dashboard', to: "financial#dashboard", as: 'financial_dashboard'
  resources :cashieros
  root "index#index"

  resources :address_ranges
  resources :bank_accounts
  resources :categories
  resources :clients do
    resources :addresses do 
      resources :links
    end
  end

  # Concentradores
  resources :concentrators
  post 'test_concentrator/', to: "concentrators#test_concentrator", as: 'test_concentrator'
  post 'info_concentrator/:id', to: "concentrators#concentrator_info", as: 'info_concentrator'

  resources :plan_of_data
  devise_for :users, :controllers => {registrations: 'users/registrations', sessions: 'users/sessions'}

  # Dashboard
  get 'dashboard', to: "index#dashboard"
  scope "/administrator" do 
  	resources :users
    post 'user_change/:id', to: "users#change_approved", as: 'change_user'
  end
  
end
