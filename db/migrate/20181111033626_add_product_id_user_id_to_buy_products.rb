class AddProductIdUserIdToBuyProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :buy_products, :product_id, :integer
  	add_column :buy_products, :user_id, :integer
  	add_column :buy_products, :count, :integer
  end
end
