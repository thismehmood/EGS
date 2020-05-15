class VenueOwnerController < ApplicationController
    def new
        @venue_owners = VenueOwner.all
    end
end