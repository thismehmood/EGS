class RemoveVenueOwnerFkFromVenues < ActiveRecord::Migration[5.1]
  def change
      remove_foreign_key :venues, :venue_owners 
  end
end
