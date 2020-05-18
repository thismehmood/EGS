class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.date :date_of_birth
      t.string :email
      t.string :address
      t.string :city
      t.string :pin_zip

      t.timestamps
    end
  end
end
