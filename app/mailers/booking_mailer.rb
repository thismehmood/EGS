class BookingMailer < ApplicationMailer
    def new_booking_email
        debugger
        @booking = params[:booking]
        @venue   = params[:venue]
    
        mail(to: 'mehmood16040@gmail.com', subject: "You got a new order!")
      end
      def cancel_booking_email
           @booking = params[:booking]
           @venue   = params[:venue]
           mail( to: 'this.mehmood@gmail.com', subject: "Your Booking Request has been rejected" ) 
      end
      def approved_booking_email
           @booking = params[:booking]
           @venue   = params[:venue]
           mail( to: 'this.mehmood@gmail.com', subject:"your booking request approved")
      end
end
