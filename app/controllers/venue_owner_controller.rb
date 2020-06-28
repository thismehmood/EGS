class VenueOwnerController < ApplicationController
    before_action :authenticate_user!

    def index
        @venue_owners = VenueOwner.all
    end
    def new 
        render :new
    end 
    
    def create
        @venue_owners = VenueOwner.new(name: params[:client][:name],
        contact_no: params[:client][:phone] )
        @venue_owners.save
        redirect_to "/venue_owner/index"
        # debugger        
    end
    
end

