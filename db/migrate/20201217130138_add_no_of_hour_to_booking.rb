class AddNoOfHourToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :no_of_hour, :integer
  end
end
