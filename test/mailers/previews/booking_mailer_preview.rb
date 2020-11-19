# Preview all emails at http://localhost:3001/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview
    def new_booking_email
        # Set up a temporary booking for the preview
        BookingMailer.with(booking: booking).new_booking_email
      end
      def cancel_booking_email

        BookingMailer.with(booking: booking).cancel_booking_email
      end
end
