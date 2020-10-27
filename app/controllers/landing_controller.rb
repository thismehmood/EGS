class LandingController < ApplicationController

    layout "landing"

    def index
             
    end
    def show
        @booking = Booking.all

    end
    
end
