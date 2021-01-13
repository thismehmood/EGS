class RemoveVenueIdFromSubscriptions < ActiveRecord::Migration[5.1]
  def change
    remove_column :subscriptions, :venue_id, :bigint
  end
end
