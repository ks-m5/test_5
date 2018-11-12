class RemoveUserIdFromBuyProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :buy_products, :user_id, :integer
  	add_column :buy_products, :buy_id, :integer
  end
end
