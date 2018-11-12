class CreateBuyProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_products do |t|

      t.timestamps
    end
  end
end
