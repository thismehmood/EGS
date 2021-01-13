class RemovePriceFromVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues, :price, :int
  end
end
