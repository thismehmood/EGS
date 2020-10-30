class Customers::BookingsController < ApplicationController
    layout "landing"
    
    before_action :authenticate_user!
    def index
    end
     
    def new
        @venue = Venue.find_by_id(params[:venue_id])
        @booking = Booking.new #
    end

    def show
        @booking = Booking.find_by_id(params[:id])
    end

    def create
        debugger
        @booking = Booking.new(booking_params)  
        @booking.user_id = current_user.id
        if @booking.save
            
            redirect_to customers_booking_path(@booking), notice: 'booking was successfully updated.'
            
        end   
    end 

    private 
    def booking_params
        #Strong Params
        params.require(:booking).permit(:name,:reservation_details, :location, :group, :date, :venue_id)
    end
    
end
