Rails.application.routes.draw do
  devise_for :users
  
  # devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

  # devise_for :users, :skip => [:sessions]
  # as :user do
  #   get 'signin' => 'devise/sessions#new', :as => :new_user_session
  #   post 'signin' => 'devise/sessions#create', :as => :user_session
  #   delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  # devise_scope :user do
  #   get    "sign-in",  to: "devise/sessions#new",         as: :new_user_session
  #   post   "sign-in",  to: "devise/sessions#create",      as: :user_session
  #   delete "sign-out", to: "devise/sessions#destroy",     as: :destroy_user_session
  #   get    "sign-up",  to: "devise/registrations#new",    as: :new_user_registration
  #   post   "sign-up",  to: "devise/registrations#create", as: :user_registration
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#Route for Root/Home page

root 'welcome#index'

# root 'devise/session#new'


end
