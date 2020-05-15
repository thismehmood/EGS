class CreateVenueOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :venue_owners do |t|
      t.string :name
      t.string :contact_no

      t.timestamps
    end
  end
end
