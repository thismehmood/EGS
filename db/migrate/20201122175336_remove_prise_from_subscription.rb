class RemovePriseFromSubscription < ActiveRecord::Migration[5.1]
  def change
    remove_column :subscriptions, :prise, :int
  end
end
