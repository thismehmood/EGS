class RemoveCustomerIdFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :customer_id, :bigint
  end
end
