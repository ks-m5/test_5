class Product < ApplicationRecord
	attachment :image
	belongs_to :user

	def self.search(search)
		if search
			Product.where(['artist LIKE ?', "%#{search}%"])
		else
			redirect_to products_path
		end
	end

end
