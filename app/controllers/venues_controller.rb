class VenuesController < ApplicationController
    protect_from_forgery

     layout "landing"
     
    def index
        # @venue = current_user.venues
        # Both Lines are working similar
        @venue = Venue.where(user_id: current_user.id)
        
    end
    def new 
        @venue = Venue.new
        render :new
    end 
 
    def show
        @venue = Venue.find_by_id(params[:id])

    end

    def edit
         @venue = Venue.find(params[:id])       
    end

    def update
        @venue = Venue.find(params[:id])
        if @venue.update(venue_params)
            redirect_to @venue, notice: 'Venue was successfully updated.'
        else
            render :edit 
        end

    end

    def create
        @venue = Venue.new(name: params[:venue][:name],
            venue_type: params[:venue][:venue_type],
            address: params[:venue][:address],
            contact_no: params[:venue][:contact_no],
            user_id: current_user.id)
        @venue.save
        redirect_to venues_path
        # debugger
    end
    
    def update_subscription
        current_user.update(subsription: parmas[subscription])
        redirect_to venues_path
    end
    private 
    def venue_params
        params.require(:venue).permit(:name,:venue_type, :address, :contact_no,)
    end
end

