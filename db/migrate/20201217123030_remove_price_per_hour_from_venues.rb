class RemovePricePerHourFromVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues, :pricePerHour, :string
  end
end
