class Product < ApplicationRecord
	mount_uploader :image, ImageUploader

	belongs_to :category

	validates :image, presence: :true

	validates :rating, format: /[1-5]/

end
