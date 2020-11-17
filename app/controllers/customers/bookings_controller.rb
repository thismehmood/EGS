class Customers::BookingsController < ApplicationController
    layout "landing"
    
    before_action :authenticate_user!

    def index
        @bookings = Booking.where(user_id: current_user.id)
    end
     
    def new
        #Find Venue to create Booking
        @venue = Venue.find_by_id(params[:venue_id])
        @booking = Booking.new #
    end

    # def show
    #     debugger
    #     @booking = Booking.find_by_id(params[:booking_id])
    # end

    def create
        debugger  
        @venue = Venue.find_by_id(booking_params[:venue_id])
        @booking = Booking.new(booking_params)  
        @booking.user_id = current_user.id
        if @booking.save!
            BookingMailer.with(booking: @booking, venue: @venue).new_booking_email.deliver_now
            flash[:success] = "Thank you for your booking! We'll get contact you soon!"
            redirect_to customers_bookings_path(@booking), notice: 'booking was successfully updated.'   
      end 
        # debugger    
        # @booking = Booking.new(booking_params)  
        # @booking.user_id = current_user.id
        # if @booking.save!
        # end 

        # # booking mailer section
        # @venue = Venue.find_by_id(booking_params[:venue_id])
        # @booking = Booking.new(booking_params)
        # if @booking.save
          
        #   BookingMailer.with(booking: @booking, venue: @venue).new_booking_email.deliver_now
        #   flash[:success] = "Thank you for your booking! We'll get contact you soon!"
        #   redirect_to customers_booking_path
        # else
        #   flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
        #   render :new
        # end

              

      end 

    def destroy
      # debugger
        @booking = Booking.find(params[:id])
        @booking.destroy
        respond_to do |format|
        format.html { redirect_to customers_bookings_url, notice: 'booking was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private 
    def booking_params
        #Strong Params
        params.require(:booking).permit(:name,:reservation_details, :location, :group, :date, :venue_id)
    end
    
end
