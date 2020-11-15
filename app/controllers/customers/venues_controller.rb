class Customers::VenuesController < ApplicationController
    
  protect_from_forgery
  layout "landing"
    
  def index
      @venues = Venue.all 
      
  end

  def show
      @venues = Venue.all
  end

  def search_venue
    @venues = Venue.where('name LIKE ?', "%#{params[:search]}%")
    render :index    
  end

end

