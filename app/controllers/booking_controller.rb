class BookingController < ApplicationController

    def index
        @bookings = Booking.all
    end

end