class VenueOwner::VenuesController < ApplicationController

  protect_from_forgery

    layout "landing"
   
  def index
      # @venue = current_user.venues
      # Both Lines are working similar
      @venue = Venue.where(user_id: current_user.id)  
      # PaymentMailer.with( venue: @venue, user: current_user).payment_paid_email.deliver_now
  end

  def new 
      @venue = Venue.new
      render :new
  end 

  def show
      @venue = Venue.find_by_id(params[:id])
    # debugger
  end

  def edit
        @venue = Venue.find(params[:id])       
  end

  def update
      @venue = Venue.find(params[:id])
      if @venue.update(venue_params)
          redirect_to venue_owner_venues_path, notice: 'Venue was successfully updated.'
          # render :edit 
      end
  end

  def create
      @current_user_venues = Venue.where(user_id: current_user.id)
     debugger
    #  Check what is the subscription limit of venue owner and then check if 
    #  he can make a new venue or not.
      if ((current_user.subscription  == 'basic' && @current_user_venues.count  == 2)  || (current_user.subscription  == 'pro' && @current_user_venues.count  == 5))

        redirect_to venue_owner_venues_path, notice: "Please upgrade your subscripton to create new venues" 
      else
        @venue = Venue.new(venue_params)
        @venue.user_id = current_user.id
        @venue.save
        redirect_to venue_owner_venues_path
      end
    end
  
  def destroy
      @venue = Venue.find(params[:id])
      debugger
      @venue.destroy! 
      respond_to do |format|
          format.html { redirect_to venue_owner_venues_url, notice: 'Venue was successfully destroyed.' }
          format.json { head :no_content }
       end
    end


  private 
  def venue_params
      params.require(:venue).permit(:name,:venue_type, :address, :contact_no,)
  end
    
end


