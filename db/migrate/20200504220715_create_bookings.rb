class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :booking_details
      t.references :customer, foreign_key: true
      t.references :venue, foreign_key: true
      t.string :reservation_details

      t.timestamps
    end
  end
end
