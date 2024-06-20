Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/index'
    get 'property_contacts', to: 'dashboard#property_contacts'
    resources :property_contacts, only: [:index, :destroy]
    get 'user_details', to: 'user_details#index'
    
  end

  get 'dashboard/index'
  
  get 'properties_list/index'
  get 'properties_list/search'
  get 'properties_list/get_details'

  resources :properties_list, only: [:index, :show]
 

  resources :properties
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'

  devise_for :users, controllers: { registrations: 'registrations' }
  
  get 'home/index'
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  post '/send_property_details', to: 'properties#send_property_details', as: 'send_property_details'
 
  

  authenticated :user do
    root to: 'home#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end

  

end
