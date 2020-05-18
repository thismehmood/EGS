class AddColumsToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :phone, :string
    add_column :customers, :date_of_birth, :date
    add_column :customers, :zip, :string
  end
end
