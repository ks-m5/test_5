class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
