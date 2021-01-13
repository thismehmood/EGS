class RemoveIntFromVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues, :int, :string
  end
end
