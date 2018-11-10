class Product < ApplicationRecord
	attachment :image
	belongs_to :user
end
