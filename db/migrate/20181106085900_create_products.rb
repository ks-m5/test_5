class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :artist
      t.string :album
      t.string :label
      t.text :introduction
      t.integer :price
      t.integer :count
      t.string :genre
      t.string :state
      t.text :song
      t.integer :user_id

      t.timestamps
    end
  end
end
