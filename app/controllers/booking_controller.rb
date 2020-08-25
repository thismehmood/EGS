class BookingController < ApplicationController
    before_action :authenticate_user!
    def index
        
    end
     
    def new
         @booking = Booking.new  
      end
      
end
