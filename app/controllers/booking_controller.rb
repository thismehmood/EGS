class BookingController < ApplicationController

    def index
        
    end
     
    def new
         @booking = Booking.new       
      end
      
end
