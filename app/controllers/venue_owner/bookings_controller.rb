class VenueOwner::BookingsController < ApplicationController
   layout "landing"
    def index
      @booking = Booking.where(user_id: current_user.id)
     end
 
end