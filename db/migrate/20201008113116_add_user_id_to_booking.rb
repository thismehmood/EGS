class AddUserIdToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :user_id, :bigint
  end
end
