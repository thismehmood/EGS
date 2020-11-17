class BookingMailer < ApplicationMailer
    def new_booking_email
        debugger
        @booking = params[:booking]
        @venue   = params[:venue]
    
        mail(to: "whassan25@gmail.com", subject: "You got a new order!")
      end
end
