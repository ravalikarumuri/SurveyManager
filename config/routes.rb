Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
  root 'surveys#index'
  resources :surveys
  devise_scope :user do
    #match "users/create_new_user" => "users/registrations#create_new_user", :controllers =>{:registrations => "users/registrations"}, :as => "create_new_account_user_registration",:via => :post
    #match "users/new_user" => "users/registrations#new_user", :controllers =>{:registrations => "users/registrations"},:as => "new_account_user_registration", :via => :get
    #match "users/:id" => "users/registrations#show", :controllers =>{:registrations => "users/registrations"},:as => "view_user_details", :via => :get
    get '/signout', to: 'devise/users#destroy', as: :signout
    #match "users/registration/index" => "users/registrations#index", :controllers =>{:registrations => "users/registrations"},:as => "index_users", :via => :get
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
