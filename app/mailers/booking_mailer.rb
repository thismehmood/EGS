class BookingMailer < ApplicationMailer
    def new_booking_email
        debugger
        @booking = params[:booking]
        @venue   = params[:venue]
    
        mail(to: @venue.venue_owner.email, subject: "You got a new order!")
      end
      def cancel_booking_email
           @booking = params[:booking]
           @venue   = params[:venue]
           mail( to: @booking.user.email, subject: "Your Booking Request has been rejected" )
      
      end
end
