class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :amount
      t.string :cashpaid
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
