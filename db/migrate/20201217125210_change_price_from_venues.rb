class ChangePriceFromVenues < ActiveRecord::Migration[5.1]
  def change
    rename_column :venues, :price, :price_per_hour
  end
end
