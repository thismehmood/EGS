class VenueOwner::BookingsController < ApplicationController
   layout "landing"
    def index
      @booking = Booking.all
     end
 
end