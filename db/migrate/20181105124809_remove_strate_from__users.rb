class RemoveStrateFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :strate, :string
  end
end


