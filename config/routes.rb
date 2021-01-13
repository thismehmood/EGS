Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'landing#index' # ite means url '/'

  # get 'pages/home'

  devise_for :users, :controllers => { :sessions => "users/sessions" ,:registrations => "users/registrations" }
  
  # All Customer Routes
  namespace :customers do
    resources :venues, only: [:index, :show]
    resources :bookings, except: [:new] do
      # collection means we do not need any booking id 
      # while its opposite is member keywork which required id and add it to URL 
      collection do
        get 'venues/:venue_id' => 'bookings#new', as: :new #
        post '/search' , to: 'venues#search_venue', as: :search_venue
      end
    end
  end
  # all venue_Owner routes
  namespace :venue_owner do
    resources :payments  do 
      collection do
         get :get_subscription_payment
         get :update_subscription_payment
      end
    end
    resources :venues 
    resources :bookings do
      member do 
        get :approve
      end
    end

   end
   
  # subscription
  resources :subscription
    get "/subscription/create/:subscription_type" => "subscription#create_subscription"

end



  # get 'landing/index'
# Landing route
  # resources :landing

  #  Customer route
  # login
  # get "/home/login" => "home#login"
  # get "/venue_owner/:id" => "venue_owner#update_subscription"
  
  # post "/saveVO" => "venue_owner#create" 
          # create_booking
  # get "/booking/index" => "booking#index"
  # get  "/booking/new" => "booking#new"
  # post  "/booking" => "booking#create"
  
  # venue route
  
  # post "/venues" => "venues#destroy"

  # get "/venue/" => "venue#index"
  # get "/venue/new" =>  "venue#new"
  # post "venue_create" => "venue#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


