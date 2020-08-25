class VenuesController < ApplicationController
    protect_from_forgery

     layout "landing"
     
    def index
        @venues = Venue.all
    end
    def new 
        @venue = Venue.new
        render :new
    end 

    def show
        puts "---------------------- #{params[:id]} --------------"
        @venue = Venue.find_by_id(params[:id])
    end

    def edit
         
    end
    
    def create
        @venue = Venue.new(name: params[:venue][:name],
            address: params[:venue][:address],
            venue_type: params[:venue][:venue_type],
            contact_no: params[:venue][:contact_no])
        @venue.save
        redirect_to venues_path
        # debugger
    end
    
    def update_subscription
        current_user.update(subsription: parmas[subscription])
        redirect_to venues_path
    end
end

