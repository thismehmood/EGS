class AddFieldsToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :location, :string
    add_column :bookings, :group, :string
    add_column :bookings, :date, :datetime
  end
end
