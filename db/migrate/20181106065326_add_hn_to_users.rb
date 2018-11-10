class AddHnToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :hn, :string
  end
end
