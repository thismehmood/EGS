class VenueController < ApplicationController
    before_action :authenticate_user
    def index
        @venue = Venue.all
    end
    def new 
        render :new
    end 
    
    def create
        @venue = Venue.new(name: params[:client][:name],
             contact_no: params[:client][:phone] )
        @venue_owner.save
        redirect_to "/venue/index"
        # debugger
    end
    
end

