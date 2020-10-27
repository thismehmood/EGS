class BookingsController < ApplicationController
    layout "landing"
    
    before_action :authenticate_user!
    def index
        
    end
     
    def new
         @booking = Booking.new  
    end

    def show
        @booking = Booking.find_by_id(params[:id])
    end
    def edit
        @booking = Booking.find(params[:id])       
   end

   def update
     @booking = Booking.find(params[:id])
        if  @booking.update(booking_params)
         redirect_to @booking, notice: 'booking was successfully updated.'
     
        end
   end 
  
   def create
            @booking = Booking.new( booking_params )  
            
            if @booking.save
                
                redirect_to booking_path(@booking), notice: 'booking was successfully updated.'
                
            end   
     end 


    private 
    def booking_params

        returned_params = params.require(:booking).permit(:name,:reservation_details, :location, :group, :date)
            
        return returned_params
    end

end
