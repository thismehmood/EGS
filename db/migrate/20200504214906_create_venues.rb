class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :venue_type
      t.string :contact_no
      t.references :venue_owner, foreign_key: true
      t.timestamps
    end
  end
end
