class VenueOwner::BookingsController < ApplicationController
     layout "landing"
     def index
      venue_ids = Venue.where(user_id: current_user.id)
      # debugger
      @booking = Booking.where(venue_id: venue_ids)
     end

     def destroy    
      debugger
      @booking = Booking.find(params[:id])
      
        if @booking.destroy!
          BookingMailer.with(booking: @booking, venue:@venue).cancel_booking_email.deliver_now
           redirect_to venue_owner_bookings_path, notice: 'Venue was successfully destroyed.'      # end

        end
      end
  end