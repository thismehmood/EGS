class Customers::VenuesController < ApplicationController
    
  protect_from_forgery
  layout "landing"
    
  def index
      @venues = Venue.all 
      
  end

  def show
      @venue = Venue.find_by_id(params[:id])

  end

end

