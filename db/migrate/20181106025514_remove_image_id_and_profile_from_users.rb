class RemoveImageIdAndProfileFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :image_id, :text
  	remove_column :users, :profile, :text
  end
end