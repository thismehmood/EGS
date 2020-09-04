class ChangeVenueOwnerIdToUserIdInVenues < ActiveRecord::Migration[5.1]
  def change
    rename_column :venues, :venue_owner_id, :user_id
  end
end
