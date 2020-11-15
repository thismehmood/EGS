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
         @booking = Booking.where(user_id: current_user.id)
    end

    def create
        debugger
        @booking = Booking.new(booking_params)  
        @booking.user_id = current_user.id
        if @booking.save!
         redirect_to customers_booking_path(@booking), notice: 'booking was successfully updated.'   
        end   
    end 

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        respond_to do |format|
        format.html { redirect_to customers_booking_url, notice: 'Venue was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private 
    def booking_params
        #Strong Params
        params.require(:booking).permit(:name,:reservation_details, :location, :group, :date, :venue_id)
    end
    
end
