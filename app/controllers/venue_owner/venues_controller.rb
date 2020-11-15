class VenueOwner::VenuesController < ApplicationController

  protect_from_forgery

    layout "landing"
    
  def index
      # @venue = current_user.venues
      # Both Lines are working similar
      @venue = Venue.where(user_id: current_user.id)
      
  end

  def new 
      @venue = Venue.new
      render :new
  end 

  def show
      @venue = Venue.find_by_id(params[:id])

  end

  def edit
        @venue = Venue.find(params[:id])       
  end

  def update
      @venue = Venue.find(params[:id])
      if @venue.update(venue_params)
          redirect_to venue_owner_venues_path, notice: 'Venue was successfully updated.'
      else
          render :edit 
      end
  end


  def create
      @venue = Venue.new(venue_params)
      @venue.save 
      respond_to do |format|
          # format.html # should automatically read move.js.erb 
          format.html { redirect_to venue_owner_venues_path } 
        end
      # debugger
  end
  
  def update_subscription
      current_user.update(subsription: params[subscription])
      redirect_to venue_owner_venues_path
  end
  
  def destroy
      @venue = Venue.find(params[:id])
      @venue.destroy
      respond_to do |format|
      format.html { redirect_to venue_owner_venue_url, notice: 'Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private 
  def venue_params
      params.require(:venue).permit(:name,:venue_type, :address, :contact_no,)
  end
    
end


