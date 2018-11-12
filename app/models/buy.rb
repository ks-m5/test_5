class Buy < ApplicationRecord
	has_many :buy_products
	has_many :products, through: :buy_products
	# has_many :buy_products, through: :buy_products, source: :product
end
