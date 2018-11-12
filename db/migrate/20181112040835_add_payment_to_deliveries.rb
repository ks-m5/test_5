class AddPaymentToDeliveries < ActiveRecord::Migration[5.2]
  def change
  	add_column :deliveries, :payment, :string
  end
end
