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
           redirect_to venue_owner_bookings_path, notice: 'Booking was successfully destroyed.'  
        end
      end

      def approve
         @booking = Booking.find_by_id(params[:id])
         @booking.update(status: "approved")
         if @booking.status == "approved"
             BookingMailer.with(booking: @booking, venue:@venue).approved_booking_email.deliver_now
            redirect_to venue_owner_bookings_path, notice: "Booking successfully approved"
         end
       end

  end