Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  get 'home/index'

  get 'welcome/index'
  get "/home/login" => "home#login"
  get "/contact/index" => "contact#index"
  get "/customer/index" =>  "customer#index"
  get "/venue_owner/new" => "venue_owner#new"
  get "/booking/index" => "booking#index"
  
  resources :articles

  root 'home#index' # ite means url '/'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 