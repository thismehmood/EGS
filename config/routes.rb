Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users, :controllers => { :sessions => "users/sessions" ,:registrations => "users/registrations" }
  
  get 'home/index'
  get 'welcome/index'
  get 'landing/index'


  resources :landing
   
  resources :customers
  # resources :booking
  
  # login
  # get "/home/login" => "home#login"
 
  # contact
  get "/contact/index" => "contact#index"
  # customer
  resources :customers, only:  [:index, :new, :update]
  
  # get "/customers" =>  "customer#index" #, as: :customers
  # get "/customers/new" => "customer#new",  as: :new_customer
  # post "/customers" => "customer#create", as: :customers
  # venue_owner
  # get 'booking/index'

  resources :bookings
  get "/venue_owner/" => "venue_owner#index"
  get "/venue_owner/new" =>  "venue_owner#new"

  get "/venue_owner/:id" => "venue_owner#update_subscription"
  
  # post "/saveVO" => "venue_owner#create" 
          # create_booking
  get "/booking/index" => "booking#index"
  get  "/booking/new" => "booking#new"
  post  "/booking" => "booking#create"
  
  # venue route

  resources :venues 

  # get "/venue/" => "venue#index"
  # get "/venue/new" =>  "venue#new"
  # post "venue_create" => "venue#create"
  # subscription
  resources :subscription
     
  root 'landing#index' # ite means url '/'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end