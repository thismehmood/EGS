class AddPaymentStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :payment_status, :boolean, default: 'false',
  end
end
