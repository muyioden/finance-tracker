Rails.application.routes.draw do
  
  devise_for :users
  resources :user_stocks, except: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Route for Root/Home page

  root 'welcome#index'

  #Routes to user's portfolio
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"

end
