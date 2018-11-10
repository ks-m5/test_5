class AddColumn2ToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :image_id, :text
  	add_column :users, :profile, :text
  	add_column :users, :cart_id, :integer
  end
end
