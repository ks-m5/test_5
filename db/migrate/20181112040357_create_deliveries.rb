class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :portal
      t.string :state
      t.string :street
      t.string :adress
      t.string :tel

      t.timestamps
    end
  end
end
